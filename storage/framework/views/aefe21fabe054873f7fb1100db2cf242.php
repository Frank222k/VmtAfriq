<div class="alert alert-warning mb-3 d-block">
    <p class="mb-1"><strong><?php echo e(__('Important: Webhook Configuration Required')); ?></strong></p>
    <p class="mb-0"><?php echo e(__('Webhooks are REQUIRED to prevent orders from going to "Incomplete" status. Without webhooks, payments may succeed but orders will not be marked as completed.')); ?></p>
</div>

<ol>
    <li>
        <p>
            <a
                href="https://razorpay.com"
                target="_blank"
            >
                <?php echo e(__('Register an account on :name', ['name' => 'Razorpay'])); ?>

            </a>
        </p>
    </li>
    <li>
        <p>
            <?php echo e(__('After registration at :name, you will have API Key ID and API Key Secret', ['name' => 'Razorpay'])); ?>

        </p>
    </li>
    <li>
        <p>
            <?php echo e(__('Enter API Key ID and API Key Secret into the box in right hand')); ?>

        </p>
    </li>
    <li>
        <p>
            <strong class="text-danger"><?php echo e(__('CRITICAL STEP:')); ?></strong>
            <?php echo BaseHelper::clean(__('You MUST create a webhook to handle payment notifications. Go to <strong>Account & Settings</strong> → <strong>Webhooks</strong> → <strong>Add New Webhook</strong> in your Razorpay Dashboard.')); ?>

        </p>

        <p class="mt-2"><?php echo e(__('Webhook URL:')); ?></p>
        <code class="d-block p-2 bg-light"><?php echo e(route('payments.razorpay.webhook')); ?></code>

        <p class="mt-3">
            <?php echo BaseHelper::clean(__('Select these <strong>Required Events</strong>:')); ?>

        </p>

        <ul class="ps-3 mt-2">
            <li><strong>payment.authorized</strong> - <?php echo e(__('When a payment is authorized')); ?></li>
            <li><strong>payment.captured</strong> - <?php echo e(__('When a payment is captured')); ?></li>
            <li><strong>payment.failed</strong> - <?php echo e(__('When a payment fails')); ?></li>
            <li><strong>order.paid</strong> - <?php echo e(__('When an order is paid')); ?></li>
        </ul>

        <div class="alert alert-danger mt-3 d-block">
            <p class="mb-1"><strong><?php echo e(__('Warning:')); ?></strong></p> <?php echo e(__('If you skip webhook configuration, your orders will show as "Incomplete" even after successful payment!')); ?>

        </div>

        <p class="mt-3">
            <?php echo BaseHelper::clean(__('After creating the webhook, Razorpay will show a <strong>Webhook Secret</strong>. Copy this secret and paste it into the <strong>Webhook Secret</strong> field below. This ensures secure communication between Razorpay and your site.')); ?>

        </p>
    </li>
    <li>
        <p>
            <strong><?php echo e(__('Test Your Integration:')); ?></strong>
        </p>
        <ul class="ps-3">
            <li><?php echo e(__('Make a test payment in Test Mode first')); ?></li>
            <li><?php echo e(__('Check if the order status updates to "Completed"')); ?></li>
            <li><?php echo e(__('If orders remain "Incomplete", verify your webhook configuration')); ?></li>
            <li><?php echo e(__('Check payment logs in storage/logs/payment-*.log for debugging')); ?></li>
        </ul>
    </li>
</ol>

<div class="alert alert-info mt-3 d-block">
    <p class="mb-1"><strong><?php echo e(__('Troubleshooting Tips:')); ?></strong></p>
    <ul class="mb-0 mt-2">
        <li><?php echo e(__('Ensure your site has a valid SSL certificate (HTTPS)')); ?></li>
        <li><?php echo e(__('Verify webhook URL is publicly accessible (not localhost)')); ?></li>
        <li><?php echo e(__('Check that no firewall blocks Razorpay webhook requests')); ?></li>
        <li><?php echo e(__('For production, ensure Razorpay is in Live Mode, not Test Mode')); ?></li>
    </ul>
</div>
<?php /**PATH C:\xampp\htdocs\platform\plugins\razorpay\/resources/views/instructions.blade.php ENDPATH**/ ?>