<?php

namespace Botble\Affiliate\Models;

use Botble\Base\Models\BaseModel;
use Botble\Ecommerce\Models\Order;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class AffiliateCommission extends BaseModel
{
    protected $table = 'ec_affiliate_commissions';

    protected $fillable = [
        'affiliate_id',
        'order_id',
        'commission_amount',
        'status',
    ];

    protected $casts = [
        'commission_amount' => 'decimal:2',
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