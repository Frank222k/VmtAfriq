<div class="ps-container">
    <div class="mt-40 mb-40">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="ps-block--default">
                    <div class="ps-block__header">
                        <h3>Join Our Affiliate Program</h3>
                    </div>
                    <div class="ps-block__content">
                        <p>Earn commission by referring customers to our store. Get paid for every sale made through your referral link!</p>
                        
                        <ul class="ps-list--dot">
                            <li>Earn {{ setting('affiliate_default_commission_rate', 5) }}% commission on all sales</li>
                            <li>Get your unique referral link</li>
                            <li>Track your earnings in real-time</li>
                            <li>Monthly payouts</li>
                        </ul>
                        
                        <form method="POST" action="{{ route('affiliate.store') }}">
                            @csrf
                            <div class="text-center">
                                <button type="submit" class="ps-btn ps-btn--primary ps-btn--lg">
                                    Become an Affiliate
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>