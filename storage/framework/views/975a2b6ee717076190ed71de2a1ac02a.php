<?php
    $productSwatchesRendered = render_product_swatches_filter(isset($view) ? compact('categoryId', 'view') : compact('categoryId'));
?>

<?php if($productSwatchesRendered): ?>
    <div class="bb-product-filter bb-product-filter-attributes">
        <?php echo $productSwatchesRendered; ?>

    </div>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\platform\plugins\ecommerce\/resources/views/themes/includes/filters/attributes.blade.php ENDPATH**/ ?>