<?php if(!empty($errors) && $errors->has($name)): ?>
    <div class="invalid-feedback">
        <small><?php echo e($errors->first($name)); ?></small>
    </div>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\platform\core\base\/resources/views/forms/partials/error.blade.php ENDPATH**/ ?>