<header class="header header--product" data-sticky="true">
    <nav class="navigation">
        <div class="container">
            <article class="ps-product--header-sticky">
                <div class="ps-product__thumbnail">
                    <?php echo RvMedia::image($product->image, $product->name, 'small'); ?>

                </div>
                <div class="ps-product__wrapper">
                    <div class="ps-product__content">
                        <span class="ps-product__title"><?php echo BaseHelper::clean($product->name); ?></span>
                        <ul class="ps-tab-list">
                            <li class="active"><a href="#tab-description"><?php echo e(__('Description')); ?></a></li>
                            <?php if(EcommerceHelper::isReviewEnabled()): ?>
                                <li><a href="#tab-reviews"><?php echo e(__('Reviews')); ?> (<?php echo e($product->reviews_count); ?>)</a></li>
                            <?php endif; ?>
                        </ul>
                    </div>
                    <div class="ps-product__shopping">
                        <?php if(! EcommerceHelper::hideProductPrice() || EcommerceHelper::isCartEnabled()): ?>
                            <span class="ps-product__price">
                                <span data-bb-value="product-price"><?php echo e(format_price($product->front_sale_price_with_taxes)); ?></span>
                                <?php if($product->front_sale_price !== $product->price): ?>
                                    <del data-bb-value="product-original-price"><?php echo e(format_price($product->price_with_taxes)); ?></del>
                                <?php endif; ?>
                            </span>
                        <?php endif; ?>
                        <?php if(EcommerceHelper::isCartEnabled()): ?>
                            <button class="ps-btn add-to-cart-button <?php if($product->isOutOfStock()): ?> btn-disabled <?php endif; ?>" type="button" name="add_to_cart" value="1" <?php echo EcommerceHelper::jsAttributes('add-to-cart', $product, additional: ['data-bb-toggle' => 'none']); ?>><?php echo e(__('Add to cart')); ?></button>
                        <?php endif; ?>
                    </div>
                </div>
            </article>
        </div>
    </nav>
</header>
<?php /**PATH C:\xampp\htdocs\platform\themes/martfury/partials/header-product-page.blade.php ENDPATH**/ ?>