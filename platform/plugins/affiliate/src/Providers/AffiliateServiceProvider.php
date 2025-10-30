<?php

namespace Botble\Affiliate\Providers;

use Botble\Affiliate\Http\Middleware\TrackAffiliateReferral;
use Botble\Affiliate\Models\Affiliate;
use Botble\Affiliate\Models\AffiliateCommission;
use Botble\Affiliate\Models\AffiliateReferral;
use Botble\Base\Supports\ServiceProvider;
use Botble\Ecommerce\Events\OrderCreated;
use Botble\Ecommerce\Models\Customer;
use Illuminate\Routing\Router;

class AffiliateServiceProvider extends ServiceProvider
{
    public function register(): void
    {
        //
    }

    public function boot(): void
    {
        $this->loadMigrationsFrom(__DIR__ . '/../../database/migrations');
        $this->loadRoutesFrom(__DIR__ . '/../../routes/web.php');
        $this->mergeConfigFrom(__DIR__ . '/../../config/permissions.php', 'core.acl.permissions');
        
        // Register middleware
        $router = $this->app->make(Router::class);
        $router->aliasMiddleware('affiliate.track', TrackAffiliateReferral::class);
        
        // Add relationship to Customer model
        Customer::resolveRelationUsing('affiliate', function ($customerModel) {
            return $customerModel->hasOne(Affiliate::class, 'user_id');
        });
        
        // Add admin menu
        add_filter(DASHBOARD_FILTER_ADMIN_LIST, function ($widgets) {
            return $widgets->push([
                'type' => 'primary',
                'title' => 'Affiliates',
                'link' => route('affiliate.index'),
                'icon' => 'fas fa-users',
                'permission' => 'affiliate.index'
            ]);
        });
        
        // Add to admin menu
        add_filter(BASE_FILTER_REGISTER_CONTENT_TABS, function ($tabs) {
            $tabs['affiliate'] = [
                'id' => 'affiliate',
                'name' => 'Affiliates',
                'icon' => 'fas fa-users',
                'url' => route('affiliate.index'),
                'priority' => 120,
            ];
            return $tabs;
        });
        
        // Add menu item
        add_filter(DASHBOARD_FILTER_ADMIN_LIST, function ($widgets) {
            $widgets[] = [
                'type' => 'primary',
                'title' => 'Affiliates',
                'link' => route('affiliate.index'),
                'icon' => 'fas fa-users',
            ];
            return $widgets;
        });

        // Listen for order creation to create commissions
        $this->app['events']->listen(OrderCreated::class, function ($event) {
            $order = $event->order;
            
            $affiliateCode = session('affiliate_referral') ?? request()->cookie('affiliate_referral');
            
            if ($affiliateCode) {
                $affiliate = Affiliate::where('affiliate_code', $affiliateCode)
                    ->where('status', 'active')
                    ->first();
                
                if ($affiliate) {
                    $commission = $order->amount * ($affiliate->commission_rate / 100);
                    
                    AffiliateCommission::create([
                        'affiliate_id' => $affiliate->id,
                        'order_id' => $order->id,
                        'commission_amount' => $commission,
                        'status' => 'pending'
                    ]);
                    
                    // Update referral as converted
                    AffiliateReferral::where('affiliate_id', $affiliate->id)
                        ->whereNull('order_id')
                        ->latest()
                        ->first()
                        ?->update(['converted' => true, 'order_id' => $order->id]);
                }
            }
        });
    }
}