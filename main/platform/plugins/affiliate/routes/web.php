<?php

use Botble\Affiliate\Http\Controllers\PublicController;

Route::group(['middleware' => ['web']], function () {
    Route::group(['prefix' => 'customer', 'middleware' => 'customer'], function () {
        Route::get('affiliate', [PublicController::class, 'dashboard'])->name('customer.affiliate.dashboard');
        Route::get('affiliate/register', [PublicController::class, 'register'])->name('customer.affiliate.register');
        Route::post('affiliate/register', [PublicController::class, 'store'])->name('customer.affiliate.store');
    });
});