<?php echo Theme::partial('header'); ?>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
.ps-block--stat { background: #f8f9fa; padding: 20px; margin-bottom: 20px; border-radius: 8px; }
.ps-block__title { font-size: 14px; color: #666; display: block; }
.ps-block__subtitle { font-size: 24px; font-weight: bold; color: #333; }
.ps-block--default { background: #fff; border: 1px solid #ddd; border-radius: 8px; margin-bottom: 20px; }
.ps-block__header { padding: 15px 20px; border-bottom: 1px solid #eee; }
.ps-block__content { padding: 20px; }
.ps-btn { padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; }
.ps-btn--primary { background: #007bff; color: white; }
.ps-input { width: 100%; padding: 10px; border: 1px solid #ddd; border-radius: 4px; }
</style>
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<?php echo e(url('/')); ?>">Home</a></li>
            <li class="breadcrumb-item active">Affiliate Dashboard</li>
        </ol>
    </nav>

    <div class="mt-4 mb-4">
<div class="row">
    <div class="col-lg-12">
        <h2 class="ps-page__title">Affiliate Dashboard</h2>
        
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="ps-block--stat">
                    <div class="ps-block__left">
                        <span class="ps-block__title">Total Earnings</span>
                        <span class="ps-block__subtitle">$<?php echo e(number_format($stats['total_earnings'], 2)); ?></span>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="ps-block--stat">
                    <div class="ps-block__left">
                        <span class="ps-block__title">Pending</span>
                        <span class="ps-block__subtitle">$<?php echo e(number_format($stats['pending_earnings'], 2)); ?></span>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="ps-block--stat">
                    <div class="ps-block__left">
                        <span class="ps-block__title">Paid</span>
                        <span class="ps-block__subtitle">$<?php echo e(number_format($stats['paid_earnings'], 2)); ?></span>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="ps-block--stat">
                    <div class="ps-block__left">
                        <span class="ps-block__title">Commission Rate</span>
                        <span class="ps-block__subtitle"><?php echo e($stats['commission_rate']); ?>%</span>
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
</div>

<?php echo Theme::partial('footer'); ?><?php /**PATH C:\xampp\htdocs\resources\views/affiliate/dashboard.blade.php ENDPATH**/ ?>