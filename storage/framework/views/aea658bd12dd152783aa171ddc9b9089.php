<!DOCTYPE html>
<html>
<head>
    <title>Affiliate Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h4>Join Our Affiliate Program</h4>
                    </div>
                    <div class="card-body">
                        <p>Earn commission by referring customers to our store. Get paid for every sale made through your referral link!</p>
                        
                        <ul>
                            <li>Earn 5% commission on all sales</li>
                            <li>Get your unique referral link</li>
                            <li>Track your earnings in real-time</li>
                            <li>Monthly payouts</li>
                        </ul>
                        
                        <form method="POST" action="<?php echo e(route('affiliate.store')); ?>">
                            <?php echo csrf_field(); ?>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary btn-lg">
                                    Become an Affiliate
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html><?php /**PATH C:\xampp\htdocs\resources\views/affiliate/register.blade.php ENDPATH**/ ?>