<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;
use Botble\Location\Models\Country;

echo "=== ADMIN COUNTRIES DEBUG ===\n\n";

// Check Country model configuration
echo "Country model table: " . (new Country())->getTable() . "\n";
echo "Country model connection: " . (new Country())->getConnectionName() . "\n\n";

// Check all countries with different methods
echo "1. Direct DB query count: " . DB::table('countries')->count() . "\n";
echo "2. Country model count: " . Country::count() . "\n";
echo "3. Published countries: " . Country::where('status', 'published')->count() . "\n\n";

// Check status values in database
$statuses = DB::table('countries')->select('status')->distinct()->get();
echo "Status values in database:\n";
foreach ($statuses as $status) {
    $count = DB::table('countries')->where('status', $status->status)->count();
    echo "- '$status->status': $count records\n";
}

echo "\n";

// Check if admin is filtering by status
$allCountries = DB::table('countries')->select('id', 'name', 'status', 'is_default')->get();
echo "All countries in database:\n";
foreach ($allCountries->take(10) as $country) {
    echo "- ID: $country->id, Name: $country->name, Status: '$country->status', Default: " . ($country->is_default ?? 'null') . "\n";
}

echo "\n";

// Check admin user permissions
try {
    $adminUser = DB::table('users')->where('super_user', 1)->orWhere('manage_supers', 1)->first();
    if ($adminUser) {
        echo "Admin user found: $adminUser->email\n";
    } else {
        echo "No admin user found\n";
    }
} catch (Exception $e) {
    echo "Admin user check error: " . $e->getMessage() . "\n";
}

echo "\n";

// Check cache
$cacheFiles = glob('storage/framework/cache/data/*');
echo "Cache files: " . count($cacheFiles) . "\n";

echo "\n=== END DEBUG ===\n";