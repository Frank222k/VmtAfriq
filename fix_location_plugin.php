<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;

echo "=== FIXING LOCATION PLUGIN ===\n\n";

// Insert/update plugin record
DB::table('plugins')->updateOrInsert(
    ['name' => 'location'],
    [
        'name' => 'location',
        'status' => 1,
        'created_at' => now(),
        'updated_at' => now()
    ]
);

// Update plugins.json file
$pluginsFile = storage_path('app/plugins.json');
$plugins = [];

if (file_exists($pluginsFile)) {
    $plugins = json_decode(file_get_contents($pluginsFile), true) ?: [];
}

if (!in_array('location', $plugins)) {
    $plugins[] = 'location';
    file_put_contents($pluginsFile, json_encode($plugins));
}

echo "Location plugin activated in database and plugins.json\n";
echo "Please refresh your admin panel and check Admin Panel → Locations\n";