<?php if($googleAdsConversionId = get_ecommerce_setting('google_ads_conversion_id')): ?>
    <script>
        window.addEventListener('load', function() {
            <?php $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                var conversionData<?php echo e($loop->index); ?> = {
                    'send_to': '<?php echo e($googleAdsConversionId); ?>',
                    'value': <?php echo e(number_format($order->amount, 2, '.', '')); ?>,
                    'currency': '<?php echo e(get_application_currency()->title); ?>',
                    'transaction_id': '<?php echo e($order->code); ?>'
                };

                if (typeof gtag === 'function') {
                    gtag('event', 'conversion', conversionData<?php echo e($loop->index); ?>);
                } else if (window.dataLayer && Array.isArray(window.dataLayer)) {
                    window.dataLayer.push({
                        event: 'conversion',
                        ...conversionData<?php echo e($loop->index); ?>

                    });
                }
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        });
    </script>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\platform\plugins\ecommerce\/resources/views/orders/partials/google-ads-conversion.blade.php ENDPATH**/ ?>