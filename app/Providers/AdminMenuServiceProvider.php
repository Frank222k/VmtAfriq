<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AdminMenuServiceProvider extends ServiceProvider
{
    public function boot()
    {
        add_filter(DASHBOARD_FILTER_ADMIN_LIST, [$this, 'addAffiliateMenu'], 120);
    }
    
    public function addAffiliateMenu($widgets)
    {
        $widgets[] = [
            'type' => 'primary',
            'title' => 'Affiliate Settings',
            'link' => route('admin.affiliate.settings'),
            'icon' => 'fas fa-users',
            'permission' => null,
        ];
        
        return $widgets;
    }
}