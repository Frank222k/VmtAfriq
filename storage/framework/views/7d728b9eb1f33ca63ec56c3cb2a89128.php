<?php
    Arr::set($attributes, 'class', Arr::get($attributes, 'class') . ' icon-select');
    Arr::set($attributes, 'data-empty-value', __('-- None --'));
    Arr::set($attributes, 'data-check-initialized', true);
?>

<?php echo Form::customSelect($name, [$value => $value], $value, $attributes); ?>


<?php if (! $__env->hasRenderedOnce('7585db81-0f4e-450c-9e68-d3f2532ece54')): $__env->markAsRenderedOnce('7585db81-0f4e-450c-9e68-d3f2532ece54'); ?>
    <?php if(request()->ajax()): ?>
        <?php echo $__env->make('packages/theme::forms.fields.includes.icon-fields-script', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>

        <script src="<?php echo e(asset('vendor/core/packages/theme/js/icons-field.js')); ?>?v=1.1.0"></script>
    <?php else: ?>
        <?php echo $__env->make('packages/theme::forms.fields.includes.icon-fields-script', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>

        <?php $__env->startPush('footer'); ?>
            <script src="<?php echo e(asset('vendor/core/packages/theme/js/icons-field.js')); ?>?v=1.1.0"></script>
        <?php $__env->stopPush(); ?>
    <?php endif; ?>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\platform\packages\theme\/resources/views/forms/fields/icons-field.blade.php ENDPATH**/ ?>