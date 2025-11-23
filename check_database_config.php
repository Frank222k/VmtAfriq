<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;

echo "=== DATABASE CONFIG CHECK ===\n\n";

// Check current database connection
$connection = DB::connection();
$database = $connection->getDatabaseName();
echo "Current database: $database\n";

// Check all tables in current database
$tables = DB::select('SHOW TABLES');
echo "\nTables in database:\n";
foreach ($tables as $table) {
    $tableName = array_values((array)$table)[0];
    if (strpos($tableName, 'countries') !== false || strpos($tableName, 'location') !== false) {
        $count = DB::table($tableName)->count();
        echo "- $tableName: $count records\n";
    }
}

// Check if there are multiple country tables
$countryTables = [];
foreach ($tables as $table) {
    $tableName = array_values((array)$table)[0];
    if (strpos($tableName, 'countries') !== false) {
        $countryTables[] = $tableName;
    }
}

echo "\nCountry-related tables:\n";
foreach ($countryTables as $table) {
    $count = DB::table($table)->count();
    echo "- $table: $count records\n";
    
    if ($count > 0) {
        $sample = DB::table($table)->limit(3)->get();
        foreach ($sample as $record) {
            echo "  Sample: " . json_encode($record) . "\n";
        }
    }
}

echo "\n=== END CHECK ===\n";