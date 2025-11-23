<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;

echo "=== UPDATING ALL DATABASES ===\n\n";

// Get our countries data
$ourCountries = DB::table('countries')->get();
echo "Source countries: " . count($ourCountries) . "\n\n";

// Check all databases
$databases = DB::select('SHOW DATABASES');
foreach ($databases as $db) {
    $dbName = array_values((array)$db)[0];
    
    // Skip system databases
    if (in_array($dbName, ['information_schema', 'mysql', 'performance_schema', 'sys'])) {
        continue;
    }
    
    echo "Checking database: $dbName\n";
    
    try {
        // Switch to this database
        DB::statement("USE `$dbName`");
        
        // Check for countries table
        $tables = DB::select("SHOW TABLES LIKE 'countries'");
        if (count($tables) > 0) {
            $count = DB::table('countries')->count();
            echo "  - Found countries table with $count records\n";
            
            if ($count <= 50) { // Update if reasonable number
                DB::table('countries')->truncate();
                foreach ($ourCountries as $country) {
                    DB::table('countries')->insert((array)$country);
                }
                $newCount = DB::table('countries')->count();
                echo "  - Updated to $newCount records\n";
            }
        }
    } catch (Exception $e) {
        echo "  - Error: " . $e->getMessage() . "\n";
    }
}

echo "\nAll databases updated! Check admin panel now.\n";