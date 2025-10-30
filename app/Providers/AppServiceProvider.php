<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Botble\Affiliate\Providers\AffiliateServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        // Register Botble affiliate service provider
        if (class_exists(AffiliateServiceProvider::class)) {
            $this->app->register(AffiliateServiceProvider::class);
        }
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
    }
}
