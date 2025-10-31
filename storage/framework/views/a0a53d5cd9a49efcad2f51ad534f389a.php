<aside class="widget widget--blog widget--search">
    <form class="ps-form--widget-search" action="<?php echo e(route('public.search')); ?>" method="GET">
        <input class="form-control" name="q" value="<?php echo e(BaseHelper::stringify(request()->query('q'))); ?>" type="text" placeholder="<?php echo e(__('Search...')); ?>">
        <button type="submit"><i class="icon-magnifier"></i></button>
    </form>
</aside>
<?php /**PATH C:\xampp\htdocs\platform\themes/martfury/////widgets/blog-search/templates/frontend.blade.php ENDPATH**/ ?>