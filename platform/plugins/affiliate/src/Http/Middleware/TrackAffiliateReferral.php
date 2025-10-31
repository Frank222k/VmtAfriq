<?php

namespace Botble\Affiliate\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class TrackAffiliateReferral
{
    public function handle(Request $request, Closure $next)
    {
        if ($request->has('ref') || $request->has('affiliate')) {
            $affiliateCode = $request->get('ref') ?: $request->get('affiliate');
            
            // Always set session and cookie for testing
            session(['affiliate_referral' => $affiliateCode]);
            cookie()->queue('affiliate_referral', $affiliateCode, 30 * 24 * 60);
        }
        
        return $next($request);
    }
}