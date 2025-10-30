<?php
// Activate affiliate plugin
require 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

// Add to activated plugins
$activatedPlugins = get_active_plugins();
if (!in_array('affiliate', $activatedPlugins)) {
    $activatedPlugins[] = 'affiliate';
    save_plugin_info($activatedPlugins);
}

echo "Affiliate plugin activated successfully!\n";
?>