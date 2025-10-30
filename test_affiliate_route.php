<?php
require 'vendor/autoload.php';

$app = require_once 'bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

// Test if route exists
try {
    $url = route('affiliate.index');
    echo "Affiliate route exists: " . $url . "\n";
} catch (Exception $e) {
    echo "Route not found: " . $e->getMessage() . "\n";
}

// Check if plugin is active
$active = is_plugin_active('affiliate');
echo "Plugin active: " . ($active ? 'Yes' : 'No') . "\n";
?>