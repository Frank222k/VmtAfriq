<ol>
    <li>
        <p>
            <a
                href="https://www.mollie.com/dashboard/signup"
                target="_blank"
            >
                <?php echo e(__('Register an account on :name', ['name' => 'Mollie'])); ?>

            </a>
        </p>
    </li>
    <li>
        <p>
            <?php echo e(__('After registration at :name, you will have API key', ['name' => 'Mollie'])); ?>

        </p>
    </li>
    <li>
        <p><?php echo e(__('Enter API key into the box in right hand')); ?></p>
    </li>
    <li>
        <p><strong><?php echo e(__('Webhook Configuration:')); ?></strong></p>
        <p><?php echo e(__('In your Mollie Dashboard, configure the webhook URL as:')); ?></p>
        <code style="background: #f5f5f5; padding: 5px; display: block; margin: 10px 0;">
            <?php echo e(url('mollie/payment/webhook/{token}')); ?>

        </code>
        <p><small><?php echo e(__('Note: Replace {token} with the actual payment token. The webhook will be automatically called by Mollie to update payment status.')); ?></small></p>
    </li>
    <li>
        <p><strong><?php echo e(__('Security (Optional):')); ?></strong></p>
        <p><?php echo e(__('For enhanced security, you can configure a webhook secret in your Mollie Dashboard under Developers > Webhooks, then enter it in the Webhook Secret field.')); ?></p>
    </li>
</ol>
<?php /**PATH C:\xampp\htdocs\platform\plugins\mollie\/resources/views/instructions.blade.php ENDPATH**/ ?>