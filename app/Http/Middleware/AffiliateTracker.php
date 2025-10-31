<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class AffiliateTracker
{
    public function handle(Request $request, Closure $next)
    {
        if ($request->has('ref') || $request->has('affiliate')) {
            $affiliateCode = $request->get('ref') ?: $request->get('affiliate');
            
            session(['affiliate_referral' => $affiliateCode]);
            $cookieDuration = setting('affiliate_cookie_duration', 30) * 24 * 60;
            cookie()->queue('affiliate_referral', $affiliateCode, $cookieDuration);
        }
        
        return $next($request);
    }
}