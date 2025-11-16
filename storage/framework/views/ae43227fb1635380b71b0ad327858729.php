<div class="row">
    <?php $__currentLoopData = $stores; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $store): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 ">
            <article class="ps-block--store-2">
                <div class="ps-block__content bg--cover" data-background="<?php echo e(asset('vendor/core/plugins/marketplace/img/default-store-banner.png')); ?>">
                    <figure>
                        <h4>
			     <?php echo e($store->name); ?>

                             <?php echo $store->badge; ?>

                        </h4>
                        <?php if(EcommerceHelper::isReviewEnabled()): ?>
                            <div class="rating_wrap">
                                <div class="rating">
                                    <div class="product_rate" style="width: <?php echo e($store->reviews->avg('star') * 20); ?>%"></div>
                                </div>
                                <span class="rating_num">(<?php echo e($store->reviews->count()); ?>)</span>
                            </div>
                        <?php endif; ?>
                        <?php if(! MarketplaceHelper::hideStoreAddress() && $store->full_address): ?>
                            <p><?php echo e($store->full_address); ?></p>
                        <?php endif; ?>
                        <?php if(!MarketplaceHelper::hideStorePhoneNumber() && $store->phone): ?>
                            <p><i class="icon-telephone"></i><span>&nbsp;<?php echo e($store->phone); ?></span></p>
                        <?php endif; ?>
                        <?php if(!MarketplaceHelper::hideStoreEmail() && $store->email): ?>
                            <p><i class="icon-envelope"></i>&nbsp;<a href="mailto:<?php echo e($store->email); ?>"><?php echo e($store->email); ?></a></p>
                        <?php endif; ?>
                    </figure>
                </div>
                <div class="ps-block__author">
                    <a class="ps-block__user" href="<?php echo e($store->url); ?>">
                        <?php echo RvMedia::image($store->logo, $store->name, 'small'); ?>

                    </a>
                    <a class="ps-btn" href="<?php echo e($store->url); ?>"><?php echo e(__('Visit Store')); ?></a>
                </div>
            </article>
        </div>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php /**PATH C:\xampp\htdocs\platform\themes/martfury/views/marketplace/includes/store-items.blade.php ENDPATH**/ ?>