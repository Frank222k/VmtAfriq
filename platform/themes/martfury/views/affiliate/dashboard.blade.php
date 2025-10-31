<div class="ps-container">
    <div class="mt-40 mb-40">
<div class="row">
    <div class="col-lg-12">
        <h2 class="ps-page__title">Affiliate Dashboard</h2>
        
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6 mb-30">
                <div class="ps-block--stat-2">
                    <div class="ps-block__left">
                        <i class="icon-wallet" style="font-size: 40px; color: #28a745;"></i>
                    </div>
                    <div class="ps-block__right">
                        <p>Total Earnings</p>
                        <h4>${{ number_format($stats['total_earnings'], 2) }}</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 mb-30">
                <div class="ps-block--stat-2">
                    <div class="ps-block__left">
                        <i class="icon-clock" style="font-size: 40px; color: #ffc107;"></i>
                    </div>
                    <div class="ps-block__right">
                        <p>Pending</p>
                        <h4>${{ number_format($stats['pending_earnings'], 2) }}</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 mb-30">
                <div class="ps-block--stat-2">
                    <div class="ps-block__left">
                        <i class="icon-check" style="font-size: 40px; color: #17a2b8;"></i>
                    </div>
                    <div class="ps-block__right">
                        <p>Paid</p>
                        <h4>${{ number_format($stats['paid_earnings'], 2) }}</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 mb-30">
                <div class="ps-block--stat-2">
                    <div class="ps-block__left">
                        <i class="icon-percent" style="font-size: 40px; color: #6f42c1;"></i>
                    </div>
                    <div class="ps-block__right">
                        <p>Commission Rate</p>
                        <h4>{{ $stats['commission_rate'] }}%</h4>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="ps-block--default mt-40">
            <div class="ps-block__header">
                <h3>Your Referral Link</h3>
            </div>
            <div class="ps-block__content">
                <div class="form-group">
                    <input type="text" class="ps-input" value="{{ $stats['referral_link'] }}" readonly style="margin-bottom: 10px;">
                    <button class="ps-btn ps-btn--primary" onclick="copyLink()">Copy Link</button>
                </div>
                <p>Share this link to earn {{ $stats['commission_rate'] }}% commission on sales</p>
            </div>
        </div>
        
        <div class="ps-block--default mt-40">
            <div class="ps-block__header">
                <h3>Recent Commissions</h3>
            </div>
            <div class="ps-block__content">
                @if($commissions->count() > 0)
                    <div class="table-responsive">
                        <table class="table ps-table">
                            <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Order ID</th>
                                    <th>Commission</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($commissions as $commission)
                                <tr>
                                    <td>{{ $commission->created_at }}</td>
                                    <td>#{{ $commission->order_id }}</td>
                                    <td>${{ number_format($commission->commission_amount, 2) }}</td>
                                    <td>
                                        <span class="ps-badge ps-badge--{{ $commission->status == 'paid' ? 'success' : 'warning' }}">
                                            {{ ucfirst($commission->status) }}
                                        </span>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                @else
                    <p>No commissions yet. Start sharing your referral link!</p>
                @endif
            </div>
        </div>
    </div>
</div>

<script>
function copyLink() {
    const input = document.querySelector('input[readonly]');
    input.select();
    document.execCommand('copy');
    alert('Link copied to clipboard!');
}
</script>
    </div>
</div>