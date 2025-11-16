<?php $__env->startSection('content'); ?>
    <h3 class="alert-heading"><?php echo e(SeoHelper::getTitle()); ?></h3>

    <div class="alert alert-warning mb-0 mt-3" role="alert">
        <p class="mb-0"><?php echo e(__('Please wait for the administrator to review and approve!')); ?></p>
    </div>

    <div class="mt-4">
        <h5 class="mb-3"><?php echo e(__('Store Information')); ?></h5>
        <ul class="list-group">
            <li class="list-group-item"><strong><?php echo e(__('Store Name')); ?>:</strong> <?php echo e($store->name); ?></li>
            <li class="list-group-item"><strong><?php echo e(__('Owner')); ?>:</strong> <?php echo e($store->customer->name); ?></li>
            <li class="list-group-item"><strong><?php echo e(__('Phone')); ?>:</strong> <?php echo e($store->phone); ?></li>
            <?php if(MarketplaceHelper::getSetting('requires_vendor_documentations_verification', true)): ?>
                <?php if($store->certificate_file && Storage::disk('local')->exists($store->certificate_file)): ?>
                    <li class="list-group-item">
                        <strong><?php echo e(__('Uploaded Certificate')); ?>: </strong>
                        <a href="<?php echo e(route('marketplace.vendor.become-vendor.download-certificate')); ?>" target="_blank" class="text-primary"><?php echo e(__('View Certificate')); ?></a>
                    </li>
                <?php endif; ?>
                <?php if($store->government_id_file && Storage::disk('local')->exists($store->government_id_file)): ?>
                    <li class="list-group-item">
                        <strong><?php echo e(__('Uploaded Government ID')); ?>: </strong>
                        <a href="<?php echo e(route('marketplace.vendor.become-vendor.download-government-id')); ?>" target="_blank" class="text-primary"><?php echo e(__('View Government ID')); ?></a>
                    </li>
                <?php endif; ?>
            <?php endif; ?>
        </ul>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make(EcommerceHelper::viewPath('customers.master'), array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\xampp\htdocs\platform\plugins\marketplace\/resources/views/themes/approving-vendor.blade.php ENDPATH**/ ?>