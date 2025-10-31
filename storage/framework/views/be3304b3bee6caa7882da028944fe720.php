<?php $__env->startSection('title', __('Orders')); ?>

<?php $__env->startSection('content'); ?>
    <?php if($orders->isNotEmpty()): ?>
        <div class="customer-list-order">
            <!-- Orders Grid -->
            <div class="bb-customer-card-list order-cards">
                <?php $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="bb-customer-card order-card">
                        <!-- Order Header -->
                        <div class="bb-customer-card-header">
                            <div class="d-flex justify-content-between align-items-start">
                                <div>
                                    <h3 class="bb-customer-card-title h6 mb-1">
                                        <?php echo e(__('Order :code', ['code' => $order->code])); ?>

                                    </h3>
                                    <div class="bb-customer-card-status">
                                        <?php echo BaseHelper::clean($order->status->toHtml()); ?>

                                    </div>
                                    <p class="text-muted small mb-0">
                                        <?php echo e($order->created_at->translatedFormat('M d, Y \a\t g:i A')); ?>

                                    </p>
                                </div>
                            </div>
                        </div>

                        <!-- Order Details -->
                        <div class="bb-customer-card-body">
                            <div class="bb-customer-card-info">
                                <div class="row g-3">
                                    <div class="col-sm-6">
                                        <div class="info-item">
                                            <span class="label text-muted small"><?php echo e(__('Total Amount')); ?></span>
                                            <span class="value fw-semibold d-block"><?php echo e($order->amount_format); ?></span>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="info-item">
                                            <span class="label text-muted small"><?php echo e(__('Items')); ?></span>
                                            <span class="value fw-semibold d-block"><?php echo e($order->products_count); ?> <?php echo e(__('item(s)')); ?></span>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="info-item">
                                            <span class="label text-muted small"><?php echo e(__('Payment Method')); ?></span>
                                            <span class="value fw-semibold d-block">
                                                <?php if(is_plugin_active('payment') && $order->payment->id && $order->payment->payment_channel->label()): ?>
                                                    <?php echo e($order->payment->payment_channel->label()); ?>

                                                <?php else: ?>
                                                    <?php echo e(__('Not specified')); ?>

                                                <?php endif; ?>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Order Actions -->
                        <div class="bb-customer-card-footer">
                            <div class="d-flex justify-content-end">
                                <a
                                    class="btn btn-primary btn-sm"
                                    href="<?php echo e(route('customer.orders.view', $order->id)); ?>"
                                >
                                    <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-eye'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes(['class' => 'me-1']); ?>
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
                                    <?php echo e(__('View Details')); ?>

                                </a>
                            </div>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>

            <!-- Pagination -->
            <?php if($orders->hasPages()): ?>
                <div class="d-flex justify-content-center mt-4">
                    <?php echo $orders->links(); ?>

                </div>
            <?php endif; ?>
        </div>
    <?php else: ?>
        <?php echo $__env->make(EcommerceHelper::viewPath('customers.partials.empty-state'), [
            'title' => __('No orders yet!'),
            'subtitle' => __('You have not placed any orders yet.'),
            'actionUrl' => route('public.products'),
            'actionLabel' => __('Start shopping now'),
        ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
    <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make(EcommerceHelper::viewPath('customers.master'), array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH C:\xampp\htdocs\platform\plugins\ecommerce\/resources/views/themes/customers/orders/list.blade.php ENDPATH**/ ?>