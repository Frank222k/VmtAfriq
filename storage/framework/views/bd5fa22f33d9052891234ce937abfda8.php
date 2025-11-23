<?php
    $selectClass ??= '';
?>

<?php echo $form
        ->when(! empty($selectClass), function ($form) use ($selectClass) {
            return $form->setFormSelectInputClass($selectClass);
        })
        ->renderForm(); ?>

<?php /**PATH C:\xampp\htdocs\platform\plugins\ecommerce\/resources/views/themes/customers/address/form.blade.php ENDPATH**/ ?>