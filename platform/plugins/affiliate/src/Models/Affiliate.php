<?php

namespace Botble\Affiliate\Models;

use Botble\Base\Models\BaseModel;
use Botble\Ecommerce\Models\Customer;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Affiliate extends BaseModel
{
    protected $table = 'ec_affiliates';

    protected $fillable = [
        'user_id',
        'affiliate_code',
        'commission_rate',
        'status',
        'total_earnings',
        'paid_earnings',
        'pending_earnings',
    ];

    protected $casts = [
        'commission_rate' => 'decimal:2',
        'total_earnings' => 'decimal:2',
        'paid_earnings' => 'decimal:2',
        'pending_earnings' => 'decimal:2',
    ];

    public function customer(): BelongsTo
    {
        return $this->belongsTo(Customer::class, 'user_id');
    }

    public function commissions(): HasMany
    {
        return $this->hasMany(AffiliateCommission::class);
    }

    public function referrals(): HasMany
    {
        return $this->hasMany(AffiliateReferral::class);
    }

    public static function generateUniqueCode(): string
    {
        do {
            $code = 'AFF' . strtoupper(substr(md5(uniqid()), 0, 8));
        } while (self::where('affiliate_code', $code)->exists());

        return $code;
    }
}