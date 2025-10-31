<div class="bb-product-filter">
    <div class="bb-product-filter-attribute-item">
        <h4 class="bb-product-filter-title"><?php echo e(__('On Sale')); ?></h4>
        <div class="bb-product-filter-content">
            <ul class="bb-product-filter-items filter-checkbox">
                <li class="bb-product-filter-item">
                    <input
                        id="discounted_only"
                        name="discounted_only"
                        type="checkbox"
                        value="1"
                        <?php if(request()->input('discounted_only') == 1): ?> checked <?php endif; ?>
                        data-bb-toggle="product-form-filter-item"
                    >
                    <label for="discounted_only" style="line-height: 20px;"><?php echo e(__('Show only discounted products')); ?></label>
                </li>
            </ul>
        </div>
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\platform\plugins\ecommerce\/resources/views/themes/includes/filters/discounted-only.blade.php ENDPATH**/ ?>