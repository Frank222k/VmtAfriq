<?php

namespace Botble\Affiliate\Models;

use Botble\Base\Models\BaseModel;
use Botble\Ecommerce\Models\Order;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class AffiliateReferral extends BaseModel
{
    protected $table = 'ec_affiliate_referrals';

    protected $fillable = [
        'affiliate_id',
        'visitor_ip',
        'user_agent',
        'referrer_url',
        'landing_page',
        'converted',
        'order_id',
    ];

    protected $casts = [
        'converted' => 'boolean',
    ];

    public function affiliate(): BelongsTo
    {
        return $this->belongsTo(Affiliate::class);
    }

    public function order(): BelongsTo
    {
        return $this->belongsTo(Order::class);
    }
}