<?php if (! $__env->hasRenderedOnce('0ff9d3fb-8772-48e5-ba43-1a12ae93c4ea')): $__env->markAsRenderedOnce('0ff9d3fb-8772-48e5-ba43-1a12ae93c4ea'); ?>
    <div class="nav-item d-none d-md-flex me-2">
        <a
            class="px-0 nav-link"
            data-bs-toggle="offcanvas"
            href="#notification-sidebar"
            role="button"
            aria-controls="notification-sidebar"
        >
            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-bell'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
            <span
                class="badge bg-blue text-blue-fg badge-pill notification-count"><?php echo e(number_format($countNotificationUnread)); ?></span>
        </a>
    </div>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\platform\core\base\/resources/views/notification/nav-item.blade.php ENDPATH**/ ?>