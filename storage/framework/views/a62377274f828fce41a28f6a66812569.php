<div class="pt-3 pt-md-3 mb-3 mb-md-5 order-item-info">
    <div class="align-items-center">
        <h6 class="d-inline-block"><?php echo e(__('Order number')); ?>: <?php echo e($order->code); ?></h6>
    </div>

    <div class="checkout-success-products">
        <div id="<?php echo e('cart-item-' . $order->id); ?>">
            <?php $__currentLoopData = $order->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $orderProduct): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="row cart-item">
                    <div class="col-lg-3 col-md-3">
                        <div class="checkout-product-img-wrapper d-inline-block">
                            <img
                                class="item-thumb img-thumbnail img-rounded mb-2 mb-md-0"
                                src="<?php echo e(RvMedia::getImageUrl($orderProduct->product_image, 'thumb', false, RvMedia::getDefaultImage())); ?>"
                                alt="<?php echo e($orderProduct->product_name); ?>"
                            >
                            <span class="checkout-quantity"><?php echo e($orderProduct->qty); ?></span>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-5">
                        <p class="mb-2 mb-md-0"><?php echo BaseHelper::clean($orderProduct->product_name); ?></p>
                        <p class="mb-2 mb-md-0">
                            <small><?php echo e(Arr::get($orderProduct->options, 'attributes', '')); ?></small>
                        </p>
                        <?php if(!empty($orderProduct->product_options) && is_array($orderProduct->product_options)): ?>
                            <?php echo render_product_options_html($orderProduct->product_options, $orderProduct->price); ?>

                        <?php endif; ?>

                        <?php echo $__env->make(EcommerceHelper::viewPath('includes.cart-item-options-extras'), [
                            'options' => $orderProduct->options,
                        ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>

                        <?php if(EcommerceHelper::isTaxEnabled() && $orderProduct->tax_amount > 0 && count($order->products) > 1): ?>
                            <p class="mb-0">
                                <small class="text-muted">
                                    <?php echo e(__('Tax')); ?>: <?php echo e(format_price($orderProduct->tax_amount)); ?>

                                    <?php if(!empty($orderProduct->options['taxClasses'])): ?>
                                        (
                                        <?php $__currentLoopData = $orderProduct->options['taxClasses']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $taxName => $taxRate): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php echo e($taxName); ?> <?php echo e($taxRate); ?>%<?php if(!$loop->last): ?>, <?php endif; ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        )
                                    <?php elseif(!empty($orderProduct->options['taxRate']) && $orderProduct->options['taxRate'] > 0): ?>
                                        (<?php echo e($orderProduct->options['taxRate']); ?>%)
                                    <?php endif; ?>
                                </small>
                            </p>
                        <?php endif; ?>
                    </div>
                    <div class="col-lg-4 col-md-4 col-4 float-md-end text-md-end">
                        <p class="mb-1"><?php echo e(format_price($orderProduct->price)); ?></p>
                        <?php if(count($order->products) > 1): ?>
                            <?php if(EcommerceHelper::isTaxEnabled() && $orderProduct->tax_amount > 0): ?>
                                <p class="mb-0">
                                    <small class="text-muted"><?php echo e(__('Total')); ?>: <?php echo e(format_price(($orderProduct->price + ($orderProduct->tax_amount / $orderProduct->qty)) * $orderProduct->qty)); ?></small>
                                </p>
                            <?php else: ?>
                                <p class="mb-0">
                                    <small class="text-muted"><?php echo e(__('Total')); ?>: <?php echo e(format_price($orderProduct->price * $orderProduct->qty)); ?></small>
                                </p>
                            <?php endif; ?>
                        <?php endif; ?>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            <?php if(!empty($isShowTotalInfo)): ?>
                <?php echo $__env->make('plugins/ecommerce::orders.thank-you.total-info', compact('order'), array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
            <?php endif; ?>
        </div>
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\platform\plugins\ecommerce\/resources/views/orders/thank-you/order-info.blade.php ENDPATH**/ ?>