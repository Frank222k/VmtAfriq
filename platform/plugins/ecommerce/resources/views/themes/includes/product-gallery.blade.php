@php
    EcommerceHelper::registerThemeAssets();
    $version = EcommerceHelper::getAssetVersion();
    Theme::asset()->add('lightgallery-css', 'vendor/core/plugins/ecommerce/libraries/lightgallery/css/lightgallery.min.css', version: $version);
    Theme::asset()->add('slick-css', 'vendor/core/plugins/ecommerce/libraries/slick/slick.css', version: $version);
    Theme::asset()->container('footer')->add('lightgallery-js', 'vendor/core/plugins/ecommerce/libraries/lightgallery/js/lightgallery.min.js', ['jquery'], version: $version);
    Theme::asset()->container('footer')->add('slick-js', 'vendor/core/plugins/ecommerce/libraries/slick/slick.min.js', ['jquery'], version: $version);

    $galleryStyle = theme_option('ecommerce_product_gallery_image_style', 'vertical');
    $videoPosition = theme_option('ecommerce_product_gallery_video_position', 'bottom');
@endphp

<style>
@media (max-width: 991px) {
    .bb-mobile-horizontal {
        display: flex !important;
        flex-direction: row !important;
        overflow-x: auto !important;
        gap: 8px !important;
        margin-top: 10px !important;
        flex-wrap: nowrap !important;
        padding: 0 !important;
        margin-bottom: 0 !important;
        height: 80px !important;
        line-height: 2 !important;
        scrollbar-width: none !important;
        -ms-overflow-style: none !important;
    }
    .bb-mobile-horizontal::-webkit-scrollbar {
        display: none !important;
    }
    .bb-mobile-horizontal > div {
        width: 350px !important;
        height: 350px !important;
        flex: 0 0 auto !important;
        margin: 0 !important;
        padding: 0 !important;
    }
    .bb-mobile-horizontal img {
        width: 100% !important;
        height: 100% !important;
        object-fit: cover !important;
    }
}

</style>
<div class="bb-product-gallery-wrapper">
    <div @class(['bb-product-gallery', 'bb-product-gallery-' . $galleryStyle])>
        <div class="bb-product-gallery-images">
            @if ($videoPosition == 'top' || ($videoPosition == 'after_first_image' && empty($productImages)))
                @include(EcommerceHelper::viewPath('includes.product-gallery-video'))
            @endif

            @foreach ($productImages as $image)
                <a href="{{ RvMedia::getImageUrl($image) }}">
                    {{ RvMedia::image($image, $product->name, $productImageSize ?? null) }}
                </a>

                @if ($loop->first && $videoPosition == 'after_first_image')
                    @include(EcommerceHelper::viewPath('includes.product-gallery-video'))
                @endif

                @if ($loop->last && $videoPosition == 'before_last_image')
                    @include(EcommerceHelper::viewPath('includes.product-gallery-video'))
                @endif
            @endforeach

            @if ($videoPosition == 'bottom')
                @include(EcommerceHelper::viewPath('includes.product-gallery-video'))
            @endif
        </div>
        <div class="bb-product-gallery-thumbnails bb-mobile-horizontal" data-vertical="{{ $galleryStyle === 'vertical' ? 1 : 0 }}">
            @if ($videoPosition == 'top')
                @include(EcommerceHelper::viewPath('includes.product-gallery-video-thumbnail'))
            @endif

            @foreach ($productImages as $image)
                <div>
                    {{ RvMedia::image($image, $product->name, 'thumb') }}
                </div>

                @if ($loop->first && $videoPosition == 'after_first_image')
                    <div>
                        @include(EcommerceHelper::viewPath('includes.product-gallery-video-thumbnail'))
                    </div>
                @endif

                @if ($loop->last && $videoPosition == 'before_last_image')
                    <div>
                        @include(EcommerceHelper::viewPath('includes.product-gallery-video-thumbnail'))
                    </div>
                @endif
            @endforeach

            @if ($videoPosition == 'bottom')
                @include(EcommerceHelper::viewPath('includes.product-gallery-video-thumbnail'))
            @endif
        </div>
    </div>
</div>
