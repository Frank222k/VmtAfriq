<?php if($discounts->isNotEmpty()): ?>
    
    <div class="checkout__coupon-section d-none d-md-block">
        <div class="checkout__coupon-heading">
            <img width="32" height="32" src="<?php echo e(asset('vendor/core/plugins/ecommerce/images/coupon-code.gif')); ?>" alt="coupon code icon">
            <?php echo e(__('Coupon codes (:count)', ['count' => $discounts->count()])); ?>

        </div>

        <div class="checkout__coupon-list">
            <?php $__currentLoopData = $discounts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $discount): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div
                    class="<?php echo \Illuminate\Support\Arr::toCssClasses(['checkout__coupon-item', 'active' => session()->has('applied_coupon_code') && session()->get('applied_coupon_code') === $discount->code]); ?>"
                >
                    <div class="checkout__coupon-item-icon"></div>
                    <div class="checkout__coupon-item-content">
                        <?php echo apply_filters('checkout_discount_item_before', null, $discount); ?>


                        <div class="checkout__coupon-item-title">
                            <?php if($discount->type_option !== 'shipping'): ?>
                                <h4><?php echo e($discount->type_option == 'percentage' ? $discount->value . '%' : format_price($discount->value)); ?></h4>
                            <?php endif; ?>

                            <?php if($discount->quantity > 0): ?>
                                <span class="checkout__coupon-item-count">
                                    (<?php echo e(__('Left :left', ['left' => $discount->left_quantity])); ?>)
                                </span>
                            <?php endif; ?>
                        </div>
                        <div class="checkout__coupon-item-description">
                            <?php echo BaseHelper::clean($discount->description ?: get_discount_description($discount)); ?>

                        </div>
                        <div class="checkout__coupon-item-code">
                            <span><?php echo e($discount->code); ?></span>
                            <?php if(!session()->has('applied_coupon_code') || session()->get('applied_coupon_code') !== $discount->code): ?>
                                <button type="button" data-bb-toggle="apply-coupon-code" data-discount-code="<?php echo e($discount->code); ?>">
                                    <?php echo e(__('Apply')); ?>

                                </button>
                            <?php else: ?>
                                <button type="button" class="remove-coupon-code" data-url="<?php echo e(route('public.coupon.remove')); ?>">
                                    <?php echo e(__('Remove')); ?>

                                </button>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>

    
    <div class="checkout__coupon-mobile d-block d-md-none mb-4">
        <button
            type="button"
            class="btn btn-light border w-100 d-flex align-items-center justify-content-between p-3"
            data-bs-toggle="modal"
            data-bs-target="#mobile-coupon-modal"
        >
            <div class="d-flex align-items-center gap-2">
                <img width="24" height="24" src="<?php echo e(asset('vendor/core/plugins/ecommerce/images/coupon-code.gif')); ?>" alt="coupon code icon">
                <span class="text-dark fw-medium"><?php echo e(__('Select Coupon')); ?></span>
                <span class="badge bg-primary"><?php echo e($discounts->count()); ?></span>
            </div>
            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-chevron-right'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes(['class' => 'text-muted']); ?>
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
        </button>
    </div>
<?php endif; ?>


<div
    class="checkout-discount-section"
    <?php if(session()->has('applied_coupon_code')): ?> style="display: none;" <?php endif; ?>
>
    <a class="btn-open-coupon-form" href="#">
        <?php echo e(__('You have a coupon code?')); ?>

    </a>
</div>
<div
    class="coupon-wrapper mt-2"
    <?php if(!session()->has('applied_coupon_code')): ?> style="display: none;" <?php endif; ?>
>
    <?php if(!session()->has('applied_coupon_code')): ?>
        <?php echo $__env->make(EcommerceHelper::viewPath('discounts.partials.apply-coupon'), array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
    <?php else: ?>
        <?php echo $__env->make(EcommerceHelper::viewPath('discounts.partials.remove-coupon'), array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
    <?php endif; ?>
</div>


<?php if($discounts->isNotEmpty()): ?>
    <div class="modal fade" id="mobile-coupon-modal" tabindex="-1" aria-labelledby="mobile-coupon-modal-label" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-fullscreen-sm-down">
            <div class="modal-content">
                <div class="modal-header border-0 pb-0">
                    <h5 class="modal-title" id="mobile-coupon-modal-label">
                        <img width="24" height="24" src="<?php echo e(asset('vendor/core/plugins/ecommerce/images/coupon-code.gif')); ?>" alt="coupon code icon" class="me-2">
                        <?php echo e(__('Select Coupon')); ?>

                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="<?php echo e(__('Close')); ?>"></button>
                </div>
                <div class="modal-body pt-2">
                    <div class="mobile-coupon-list">
                        <?php $__currentLoopData = $discounts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $discount): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div
                                class="<?php echo \Illuminate\Support\Arr::toCssClasses([
                                    'mobile-coupon-item',
                                    'border',
                                    'rounded',
                                    'mb-3',
                                    'p-3',
                                    'position-relative',
                                    'active' => session()->has('applied_coupon_code') && session()->get('applied_coupon_code') === $discount->code
                                ]); ?>"
                                data-discount-code="<?php echo e($discount->code); ?>"
                            >
                                <?php if(session()->has('applied_coupon_code') && session()->get('applied_coupon_code') === $discount->code): ?>
                                    <div class="position-absolute top-0 end-0 mt-2 me-2">
                                        <div class="bg-success text-white rounded-circle d-flex align-items-center justify-content-center" style="width: 24px; height: 24px;">
                                            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-check'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes(['style' => 'width: 14px; height: 14px;']); ?>
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
                                    </div>
                                <?php endif; ?>

                                <div class="d-flex align-items-start gap-3">
                                    <div class="mobile-coupon-icon bg-primary bg-opacity-10 rounded p-2 flex-shrink-0">
                                        <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-discount-2'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
                                    <div class="flex-grow-1">
                                        <div class="mobile-coupon-value mb-1">
                                            <?php if($discount->type_option !== 'shipping'): ?>
                                                <h6 class="mb-0 fw-bold">
                                                    <?php echo e($discount->type_option == 'percentage' ? $discount->value . '%' : format_price($discount->value)); ?>

                                                </h6>
                                            <?php else: ?>
                                                <h6 class="mb-0 fw-bold"><?php echo e(__('Free Shipping')); ?></h6>
                                            <?php endif; ?>

                                            <?php if($discount->quantity > 0): ?>
                                                <small>
                                                    (<?php echo e(__('Left :left', ['left' => $discount->left_quantity])); ?>)
                                                </small>
                                            <?php endif; ?>
                                        </div>

                                        <div class="mobile-coupon-description mb-2">
                                            <small>
                                                <?php echo BaseHelper::clean($discount->description ?: get_discount_description($discount)); ?>

                                            </small>
                                        </div>

                                        <div class="mobile-coupon-code d-flex align-items-center justify-content-between">
                                            <span class="badge"><?php echo e($discount->code); ?></span>
                                            <?php if(!session()->has('applied_coupon_code') || session()->get('applied_coupon_code') !== $discount->code): ?>
                                                <button type="button" class="btn" data-bb-toggle="apply-coupon-code" data-discount-code="<?php echo e($discount->code); ?>">
                                                    <?php echo e(__('Apply')); ?>

                                                </button>
                                            <?php else: ?>
                                                <button type="button" class="btn remove-coupon-code" data-url="<?php echo e(route('public.coupon.remove')); ?>">
                                                    <?php echo e(__('Remove')); ?>

                                                </button>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div>
                <div class="modal-footer border-0 pt-0">
                    <button type="button" class="btn btn-outline-secondary w-100" data-bs-dismiss="modal">
                        <?php echo e(__('Close')); ?>

                    </button>
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>

<div class="clearfix"></div>
<?php /**PATH C:\xampp\htdocs\platform\plugins\ecommerce\/resources/views/themes/discounts/partials/form.blade.php ENDPATH**/ ?>