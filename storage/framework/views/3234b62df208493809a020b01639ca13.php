<?php $__env->startSection('title', __('Address books')); ?>

<?php $__env->startSection('content'); ?>
    <?php if($addresses->isNotEmpty()): ?>
        <div class="dashboard-address">
            <!-- Page Header -->
            <div class="d-flex flex-column flex-sm-row justify-content-between align-items-start align-items-sm-center gap-3 mb-4">
                <div>
                    <h2 class="h5 mb-1"><?php echo e(__('Your Addresses')); ?></h2>
                    <p class="text-muted small mb-0"><?php echo e(__('Manage your shipping and billing addresses')); ?></p>
                </div>
            </div>

            <!-- Address Grid -->
            <div class="bb-customer-card-list">
                <div class="row row-cols-1 row-cols-lg-2 g-4">
                    <?php $__currentLoopData = $addresses; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $address): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php echo $__env->make(EcommerceHelper::viewPath('customers.address.item'), ['address' => $address], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>

            <!-- Add Address Prompt -->
            <?php if($addresses->count() < 5): ?>
                <div class="card border-0 bg-light mt-4">
                    <div class="card-body text-center py-4">
                        <div class="bg-primary bg-opacity-10 rounded-circle p-3 d-inline-flex mb-3">
                            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-map-pin-plus'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes(['class' => 'text-primary']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $attributes = $__attributesOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__attributesOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $component = $__componentOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__componentOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
                        </div>
                        <h5 class="card-title h6 mb-2"><?php echo e(__('Need another address?')); ?></h5>
                        <p class="card-text text-muted small mb-3">
                            <?php echo e(__('Add multiple addresses for different shipping locations or billing purposes.')); ?>

                        </p>
                        <a href="<?php echo e(route('customer.address.create')); ?>" class="btn btn-outline-primary btn-sm">
                            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-plus'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes(['class' => 'me-1']); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $attributes = $__attributesOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__attributesOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal73995948b3bd877b76251b40caf28170)): ?>
<?php $component = $__componentOriginal73995948b3bd877b76251b40caf28170; ?>
<?php unset($__componentOriginal73995948b3bd877b76251b40caf28170); ?>
<?php endif; ?>
                            <?php echo e(__('Add Another Address')); ?>

                        </a>
                    </div>
                </div>
            <?php endif; ?>
        </div>
    <?php else: ?>
        <?php echo $__env->make(EcommerceHelper::viewPath('customers.partials.empty-state'), [
            'title' => __('No addresses yet!'),
            'subtitle' => __('Add your first shipping or billing address to get started.'),
            'actionUrl' => route('customer.address.create'),
            'actionLabel' => __('Add Your First Address'),
        ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
    <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make(EcommerceHelper::viewPath('customers.master'), array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\xampp\htdocs\platform\plugins\ecommerce\/resources/views/themes/customers/address/list.blade.php ENDPATH**/ ?>