<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;

// Activate location plugin
DB::table('plugins')->updateOrInsert(
    ['name' => 'location'],
    ['status' => 1]
);

echo "Location plugin activated!\n";
echo "Now go to Admin Panel → Plugins and check if Location plugin is active.\n";
echo "Then check Admin Panel → Locations → Countries\n";