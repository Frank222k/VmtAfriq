<?php

use Illuminate\Support\Facades\Route;

Route::get('/affiliate-test', function () {
    $session = session('affiliate_referral');
    $cookie = request()->cookie('affiliate_referral');
    $param = request()->get('ref') ?: request()->get('affiliate');
    
    return response()
        ->view('affiliate-test', compact('session', 'cookie', 'param'))
        ->header('Content-Type', 'text/html');
});

Route::middleware('auth:customer')->group(function () {
    Route::get('/affiliate', [\App\Http\Controllers\AffiliateDashboardController::class, 'dashboard'])->name('affiliate.dashboard');
    Route::get('/affiliate/register', [\App\Http\Controllers\AffiliateDashboardController::class, 'register'])->name('affiliate.register');
    Route::post('/affiliate/register', [\App\Http\Controllers\AffiliateDashboardController::class, 'store'])->name('affiliate.store');
});

Route::post('/logout', function () {
    Auth::guard('customer')->logout();
    request()->session()->invalidate();
    request()->session()->regenerateToken();
    return redirect('/');
})->name('customer.logout');

Route::prefix('admin')->group(function () {
    Route::get('/affiliate-settings', [\App\Http\Controllers\Admin\AffiliateSettingsController::class, 'edit'])->name('admin.affiliate.settings');
    Route::post('/affiliate-settings', [\App\Http\Controllers\Admin\AffiliateSettingsController::class, 'update'])->name('admin.affiliate.settings.update');
});

