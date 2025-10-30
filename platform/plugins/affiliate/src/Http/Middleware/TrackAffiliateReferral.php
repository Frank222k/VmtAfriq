<?php

namespace Botble\Affiliate\Http\Middleware;

use Botble\Affiliate\Models\Affiliate;
use Botble\Affiliate\Models\AffiliateReferral;
use Closure;
use Illuminate\Http\Request;

class TrackAffiliateReferral
{
    public function handle(Request $request, Closure $next)
    {
        if ($request->has('ref') || $request->has('affiliate')) {
            $affiliateCode = $request->get('ref') ?: $request->get('affiliate');
            
            $affiliate = Affiliate::where('affiliate_code', $affiliateCode)
                ->where('status', 'active')
                ->first();
                
            if ($affiliate) {
                session(['affiliate_referral' => $affiliateCode]);
                cookie()->queue('affiliate_referral', $affiliateCode, 30 * 24 * 60);
                
                AffiliateReferral::create([
                    'affiliate_id' => $affiliate->id,
                    'visitor_ip' => $request->ip(),
                    'user_agent' => $request->userAgent(),
                    'referrer_url' => $request->headers->get('referer'),
                    'landing_page' => $request->fullUrl()
                ]);
            }
        }
        
        return $next($request);
    }
}