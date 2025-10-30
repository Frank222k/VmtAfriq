<div class="customer-tax-information-form">
    <div class="mb-3">
        <label class="form-check">
            <input
                id="with_tax_information"
                name="with_tax_information"
                type="checkbox"
                value="1"
                class="form-check-input"
                <?php if(old('with_tax_information', Arr::get($sessionCheckoutData, 'with_tax_information', false))): echo 'checked'; endif; ?>
            >
            <span class="form-check-label">
                <?php echo e(__('Requires company invoice (Please fill in your company information to receive the invoice)?')); ?>

            </span>
        </label>
    </div>

    <div
        class="tax-information-form-wrapper"
        style="<?php echo \Illuminate\Support\Arr::toCssStyles(['display: none' => !Arr::get($sessionCheckoutData, 'with_tax_information', false)]) ?>"
    >
        <div class="<?php echo \Illuminate\Support\Arr::toCssClasses([
            'form-group mb-3',
            'has-error' => $errors->has('tax_information.company_name'),
        ]); ?>">
            <div class="form-input-wrapper">
                <input
                    class="form-control"
                    id="tax-information-company-name"
                    name="tax_information[company_name]"
                    type="text"
                    value="<?php echo e(old('tax_information.company_name', Arr::get($sessionCheckoutData, 'tax_information.company_name'))); ?>"
                >
                <label for='tax-information-company-name'><?php echo e(__('Company name')); ?></label>
            </div>
            <small class="form-text text-muted"><?php echo e(__('Enter your registered business or company name as it appears on official documents (e.g., ABC Corporation Ltd.).')); ?></small>
            <?php echo Form::error('tax_information.company_name', $errors); ?>

        </div>

        <div class="<?php echo \Illuminate\Support\Arr::toCssClasses([
            'form-group mb-3',
            'has-error' => $errors->has('tax_information.company_address'),
        ]); ?>">
            <div class="form-input-wrapper">
                <input
                    class="form-control"
                    id="tax-information-company-address"
                    name="tax_information[company_address]"
                    type="text"
                    value="<?php echo e(old('tax_information.company_address', Arr::get($sessionCheckoutData, 'tax_information.company_address'))); ?>"
                >
                <label for='tax-information-company-address'><?php echo e(__('Company address')); ?></label>
            </div>
            <small class="form-text text-muted"><?php echo e(__('Enter your complete business address including street, city, state, and postal code (e.g., 123 Business Street, Suite 100, City, State 12345).')); ?></small>
            <?php echo Form::error('tax_information.company_address', $errors); ?>

        </div>

        <div class="<?php echo \Illuminate\Support\Arr::toCssClasses([
            'form-group mb-3',
            'has-error' => $errors->has('tax_information.company_tax_code'),
        ]); ?>">
            <div class="form-input-wrapper">
                <input
                    class="form-control"
                    id="tax-information-company-tax-code"
                    name="tax_information[company_tax_code]"
                    type="text"
                    value="<?php echo e(old('tax_information.company_tax_code', Arr::get($sessionCheckoutData, 'tax_information.company_tax_code'))); ?>"
                >
                <label for='tax-information-company-tax-code'><?php echo e(__('Company tax code')); ?></label>
            </div>
            <small class="form-text text-muted"><?php echo e(__('Enter your business tax identification number such as Tax ID, VAT number, or EIN (e.g., 12-3456789, VAT123456789, EIN 12-3456789).')); ?></small>
            <?php echo Form::error('tax_information.company_tax_code', $errors); ?>

        </div>

        <div class="<?php echo \Illuminate\Support\Arr::toCssClasses([
            'form-group mb-3',
            'has-error' => $errors->has('tax_information.company_email'),
        ]); ?>">
            <div class="form-input-wrapper">
                <input
                    class="form-control"
                    id="tax-information-company-email"
                    name="tax_information[company_email]"
                    type="email"
                    value="<?php echo e(old('tax_information.company_email', Arr::get($sessionCheckoutData, 'tax_information.company_email'))); ?>"
                >
                <label for='tax-information-company-email'><?php echo e(__('Company email')); ?></label>
            </div>
            <small class="form-text text-muted"><?php echo e(__('Enter your business email address where invoices and tax documents will be sent (e.g., billing@company.com).')); ?></small>
            <?php echo Form::error('tax_information.company_email', $errors); ?>

        </div>
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\platform\plugins\ecommerce\/resources/views/orders/partials/tax-information.blade.php ENDPATH**/ ?>