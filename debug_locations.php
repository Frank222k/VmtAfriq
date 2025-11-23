<?php

require_once 'bootstrap/app.php';

use Botble\Location\Models\Country;
use Illuminate\Support\Facades\DB;

echo "=== LOCATION DEBUG ===\n\n";

// Check if tables exist
$tables = ['countries', 'states', 'cities', 'plugins'];
foreach ($tables as $table) {
    try {
        $exists = DB::select("SHOW TABLES LIKE '$table'");
        echo "Table '$table': " . (count($exists) > 0 ? "EXISTS" : "NOT FOUND") . "\n";
    } catch (Exception $e) {
        echo "Table '$table': ERROR - " . $e->getMessage() . "\n";
    }
}

echo "\n";

// Check plugin status
try {
    $plugin = DB::table('plugins')->where('name', 'location')->first();
    echo "Location plugin: " . ($plugin ? "Found (status: {$plugin->status})" : "NOT FOUND") . "\n";
} catch (Exception $e) {
    echo "Plugin check error: " . $e->getMessage() . "\n";
}

echo "\n";

// Check data counts
try {
    $countries = DB::table('countries')->count();
    $states = DB::table('states')->count();
    $cities = DB::table('cities')->count();
    
    echo "Countries in DB: $countries\n";
    echo "States in DB: $states\n";
    echo "Cities in DB: $cities\n";
} catch (Exception $e) {
    echo "Data count error: " . $e->getMessage() . "\n";
}

echo "\n";

// Check first few countries
try {
    $countries = DB::table('countries')->limit(5)->get();
    echo "First 5 countries:\n";
    foreach ($countries as $country) {
        echo "- ID: {$country->id}, Name: {$country->name}, Status: {$country->status}\n";
    }
} catch (Exception $e) {
    echo "Countries fetch error: " . $e->getMessage() . "\n";
}

echo "\n";

// Check if location plugin is in active plugins list
try {
    $activePlugins = get_active_plugins();
    echo "Active plugins: " . implode(', ', $activePlugins) . "\n";
    echo "Location plugin active: " . (in_array('location', $activePlugins) ? "YES" : "NO") . "\n";
} catch (Exception $e) {
    echo "Active plugins check error: " . $e->getMessage() . "\n";
}

echo "\n=== END DEBUG ===\n";