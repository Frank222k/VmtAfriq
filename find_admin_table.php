<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;

echo "=== FINDING ADMIN TABLE ===\n\n";

// Check all databases
$databases = DB::select('SHOW DATABASES');
echo "Available databases:\n";
foreach ($databases as $db) {
    $dbName = array_values((array)$db)[0];
    echo "- $dbName\n";
}

echo "\n";

// Check for tables with 15 records (your manual entries)
$tables = DB::select('SHOW TABLES');
echo "Tables with exactly 15 records:\n";
foreach ($tables as $table) {
    $tableName = array_values((array)$table)[0];
    if (strpos($tableName, 'countries') !== false || strpos($tableName, 'location') !== false) {
        $count = DB::table($tableName)->count();
        echo "- $tableName: $count records\n";
        
        if ($count == 15) {
            echo "  *** THIS IS LIKELY THE ADMIN TABLE ***\n";
            // Copy our data to this table
            $ourCountries = DB::table('countries')->get();
            DB::table($tableName)->truncate();
            foreach ($ourCountries as $country) {
                DB::table($tableName)->insert((array)$country);
            }
            $newCount = DB::table($tableName)->count();
            echo "  Updated to $newCount records\n";
        }
    }
}

echo "\nCheck admin panel now!\n";