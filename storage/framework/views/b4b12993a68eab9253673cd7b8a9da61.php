<!DOCTYPE html>
<html>
<head>
    <title>Affiliate Test</title>
</head>
<body>
    <h2>Laravel Affiliate Test</h2>
    
    <?php if($session): ?>
        <p style="color: green;">✓ Session: <?php echo e($session); ?></p>
    <?php else: ?>
        <p style="color: red;">✗ No session</p>
    <?php endif; ?>
    
    <?php if($cookie): ?>
        <p style="color: green;">✓ Cookie: <?php echo e($cookie); ?></p>
    <?php else: ?>
        <p style="color: red;">✗ No cookie</p>
    <?php endif; ?>
    
    <?php if($param): ?>
        <p style="color: blue;">Parameter: <?php echo e($param); ?></p>
    <?php endif; ?>
    
    <hr>
    <a href="/affiliate-test?ref=TEST123">Test ?ref=TEST123</a><br>
    <a href="/affiliate-test">Check status</a>
</body>
</html><?php /**PATH C:\xampp\htdocs\resources\views/affiliate-test.blade.php ENDPATH**/ ?>