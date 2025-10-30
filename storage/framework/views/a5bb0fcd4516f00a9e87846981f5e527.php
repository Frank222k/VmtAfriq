<?php if(EcommerceHelper::isReviewEnabled()): ?>
    <?php
        $version = EcommerceHelper::getAssetVersion();

        Theme::asset()->add('lightgallery-css', 'vendor/core/plugins/ecommerce/libraries/lightgallery/css/lightgallery.min.css', version: $version);
        Theme::asset()->add('front-ecommerce-css', 'vendor/core/plugins/ecommerce/css/front-ecommerce.css', version: $version);
        Theme::asset()->add('front-review-css', 'vendor/core/plugins/ecommerce/css/front-review.css', version: $version);
        Theme::asset()->container('footer')->add('lightgallery-js', 'vendor/core/plugins/ecommerce/libraries/lightgallery/js/lightgallery.min.js', ['jquery'], version: $version);
        Theme::asset()->container('footer')->add('lg-thumbnail-js', 'vendor/core/plugins/ecommerce/libraries/lightgallery/plugins/lg-thumbnail.min.js', ['lightgallery-js'], version: $version);
        Theme::asset()->container('footer')->add('review-js', 'vendor/core/plugins/ecommerce/js/front-review.js', ['lightgallery-js', 'lg-thumbnail-js'], version: $version);

        $showAvgRating ??= $product->reviews->isNotEmpty();
    ?>

    <div class="d-flex flex-column gap-5 product-review-container">
        <div class="row g-3">
            <?php if($showAvgRating): ?>
                <div class="col-12 col-md-4">
                    <div class="product-review-number">
                        <h3 class="product-review-number-title"><?php echo e(__('Customer reviews')); ?></h3>

                        <div class="product-review-summary">
                            <div class="product-review-summary-value">
                                <span>
                                    <?php echo e(number_format($product->reviews_avg ?: 0, 2)); ?>

                                </span>
                            </div>
                            <div class="product-review-summary-rating">
                                <?php echo $__env->make(EcommerceHelper::viewPath('includes.rating-star'), ['avg' => $product->reviews_avg, 'size' => 80], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
                                <p>
                                    <?php if($product->reviews_count === 1): ?>
                                        (<?php echo e(__('1 Review')); ?>)
                                    <?php else: ?>
                                        (<?php echo e(__(':count Reviews', ['count' => number_format($product->reviews_count)])); ?>)
                                    <?php endif; ?>
                                </p>
                            </div>
                        </div>

                        <div class="product-review-progress">
                            <?php $__currentLoopData = EcommerceHelper::getReviewsGroupedByProductId($product->id, $product->reviews_count); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="<?php echo \Illuminate\Support\Arr::toCssClasses(['product-review-progress-bar', 'disabled' => ! $item['count'], 'clickable' => $item['count']]); ?>"
                                     <?php if($item['count']): ?>
                                        data-bb-toggle="review-star-filter-bar"
                                        data-star="<?php echo e($item['star']); ?>"
                                        role="button"
                                        tabindex="0"
                                        title="<?php echo e(__('Filter by :star star reviews', ['star' => $item['star']])); ?>"
                                     <?php endif; ?>>
                                    <span class="product-review-progress-bar-title">
                                        <?php if($item['star'] == 1): ?>
                                            <?php echo e(__(':number Star', ['number' => $item['star']])); ?>

                                        <?php else: ?>
                                            <?php echo e(__(':number Stars', ['number' => $item['star']])); ?>

                                        <?php endif; ?>
                                    </span>
                                    <div class="progress product-review-progress-bar-value">
                                        <div
                                            class="progress-bar"
                                            role="progressbar"
                                            aria-valuenow="<?php echo e($item['percent']); ?>"
                                            aria-valuemin="0"
                                            aria-valuemax="100"
                                            style="width: <?php echo e($item['percent']); ?>%"
                                        ></div>
                                    </div>
                                    <span class="product-review-progress-bar-percent">
                                        <?php echo e($item['percent']); ?>%
                                    </span>
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                    </div>
                </div>
            <?php endif; ?>

            <?php echo $__env->make($reviewFormView ?? EcommerceHelper::viewPath('includes.review-form'), array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?>
        </div>

        <?php if(EcommerceHelper::isCustomerReviewImageUploadEnabled() && get_ecommerce_setting('display_uploaded_customer_review_images_list', true) && ($reviewImagesCount = count($product->review_images)) > 0): ?>
            <div class="review-images-container">
                <h4 class="mb-3"><?php echo e(__('Images from customer (:count)', ['count' => number_format($reviewImagesCount)])); ?></h4>

                <div class="row g-1 review-images">
                    <?php $__currentLoopData = $product->review_images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <a href="<?php echo e(RvMedia::getImageUrl($image)); ?>" class="col-3 col-md-2 col-xl-1 position-relative" style="<?php echo \Illuminate\Support\Arr::toCssStyles(['display: none !important' => $loop->iteration > 12]) ?>">
                            <img src="<?php echo e(RvMedia::getImageUrl($image, 'thumb')); ?>" alt="<?php echo e($product->name); ?>" class="img-thumbnail">
                            <?php if($loop->iteration === 12): ?>
                                <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark opacity-75 rounded"></div>
                                <div class="position-absolute top-50 start-50 translate-middle text-white">
                                    <span class="badge bg-dark">+<?php echo e(__(':count more', ['count' => number_format($reviewImagesCount - 12)])); ?></span>
                                </div>
                            <?php endif; ?>
                        </a>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        <?php endif; ?>

        <?php if($product->reviews->isNotEmpty()): ?>
            <div class="position-relative review-list-container" data-ajax-url="<?php echo e(route('public.ajax.reviews', $product->id)); ?>">
                <h4 class="mb-3"><?php echo e(__(':total review(s) for ":product"', ['total' => number_format($product->reviews_count), 'product' => $product->name])); ?></h4>

                <div class="d-flex align-items-center justify-content-between mb-4 product-review-controls">
                    <div class="d-flex gap-2 review-control-buttons">
                        <button type="button" class="btn review-control-btn" data-bb-toggle="review-search-toggle" title="<?php echo e(__('Search reviews')); ?>">
                            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-search'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
                            <?php echo e(__('Search')); ?>

                        </button>
                        <button type="button" class="btn review-control-btn" data-bb-toggle="review-filter-toggle" title="<?php echo e(__('Filter by stars')); ?>">
                            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-filter'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
                            <?php echo e(__('Filter')); ?>

                        </button>
                        <button type="button" class="btn review-control-btn" data-bb-toggle="review-sort-toggle" title="<?php echo e(__('Sort reviews')); ?>">
                            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-sort-ascending'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
                            <?php echo e(__('Sort')); ?>

                        </button>
                    </div>
                    <button type="button" class="btn review-clear-btn d-none" data-bb-toggle="review-clear-filters" title="<?php echo e(__('Clear all filters')); ?>">
                        <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-x'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
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
                        <?php echo e(__('Clear')); ?>

                    </button>
                </div>

                <div class="review-search-container d-none mb-3">
                    <div class="position-relative">
                        <input
                            type="search"
                            class="form-control review-search-input"
                            placeholder="<?php echo e(__('Search reviews...')); ?>"
                            data-bb-toggle="review-search"
                        >
                        <div class="position-absolute top-50 end-0 translate-middle-y pe-3">
                            <?php if (isset($component)) { $__componentOriginal73995948b3bd877b76251b40caf28170 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal73995948b3bd877b76251b40caf28170 = $attributes; } ?>
<?php $component = Botble\Icon\View\Components\Icon::resolve(['name' => 'ti ti-search'] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('core::icon'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Botble\Icon\View\Components\Icon::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes(['class' => 'text-muted']); ?>
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
                    </div>
                </div>

                <div class="review-filter-container d-none mb-3">
                    <select class="form-select review-star-filter" data-bb-toggle="review-star-filter">
                        <option value=""><?php echo e(__('All Stars')); ?></option>
                        <option value="5"><?php echo e(__('5 Stars')); ?></option>
                        <option value="4"><?php echo e(__('4 Stars')); ?></option>
                        <option value="3"><?php echo e(__('3 Stars')); ?></option>
                        <option value="2"><?php echo e(__('2 Stars')); ?></option>
                        <option value="1"><?php echo e(__('1 Star')); ?></option>
                    </select>
                </div>

                <div class="review-sort-container d-none mb-3">
                    <select class="form-select review-sort-select" data-bb-toggle="review-sort">
                        <option value="newest"><?php echo e(__('Newest')); ?></option>
                        <option value="oldest"><?php echo e(__('Oldest')); ?></option>
                        <option value="highest_rating"><?php echo e(__('Highest Rating')); ?></option>
                        <option value="lowest_rating"><?php echo e(__('Lowest Rating')); ?></option>
                    </select>
                </div>

                <div class="review-list"></div>
            </div>
        <?php else: ?>
            <p class="text-muted text-center"><?php echo e(__('Looks like there are no reviews yet.')); ?> </p>
        <?php endif; ?>
    </div>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\platform\plugins\ecommerce\/resources/views/themes/includes/reviews.blade.php ENDPATH**/ ?>