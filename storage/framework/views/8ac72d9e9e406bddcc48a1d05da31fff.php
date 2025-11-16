<?php
    // Get the first order to work with for payment proof
    $order = null;
    if (isset($orders) && $orders instanceof \Illuminate\Support\Collection) {
        $order = $orders->where('is_finished', true)->first();
        if (!$order) {
            $order = $orders->first();
        }
    } elseif (isset($order) && $order instanceof \Botble\Ecommerce\Models\Order) {
        // Order is already available
    }
?>

<?php if(EcommerceHelper::isPaymentProofEnabled() && $order): ?>
    <?php
        // Determine if user is logged in as customer
        $isCustomer = auth('customer')->check();
        $guestProofEnabled = EcommerceHelper::isGuestPaymentProofEnabled();
        
        // Use token-based routes for guests (if enabled), customer routes for logged-in users
        $uploadRoute = $isCustomer 
            ? route('customer.orders.upload-proof', $order) 
            : ($guestProofEnabled ? route('public.orders.upload-proof-guest', $order->token) : null);
            
        $downloadRoute = $isCustomer 
            ? route('customer.orders.download-proof', $order) 
            : ($guestProofEnabled ? route('public.orders.download-proof-guest', $order->token) : null);
    ?>

    <?php if($order->canBeCanceled() && ($isCustomer || $guestProofEnabled)): ?>
        <div class="payment-proof-upload">
            <?php if (isset($component)) { $__componentOriginalecda78b9fe8916cbd83b85e55a8b7a1c = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalecda78b9fe8916cbd83b85e55a8b7a1c = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => '8def1252668913628243c4d363bee1ef::alert','data' => ['type' => 'info','icon' => false,'class' => 'mb-0']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::alert'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Illuminate\View\AnonymousComponent::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes(['type' => 'info','icon' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(false),'class' => 'mb-0']); ?>
                <div class="w-100">
                    <div class="payment-proof-upload__header">
                        <div class="payment-proof-upload__icon">
                            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-receipt'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
                        </div>
                        <div class="payment-proof-upload__content">
                            <h6 class="payment-proof-upload__title"><?php echo e(__('Payment Proof')); ?></h6>
                            <?php if (isset($component)) { $__componentOriginald83dae5750a07af1a413e54a0071b325 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginald83dae5750a07af1a413e54a0071b325 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => '8def1252668913628243c4d363bee1ef::form.index','data' => ['method' => 'post','files' => true,'class' => 'customer-order-upload-receipt','url' => $uploadRoute]] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::form'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Illuminate\View\AnonymousComponent::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes(['method' => 'post','files' => true,'class' => 'customer-order-upload-receipt','url' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute($uploadRoute)]); ?>
                                <?php if(! $order->proof_file): ?>
                                    <p class="payment-proof-upload__message"><?php echo e(__('For expedited processing, kindly upload a copy of your payment proof:')); ?></p>
                                <?php else: ?>
                                    <p class="payment-proof-upload__message"><?php echo e(__('You have uploaded a copy of your payment proof.')); ?></p>
                                    <div class="payment-proof-upload__file-preview">
                                        <span class="payment-proof-upload__file-preview-label"><?php echo e(__('View Receipt:')); ?></span>
                                        <a href="<?php echo e($downloadRoute); ?>" target="_blank" class="payment-proof-upload__file-preview-link">
                                            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-file'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
                                            <?php echo e(basename($order->proof_file)); ?>

                                        </a>
                                    </div>
                                    <p class="payment-proof-upload__replace-text"><?php echo e(__('Or you can upload a new one, the old one will be replaced.')); ?></p>
                                <?php endif; ?>
                                <div class="payment-proof-upload__upload-form d-block d-sm-flex">
                                    <input type="file" name="file" id="file" class="form-control">
                                    <button type="submit" class="btn payment-checkout-btn mt-2 mt-sm-0">
                                        <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-upload'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
                                        <?php echo e(__('Upload')); ?>

                                    </button>
                                </div>
                                <small class="payment-proof-upload__help-text"><?php echo e(__('You can upload the following file types: jpg, jpeg, png, pdf and max file size is 2MB.')); ?></small>
                             <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginald83dae5750a07af1a413e54a0071b325)): ?>
<?php $attributes = $__attributesOriginald83dae5750a07af1a413e54a0071b325; ?>
<?php unset($__attributesOriginald83dae5750a07af1a413e54a0071b325); ?>
<?php endif; ?>
<?php if (isset($__componentOriginald83dae5750a07af1a413e54a0071b325)): ?>
<?php $component = $__componentOriginald83dae5750a07af1a413e54a0071b325; ?>
<?php unset($__componentOriginald83dae5750a07af1a413e54a0071b325); ?>
<?php endif; ?>
                        </div>
                    </div>
                </div>
             <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalecda78b9fe8916cbd83b85e55a8b7a1c)): ?>
<?php $attributes = $__attributesOriginalecda78b9fe8916cbd83b85e55a8b7a1c; ?>
<?php unset($__attributesOriginalecda78b9fe8916cbd83b85e55a8b7a1c); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalecda78b9fe8916cbd83b85e55a8b7a1c)): ?>
<?php $component = $__componentOriginalecda78b9fe8916cbd83b85e55a8b7a1c; ?>
<?php unset($__componentOriginalecda78b9fe8916cbd83b85e55a8b7a1c); ?>
<?php endif; ?>
        </div>
    <?php elseif($order->proof_file && ($isCustomer || $guestProofEnabled)): ?>
        <div class="payment-proof-upload">
            <?php if (isset($component)) { $__componentOriginalecda78b9fe8916cbd83b85e55a8b7a1c = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginalecda78b9fe8916cbd83b85e55a8b7a1c = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => '8def1252668913628243c4d363bee1ef::alert','data' => ['type' => 'info','icon' => false,'class' => 'mb-0']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::alert'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Illuminate\View\AnonymousComponent::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes(['type' => 'info','icon' => \Illuminate\View\Compilers\BladeCompiler::sanitizeComponentAttribute(false),'class' => 'mb-0']); ?>
                <div class="w-100">
                    <div class="payment-proof-upload__header">
                        <div class="payment-proof-upload__icon">
                            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-receipt'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
                        </div>
                        <div class="payment-proof-upload__content">
                            <h6 class="payment-proof-upload__title"><?php echo e(__('Payment Proof')); ?></h6>
                            <p class="payment-proof-upload__message"><?php echo e(__('You have uploaded a copy of your payment proof.')); ?></p>
                            <div class="payment-proof-upload__file-preview">
                                <span class="payment-proof-upload__file-preview-label"><?php echo e(__('View Receipt:')); ?></span>
                                <a href="<?php echo e($downloadRoute); ?>" target="_blank" class="payment-proof-upload__file-preview-link">
                                    <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-file'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
                                    <?php echo e(basename($order->proof_file)); ?>

                                </a>
                            </div>
                        </div>
                    </div>
                </div>
             <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginalecda78b9fe8916cbd83b85e55a8b7a1c)): ?>
<?php $attributes = $__attributesOriginalecda78b9fe8916cbd83b85e55a8b7a1c; ?>
<?php unset($__attributesOriginalecda78b9fe8916cbd83b85e55a8b7a1c); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalecda78b9fe8916cbd83b85e55a8b7a1c)): ?>
<?php $component = $__componentOriginalecda78b9fe8916cbd83b85e55a8b7a1c; ?>
<?php unset($__componentOriginalecda78b9fe8916cbd83b85e55a8b7a1c); ?>
<?php endif; ?>
        </div>
    <?php endif; ?>
<?php endif; ?><?php /**PATH C:\xampp\htdocs\platform\plugins\ecommerce\/resources/views/orders/partials/payment-proof-upload.blade.php ENDPATH**/ ?>