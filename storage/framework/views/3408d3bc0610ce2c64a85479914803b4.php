<?php $__env->startSection('title', __('Order successfully at :site_title', ['site_title' => Theme::getSiteTitle()])); ?>

<?php $__env->startPush('header'); ?>
    <?php echo $__env->make('plugins/ecommerce::orders.partials.google-ads-conversion', ['orders' => $orders], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>
    <div class="row">
        <div class="col-lg-7 col-md-6 col-12">
            <?php echo $__env->make('plugins/ecommerce::orders.partials.logo', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>

            <div class="thank-you">
                <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-circle-check-filled'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
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

                <div class="d-inline-block">
                    <h3 class="thank-you-sentence">
                        <?php echo e(__('Your order is successfully placed')); ?>

                    </h3>
                    <p><?php echo e(__('Thank you for purchasing our products!')); ?></p>
                </div>
            </div>

            <?php echo $__env->make('plugins/ecommerce::orders.thank-you.customer-info', [
                'order' => $orders,
                'isShowShipping' => false,
            ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>

            <a
                class="btn payment-checkout-btn d-none d-md-inline-block mb-5"
                href="<?php echo e(BaseHelper::getHomepageUrl()); ?>"
            > <?php echo e(__('Continue shopping')); ?> </a>
        </div>

        <div class="col-lg-5 col-md-6 mt-3 mt-md-0 mb-3 mb-md-5">
            <?php
                $isUnifiedShipping = ! MarketplaceHelper::isChargeShippingPerVendor();
                $totalShippingAmount = $orders->sum('shipping_amount');
                $hasShipping = $orders->filter(fn ($order) => $order->shipment->id)->count() > 0;
            ?>

            <?php $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="bg-light p-2 p-md-3 pt-0">
                    <?php if($isUnifiedShipping): ?>
                        
                        <?php echo $__env->make('plugins/ecommerce::orders.thank-you.order-info', ['isShowTotalInfo' => false], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>

                        
                        <hr class="border-dark-subtle" />

                        <?php if($order->sub_total != $order->amount): ?>
                            <?php echo $__env->make('plugins/ecommerce::orders.thank-you.total-row', [
                                'label' => __('Subtotal'),
                                'value' => format_price($order->sub_total),
                            ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
                        <?php endif; ?>

                        <?php if(EcommerceHelper::isTaxEnabled() && (float) $order->tax_amount): ?>
                            <?php echo $__env->make('plugins/ecommerce::orders.thank-you.total-row', [
                                'label' => __('Tax'),
                                'value' => format_price($order->tax_amount),
                            ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
                        <?php endif; ?>

                        <?php if((float) $order->discount_amount): ?>
                            <?php echo $__env->make('plugins/ecommerce::orders.thank-you.total-row', [
                                'label' => __('Discount'),
                                'value' => format_price($order->discount_amount) .
                                    ($order->coupon_code ? ' <small>(' . __('Using coupon code') . ': <strong>' . $order->coupon_code . '</strong>)</small>' : ''),
                            ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
                        <?php endif; ?>

                        <?php if((float) $order->payment_fee): ?>
                            <?php echo $__env->make('plugins/ecommerce::orders.thank-you.total-row', [
                                'label' => __('plugins/payment::payment.payment_fee'),
                                'value' => format_price($order->payment_fee),
                            ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
                        <?php endif; ?>

                        <hr class="border-dark-subtle" />

                        <div class="row">
                            <div class="col-6">
                                <p><?php echo e(__('Order Total')); ?>:</p>
                            </div>
                            <div class="col-6 float-end">
                                <p class="total-text raw-total-text"> <?php echo e(format_price($order->amount)); ?> </p>
                            </div>
                        </div>
                    <?php else: ?>
                        
                        <?php echo $__env->make('plugins/ecommerce::orders.thank-you.order-info', ['isShowTotalInfo' => true], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
                    <?php endif; ?>
                </div>

                <?php if(! $loop->last): ?>
                    <hr class="border-dark-subtle" />
                <?php endif; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            <?php if(count($orders) > 1): ?>
                <hr class="border-dark-subtle" />
                <!-- total info -->
                <div class="bg-light p-2 p-md-3">
                    <div class="row total-price">
                        <div class="col-6">
                            <p><?php echo e(__('Sub amount')); ?>:</p>
                        </div>
                        <div class="col-6">
                            <p class="text-end"><?php echo e(format_price($orders->sum('sub_total'))); ?></p>
                        </div>
                    </div>

                    <?php if($hasShipping && $totalShippingAmount > 0): ?>
                        <div class="row total-price">
                            <div class="col-6">
                                <p><?php echo e(__('Shipping fee')); ?>:</p>
                            </div>
                            <div class="col-6">
                                <p class="text-end"><?php echo e(format_price($totalShippingAmount)); ?> </p>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php if($orders->sum('discount_amount')): ?>
                        <div class="row total-price">
                            <div class="col-6">
                                <p><?php echo e(__('Discount')); ?>:</p>
                            </div>
                            <div class="col-6">
                                <p class="text-end"><?php echo e(format_price($orders->sum('discount_amount'))); ?> </p>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php if(EcommerceHelper::isTaxEnabled()): ?>
                        <div class="row total-price">
                            <div class="col-6">
                                <p><?php echo e(__('Tax')); ?>:</p>
                            </div>
                            <div class="col-6">
                                <p class="text-end"><?php echo e(format_price($orders->sum('tax_amount'))); ?></p>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php if($orders->sum('payment_fee')): ?>
                        <div class="row total-price">
                            <div class="col-6">
                                <p><?php echo e(__('Payment Fee')); ?>:</p>
                            </div>
                            <div class="col-6">
                                <p class="text-end"><?php echo e(format_price($orders->sum('payment_fee'))); ?></p>
                            </div>
                        </div>
                    <?php endif; ?>

                    <div class="row total-price">
                        <div class="col-6">
                            <p><?php echo e(__('Total amount')); ?>:</p>
                        </div>
                        <div class="col-6">
                            <p class="total-text raw-total-text text-end">
                                <?php echo e(format_price($orders->sum('amount'))); ?>

                            </p>
                        </div>
                    </div>
                </div>
            <?php endif; ?>
        </div>
    </div>

    
    <div class="d-md-none mt-4 mb-4">
        <a class="btn payment-checkout-btn w-100 mb-5" href="<?php echo e(BaseHelper::getHomepageUrl()); ?>">
            <?php echo e(__('Continue shopping')); ?>

        </a>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('plugins/ecommerce::orders.master', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\xampp\htdocs\platform\plugins\marketplace\/resources/views/orders/thank-you.blade.php ENDPATH**/ ?>