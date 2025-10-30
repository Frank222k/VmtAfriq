<div id="app">
<?php echo apply_filters(PAGE_FILTER_FRONT_PAGE_CONTENT, Html::tag('div', BaseHelper::clean($page->content), ['class' => 'ck-content'])->toHtml(), 
$page); ?>

</div>
<?php /**PATH C:\xampp\htdocs\platform\themes/martfury/views/page.blade.php ENDPATH**/ ?>