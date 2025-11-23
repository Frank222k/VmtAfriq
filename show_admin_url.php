<?php

require_once 'bootstrap/app.php';

echo "=== ADMIN URLS ===\n\n";

$baseUrl = config('app.url');
$adminPrefix = config('core.base.general.admin_dir', 'admin');

echo "Try these URLs in your browser:\n\n";
echo "1. Countries: {$baseUrl}/{$adminPrefix}/countries\n";
echo "2. States: {$baseUrl}/{$adminPrefix}/locations/states\n";  
echo "3. Cities: {$baseUrl}/{$adminPrefix}/locations/cities\n";
echo "4. Location Plugin: {$baseUrl}/{$adminPrefix}/plugins\n";
echo "5. Main Admin: {$baseUrl}/{$adminPrefix}\n";

echo "\nYour 42 countries should be visible at URL #1\n";