<?php
    Arr::set($attributes, 'class', Arr::get($attributes, 'class') . ' icon-select');
    Arr::set($attributes, 'data-empty-value', __('-- None --'));
    Arr::set($attributes, 'data-check-initialized', true);
?>

<?php echo Form::customSelect($name, [$value => $value], $value, $attributes); ?>


<?php if (! $__env->hasRenderedOnce('bf19e968-c88c-4c9e-8dbe-c208f5ef99e3')): $__env->markAsRenderedOnce('bf19e968-c88c-4c9e-8dbe-c208f5ef99e3'); ?>
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