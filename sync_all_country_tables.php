<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;

echo "=== SYNCING ALL COUNTRY TABLES ===\n\n";

// Get all tables
$tables = DB::select('SHOW TABLES');
$countryTables = [];

foreach ($tables as $table) {
    $tableName = array_values((array)$table)[0];
    if (strpos($tableName, 'countries') !== false) {
        $countryTables[] = $tableName;
    }
}

echo "Found country tables: " . implode(', ', $countryTables) . "\n\n";

// Get data from main countries table
$countries = DB::table('countries')->get();
echo "Source countries table has: " . count($countries) . " records\n\n";

// Sync to all country tables
foreach ($countryTables as $table) {
    if ($table === 'countries') continue; // Skip source table
    
    echo "Syncing to table: $table\n";
    
    // Clear existing data
    DB::table($table)->truncate();
    
    // Insert all countries
    foreach ($countries as $country) {
        DB::table($table)->insert((array)$country);
    }
    
    $count = DB::table($table)->count();
    echo "- Inserted $count records\n";
}

echo "\nAll country tables synced!\n";
echo "Check admin panel now.\n";