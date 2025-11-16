<?php if (isset($component)) { $__componentOriginal98af68e526ddc4187878063a3b54ba78 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal98af68e526ddc4187878063a3b54ba78 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => '8def1252668913628243c4d363bee1ef::form.textarea','data' => ['name' => 'message','placeholder' => trans('plugins/ecommerce::review.write_your_reply'),'value' => old('message', $reply ? $reply->message : '')]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::form.textarea'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Illuminate\View\AnonymousComponent::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes(['name' => 'message','placeholder' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(trans('plugins/ecommerce::review.write_your_reply')),'value' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(old('message', $reply ? $reply->message : ''))]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal98af68e526ddc4187878063a3b54ba78)): ?>
<?php $attributes = $__attributesOriginal98af68e526ddc4187878063a3b54ba78; ?>
<?php unset($__attributesOriginal98af68e526ddc4187878063a3b54ba78); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal98af68e526ddc4187878063a3b54ba78)): ?>
<?php $component = $__componentOriginal98af68e526ddc4187878063a3b54ba78; ?>
<?php unset($__componentOriginal98af68e526ddc4187878063a3b54ba78); ?>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\platform\plugins\ecommerce\/resources/views/reviews/partials/reply-form.blade.php ENDPATH**/ ?>