<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;
use Botble\Location\Models\Country;
use Botble\Base\Enums\BaseStatusEnum;

echo "=== FINAL DEBUG ===\n\n";

// Check what the admin panel query looks like
echo "1. BaseStatusEnum::PUBLISHED value: '" . BaseStatusEnum::PUBLISHED->value . "'\n";
echo "2. Countries with this status: " . DB::table('countries')->where('status', BaseStatusEnum::PUBLISHED->value)->count() . "\n\n";

// Check the actual Country model query that admin uses
echo "3. Country::query()->count(): " . Country::query()->count() . "\n";
echo "4. Country::published()->count(): ";
try {
    echo Country::where('status', BaseStatusEnum::PUBLISHED)->count() . "\n";
} catch (Exception $e) {
    echo "ERROR: " . $e->getMessage() . "\n";
}

echo "\n";

// Check if there's a scope or filter
echo "5. Raw countries table structure:\n";
$columns = DB::select("DESCRIBE countries");
foreach ($columns as $col) {
    echo "   - {$col->Field} ({$col->Type})\n";
}

echo "\n";

// Check if admin is using different database
echo "6. Current database: " . DB::connection()->getDatabaseName() . "\n";
echo "7. Countries table exists: " . (DB::select("SHOW TABLES LIKE 'countries'") ? "YES" : "NO") . "\n\n";

// Test exact admin query
echo "8. Testing admin-like queries:\n";
$queries = [
    "SELECT COUNT(*) FROM countries",
    "SELECT COUNT(*) FROM countries WHERE status = 'published'", 
    "SELECT COUNT(*) FROM countries WHERE status = '" . BaseStatusEnum::PUBLISHED->value . "'",
];

foreach ($queries as $query) {
    try {
        $result = DB::select($query)[0];
        $count = array_values((array)$result)[0];
        echo "   '$query' = $count\n";
    } catch (Exception $e) {
        echo "   '$query' = ERROR: " . $e->getMessage() . "\n";
    }
}

echo "\n";

// Check if there are any middleware/filters
echo "9. Sample countries (first 3):\n";
$sample = DB::table('countries')->limit(3)->get();
foreach ($sample as $country) {
    echo "   ID: {$country->id}, Name: {$country->name}, Status: '{$country->status}'\n";
}

echo "\n=== END FINAL DEBUG ===\n";