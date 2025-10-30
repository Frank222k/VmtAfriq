<?php

use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;

return Application::configure(basePath: dirname(__DIR__))
    ->withProviders()
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
        then: function () {
            // Load Botble platform routes
            if (file_exists(__DIR__ . '/../platform/plugins/affiliate/routes/web.php')) {
                require __DIR__ . '/../platform/plugins/affiliate/routes/web.php';
            }
            if (file_exists(__DIR__ . '/../platform/plugins/ecommerce/routes/web.php')) {
                require __DIR__ . '/../platform/plugins/ecommerce/routes/web.php';
            }
        },
    )
    ->withMiddleware(function (Middleware $middleware): void {
        $middleware->alias([
            'affiliate.track' => \Botble\Affiliate\Http\Middleware\TrackAffiliateReferral::class,
        ]);
    })
    ->withExceptions(function (Exceptions $exceptions): void {
        //
    })->create();
