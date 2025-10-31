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
                        <h4>$<?php echo e(number_format($stats['total_earnings'], 2)); ?></h4>
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
                        <h4>$<?php echo e(number_format($stats['pending_earnings'], 2)); ?></h4>
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
                        <h4>$<?php echo e(number_format($stats['paid_earnings'], 2)); ?></h4>
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
                        <h4><?php echo e($stats['commission_rate']); ?>%</h4>
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
                    <input type="text" class="ps-input" value="<?php echo e($stats['referral_link']); ?>" readonly style="margin-bottom: 10px;">
                    <button class="ps-btn ps-btn--primary" onclick="copyLink()">Copy Link</button>
                </div>
                <p>Share this link to earn <?php echo e($stats['commission_rate']); ?>% commission on sales</p>
            </div>
        </div>
        
        <div class="ps-block--default mt-40">
            <div class="ps-block__header">
                <h3>Recent Commissions</h3>
            </div>
            <div class="ps-block__content">
                <?php if($commissions->count() > 0): ?>
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
                                <?php $__currentLoopData = $commissions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $commission): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td><?php echo e($commission->created_at); ?></td>
                                    <td>#<?php echo e($commission->order_id); ?></td>
                                    <td>$<?php echo e(number_format($commission->commission_amount, 2)); ?></td>
                                    <td>
                                        <span class="ps-badge ps-badge--<?php echo e($commission->status == 'paid' ? 'success' : 'warning'); ?>">
                                            <?php echo e(ucfirst($commission->status)); ?>

                                        </span>
                                    </td>
                                </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tbody>
                        </table>
                    </div>
                <?php else: ?>
                    <p>No commissions yet. Start sharing your referral link!</p>
                <?php endif; ?>
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
</div><?php /**PATH C:\xampp\htdocs\platform\themes/martfury/views/affiliate/dashboard.blade.php ENDPATH**/ ?>