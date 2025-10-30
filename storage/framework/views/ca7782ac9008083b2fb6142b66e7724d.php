<?php if(EcommerceHelper::isCartEnabled()): ?>
    <nav class="navigation--mobile-product">
        <button class="ps-btn ps-btn--black add-to-cart-button <?php if($product->isOutOfStock()): ?> btn-disabled <?php endif; ?>" type="button" name="add_to_cart" value="1" <?php echo EcommerceHelper::jsAttributes('add-to-cart', $product, additional: ['data-bb-toggle' => 'none']); ?>><?php echo e(__('Add to cart')); ?></button>
        <?php if(EcommerceHelper::isQuickBuyButtonEnabled()): ?>
            <button class="ps-btn add-to-cart-button <?php if($product->isOutOfStock()): ?> btn-disabled <?php endif; ?>" type="button" name="checkout" value="1"><?php echo e(__('Buy Now')); ?></button>
        <?php endif; ?>
    </nav>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\platform\themes/martfury/partials/footer-product-page.blade.php ENDPATH**/ ?>