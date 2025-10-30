<?php

echo "=== AFFILIATE DEBUG ===\n\n";

// Check if controller file exists
$controllerPath = __DIR__ . '/platform/plugins/affiliate/src/Http/Controllers/PublicController.php';
echo "Controller exists: " . (file_exists($controllerPath) ? "YES" : "NO") . "\n";
echo "Controller path: " . $controllerPath . "\n\n";

// Check if routes file exists
$routesPath = __DIR__ . '/platform/plugins/affiliate/routes/web.php';
echo "Routes file exists: " . (file_exists($routesPath) ? "YES" : "NO") . "\n";
echo "Routes path: " . $routesPath . "\n\n";

// Check autoloader
if (file_exists(__DIR__ . '/vendor/autoload.php')) {
    require_once __DIR__ . '/vendor/autoload.php';
    echo "Autoloader loaded\n";
    
    // Check if class can be loaded
    if (class_exists('Botble\\Affiliate\\Http\\Controllers\\PublicController')) {
        echo "PublicController class found\n";
    } else {
        echo "PublicController class NOT found\n";
    }
} else {
    echo "Autoloader not found\n";
}

echo "\n=== END DEBUG ===\n";