<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;

echo "=== SYNCING TO ALL DATABASES ===\n\n";

$currentDb = DB::connection()->getDatabaseName();

// Get countries from current database
$countries = DB::select('SELECT * FROM countries');
echo "Source: " . count($countries) . " countries from $currentDb\n\n";

// Get all databases
$databases = DB::select('SHOW DATABASES');

foreach ($databases as $db) {
    $dbName = array_values((array)$db)[0];
    
    if (in_array($dbName, ['information_schema', 'mysql', 'performance_schema', 'sys']) || $dbName === $currentDb) {
        continue;
    }
    
    try {
        DB::statement("USE `$dbName`");
        $tables = DB::select("SHOW TABLES LIKE 'countries'");
        
        if (count($tables) > 0) {
            echo "Syncing to database: $dbName\n";
            
            // Clear and insert
            DB::statement('TRUNCATE TABLE countries');
            DB::statement('TRUNCATE TABLE states');
            DB::statement('TRUNCATE TABLE cities');
            
            // Insert countries
            foreach ($countries as $country) {
                DB::statement("INSERT INTO countries (name, nationality, code, `order`, is_default, status, created_at, updated_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", [
                    $country->name, $country->nationality, $country->code, $country->order, $country->is_default, $country->status, $country->created_at, $country->updated_at
                ]);
            }
            
            // Get states and cities from source
            DB::statement("USE `$currentDb`");
            $states = DB::select('SELECT * FROM states');
            $cities = DB::select('SELECT * FROM cities');
            
            // Insert to target
            DB::statement("USE `$dbName`");
            foreach ($states as $state) {
                DB::statement("INSERT INTO states (name, country_id, `order`, is_default, status, created_at, updated_at) VALUES (?, ?, ?, ?, ?, ?, ?)", [
                    $state->name, $state->country_id, $state->order, $state->is_default, $state->status, $state->created_at, $state->updated_at
                ]);
            }
            
            foreach ($cities as $city) {
                DB::statement("INSERT INTO cities (name, country_id, state_id, `order`, is_default, status, created_at, updated_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", [
                    $city->name, $city->country_id, $city->state_id, $city->order, $city->is_default, $city->status, $city->created_at, $city->updated_at
                ]);
            }
            
            $newCount = DB::select("SELECT COUNT(*) as count FROM countries")[0]->count;
            echo "- Synced $newCount countries\n";
        }
    } catch (Exception $e) {
        echo "- Error with $dbName: " . $e->getMessage() . "\n";
    }
}

// Switch back
DB::statement("USE `$currentDb`");

echo "\nSync complete! Check admin panel now.\n";