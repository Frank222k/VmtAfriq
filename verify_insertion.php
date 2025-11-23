<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;

echo "=== VERIFYING INSERTION ===\n\n";

// Check current database
$database = DB::connection()->getDatabaseName();
echo "Current database: $database\n\n";

// Check if data was inserted
$countries = DB::select('SELECT * FROM countries');
echo "Countries in current database:\n";
foreach ($countries as $country) {
    echo "- ID: {$country->id}, Name: {$country->name}, Status: {$country->status}\n";
}

echo "\nTotal countries: " . count($countries) . "\n\n";

// Check all databases for countries tables
$databases = DB::select('SHOW DATABASES');
echo "Checking all databases for countries:\n";

foreach ($databases as $db) {
    $dbName = array_values((array)$db)[0];
    
    if (in_array($dbName, ['information_schema', 'mysql', 'performance_schema', 'sys'])) {
        continue;
    }
    
    try {
        DB::statement("USE `$dbName`");
        $tables = DB::select("SHOW TABLES LIKE 'countries'");
        
        if (count($tables) > 0) {
            $count = DB::select("SELECT COUNT(*) as count FROM countries")[0]->count;
            echo "- Database '$dbName': $count countries\n";
            
            if ($count > 0) {
                $sample = DB::select("SELECT name FROM countries LIMIT 3");
                $names = array_map(fn($c) => $c->name, $sample);
                echo "  Sample: " . implode(', ', $names) . "\n";
            }
        }
    } catch (Exception $e) {
        // Skip databases we can't access
    }
}

// Switch back to original database
DB::statement("USE `$database`");

echo "\n=== END VERIFICATION ===\n";