<?php
    Assets::removeStyles(['fontawesome', 'select2', 'toastr', 'datepicker', 'spectrum'])
        ->removeScripts(['spectrum', 'jquery-waypoints', 'stickytableheaders', 'toastr', 'core', 'cookie', 'select2', 'datepicker', 'modernizr', 'ie8-fix', 'excanvas']);
?>

<?php if (isset($component)) { $__componentOriginal267ae10e99f5147c684b59e06e741a86 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal267ae10e99f5147c684b59e06e741a86 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => '8def1252668913628243c4d363bee1ef::layouts.base','data' => ['bodyClass' => 'border-top-wide border-primary d-flex flex-column']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::layouts.base'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Illuminate\View\AnonymousComponent::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes(['body-class' => 'border-top-wide border-primary d-flex flex-column']); ?>
     <?php $__env->slot('title', null, []); ?> 
        <?php echo $__env->yieldContent('title'); ?>
     <?php $__env->endSlot(); ?>

    <div class="page page-center">
        <div class="container py-4 container-tight">
            <?php echo $__env->yieldContent('content'); ?>
        </div>
    </div>
 <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal267ae10e99f5147c684b59e06e741a86)): ?>
<?php $attributes = $__attributesOriginal267ae10e99f5147c684b59e06e741a86; ?>
<?php unset($__attributesOriginal267ae10e99f5147c684b59e06e741a86); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal267ae10e99f5147c684b59e06e741a86)): ?>
<?php $component = $__componentOriginal267ae10e99f5147c684b59e06e741a86; ?>
<?php unset($__componentOriginal267ae10e99f5147c684b59e06e741a86); ?>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\platform\core\base\/resources/views/errors/master.blade.php ENDPATH**/ ?>