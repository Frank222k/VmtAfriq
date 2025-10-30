<?php if (! $__env->hasRenderedOnce('1ed4a124-9be2-4ec2-8486-00c38f2c9f01')): $__env->markAsRenderedOnce('1ed4a124-9be2-4ec2-8486-00c38f2c9f01'); ?>
    <div
        class="offcanvas offcanvas-end"
        tabindex="-1"
        id="notification-sidebar"
        aria-labelledby="notification-sidebar-label"
        data-url="<?php echo e(route('notifications.index')); ?>"
        data-count-url="<?php echo e(route('notifications.count-unread')); ?>"
    >
        <button
            type="button"
            class="btn-close text-reset"
            data-bs-dismiss="offcanvas"
            aria-label="Close"
        ></button>

        <div class="notification-content"></div>
    </div>

    <script src="<?php echo e(asset('vendor/core/core/base/js/notification.js')); ?>"></script>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\platform\core\base\/resources/views/notification/notification.blade.php ENDPATH**/ ?>