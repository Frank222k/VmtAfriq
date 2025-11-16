<div class="alert alert-success mb-1">
    <div class="d-flex align-items-center gap-2 justify-content-between flex-wrap">
        <div>
            <?php echo BaseHelper::clean(__('Coupon code: :code', ['code' => '<strong>' . session('applied_coupon_code') . '</strong>'])); ?>

        </div>

        <button
            class="remove-coupon-code"
            data-url="<?php echo e(route('public.coupon.remove')); ?>"
            type="button"
        >
            <span><?php echo e(__('Remove')); ?></span>
        </button>
    </div>
</div>

<div class="coupon-error-msg">
    <span class="text-danger"></span>
</div>
<?php /**PATH C:\xampp\htdocs\platform\plugins\ecommerce\/resources/views/themes/discounts/partials/remove-coupon.blade.php ENDPATH**/ ?>