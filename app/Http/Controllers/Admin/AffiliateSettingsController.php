<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AffiliateSettingsController extends Controller
{
    public function edit()
    {
        return view('admin.affiliate-settings', [
            'affiliate_default_commission_rate' => setting('affiliate_default_commission_rate', 5.00),
            'affiliate_minimum_payout' => setting('affiliate_minimum_payout', 50.00),
            'affiliate_payout_method' => setting('affiliate_payout_method', 'manual'),
            'affiliate_cookie_duration' => setting('affiliate_cookie_duration', 30),
            'affiliate_auto_approve' => setting('affiliate_auto_approve', true),
        ]);
    }
    
    public function update(Request $request)
    {
        $request->validate([
            'affiliate_default_commission_rate' => 'required|numeric|min:0|max:100',
            'affiliate_minimum_payout' => 'required|numeric|min:0',
            'affiliate_cookie_duration' => 'required|integer|min:1|max:365',
        ]);
        
        $settings = [
            'affiliate_default_commission_rate',
            'affiliate_minimum_payout', 
            'affiliate_payout_method',
            'affiliate_cookie_duration',
            'affiliate_auto_approve'
        ];
        
        foreach ($settings as $key) {
            setting()->set($key, $request->get($key));
        }
        
        setting()->save();
        
        return redirect()->back()->with('success', 'Affiliate settings updated successfully!');
    }
}