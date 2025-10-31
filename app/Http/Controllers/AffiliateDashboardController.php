<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Botble\Theme\Facades\Theme;

class AffiliateDashboardController extends Controller
{
    public function dashboard()
    {
        $user = Auth::guard('customer')->user();
        
        if (!$user) {
            return redirect()->route('customer.login');
        }
        
        $affiliate = DB::table('ec_affiliates')
            ->where('user_id', $user->id)
            ->where('status', 'active')
            ->first();
        
        if (!$affiliate || empty($affiliate->affiliate_code)) {
            return redirect()->route('affiliate.register')->with('error', 'You must be a registered affiliate to access the dashboard.');
        }
        
        // Calculate real earnings from commissions table
        $totalEarnings = DB::table('ec_affiliate_commissions')
            ->where('affiliate_id', $affiliate->id)
            ->sum('commission_amount');
            
        $pendingEarnings = DB::table('ec_affiliate_commissions')
            ->where('affiliate_id', $affiliate->id)
            ->where('status', 'pending')
            ->sum('commission_amount');
            
        $paidEarnings = DB::table('ec_affiliate_commissions')
            ->where('affiliate_id', $affiliate->id)
            ->where('status', 'paid')
            ->sum('commission_amount');
        
        $stats = [
            'total_earnings' => $totalEarnings ?: 0,
            'pending_earnings' => $pendingEarnings ?: 0,
            'paid_earnings' => $paidEarnings ?: 0,
            'commission_rate' => setting('affiliate_default_commission_rate', $affiliate->commission_rate ?? 5),
            'affiliate_code' => $affiliate->affiliate_code,
            'referral_link' => url('/?ref=' . $affiliate->affiliate_code)
        ];
        
        try {
            $commissions = DB::table('ec_affiliate_commissions')
                ->where('affiliate_id', $affiliate->id)
                ->orderBy('created_at', 'desc')
                ->limit(10)
                ->get();
        } catch (\Exception $e) {
            $commissions = collect();
        }
            
        Theme::setTitle('Affiliate Dashboard');
        Theme::breadcrumb()->add('Home', url('/'))->add('Affiliate Dashboard');
        return Theme::scope('affiliate.dashboard', compact('stats', 'commissions'))->render();
    }
    
    public function register()
    {
        $user = Auth::guard('customer')->user();
        
        if (!$user) {
            return redirect()->route('customer.login');
        }
        
        // Check if already registered as affiliate
        $existingAffiliate = DB::table('ec_affiliates')->where('user_id', $user->id)->first();
        if ($existingAffiliate) {
            return redirect()->route('affiliate.dashboard')->with('info', 'You are already registered as an affiliate.');
        }
        
        Theme::setTitle('Affiliate Registration');
        Theme::breadcrumb()->add('Home', url('/'))->add('Affiliate Registration');
        return Theme::scope('affiliate.register')->render();
    }
    
    public function store(Request $request)
    {
        $user = Auth::guard('customer')->user();
        
        if (!$user) {
            return redirect()->route('customer.login');
        }
        
        // Check if already registered
        $existingAffiliate = DB::table('ec_affiliates')->where('user_id', $user->id)->first();
        if ($existingAffiliate) {
            return redirect()->route('affiliate.dashboard')->with('info', 'You are already registered as an affiliate.');
        }
        
        $affiliateCode = strtoupper(substr(md5($user->id . time()), 0, 8));
        
        DB::table('ec_affiliates')->insert([
            'user_id' => $user->id,
            'affiliate_code' => $affiliateCode,
            'commission_rate' => setting('affiliate_default_commission_rate', 5.00),
            'status' => 'active',
            'created_at' => now(),
            'updated_at' => now()
        ]);
        
        return redirect()->route('affiliate.dashboard')->with('success', 'Affiliate account created successfully!');
    }
}