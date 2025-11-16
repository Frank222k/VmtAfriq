<?php if(
    $order->sub_total != $order->amount
    || $order->shipping_method->getValue()
    || (EcommerceHelper::isTaxEnabled() && (float) $order->tax_amount)
    || (float) $order->discount_amount
): ?>
    <hr class="border-dark-subtle" />
<?php endif; ?>

<?php if($order->sub_total != $order->amount): ?>
    <?php echo $__env->make('plugins/ecommerce::orders.thank-you.total-row', [
        'label' => __('Subtotal'),
        'value' => format_price($order->sub_total),
    ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
<?php endif; ?>

<?php if($order->shipping_method->getValue()): ?>
    <?php echo $__env->make('plugins/ecommerce::orders.thank-you.total-row', [
        'label' =>
            __('Shipping fee') .
            ($order->is_free_shipping
                ? ' <small>(' . __('Using coupon code') . ': <strong>' . $order->coupon_code . '</strong>)</small>'
                : ''),
        'value' => $order->shipping_method_name . ((float) $order->shipping_amount ? ' - ' . format_price($order->shipping_amount) : ' - ' . __('Free')),
    ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
<?php endif; ?>

<?php if(EcommerceHelper::isTaxEnabled() && (float) $order->tax_amount): ?>
    <?php
        $taxGroups = [];
        foreach ($order->products as $orderProduct) {
            if ($orderProduct->tax_amount > 0 && !empty($orderProduct->options['taxClasses'])) {
                foreach ($orderProduct->options['taxClasses'] as $taxName => $taxRate) {
                    $taxKey = $taxName . ' (' . $taxRate . '%)';
                    if (!isset($taxGroups[$taxKey])) {
                        $taxGroups[$taxKey] = 0;
                    }
                    $taxGroups[$taxKey] += $orderProduct->tax_amount;
                }
            }
        }
    ?>

    <?php if(!empty($taxGroups)): ?>
        <?php $__currentLoopData = $taxGroups; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $taxName => $taxAmount): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php echo $__env->make('plugins/ecommerce::orders.thank-you.total-row', [
                'label' => __('Tax') . ' <small>(' . $taxName . ')</small>',
                'value' => format_price($taxAmount),
            ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <?php else: ?>
        <?php echo $__env->make('plugins/ecommerce::orders.thank-you.total-row', [
            'label' => __('Tax'),
            'value' => format_price($order->tax_amount),
        ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
    <?php endif; ?>
<?php endif; ?>

<?php if((float) $order->discount_amount): ?>
    <?php echo $__env->make('plugins/ecommerce::orders.thank-you.total-row', [
        'label' => __('Discount'),
        'value' =>
            format_price($order->discount_amount) .
            ($order->coupon_code
                ? ' <small>(' . __('Using coupon code') . ': <strong>' . $order->coupon_code . '</strong>)</small>'
                : ''),
    ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
<?php endif; ?>

<?php if((float) $order->payment_fee): ?>
    <?php echo $__env->make('plugins/ecommerce::orders.thank-you.total-row', [
        'label' => __('plugins/payment::payment.payment_fee'),
        'value' => format_price($order->payment_fee),
    ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
<?php endif; ?>

<?php echo apply_filters('ecommerce_thank_you_total_info', null, $order); ?>


<hr class="border-dark-subtle" />

<div class="row">
    <div class="col-6">
        <p><?php echo e(__('Total')); ?>:</p>
    </div>
    <div class="col-6 float-end">
        <p class="total-text raw-total-text"> <?php echo e(format_price($order->amount)); ?> </p>
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\platform\plugins\ecommerce\/resources/views/orders/thank-you/total-info.blade.php ENDPATH**/ ?>