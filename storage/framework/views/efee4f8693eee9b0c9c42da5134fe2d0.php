<?php $__env->startSection('content'); ?>
    <?php echo $__env->make('core/setting::partials.license', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>

    <?php echo $form->renderForm(); ?>

<?php $__env->stopSection(); ?>

<?php echo $__env->make(BaseHelper::getAdminMasterLayoutTemplate(), array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\xampp\htdocs\platform\core\setting\/resources/views/general.blade.php ENDPATH**/ ?>