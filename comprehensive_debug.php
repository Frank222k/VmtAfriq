<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;
use Botble\Location\Models\Country;
use Botble\Location\Repositories\Interfaces\CountryInterface;
use Botble\Location\Tables\CountryTable;

echo "=== COMPREHENSIVE DEBUG ===\n\n";

// 1. Check table structure and data
echo "1. DATABASE ANALYSIS:\n";
$countries = DB::table('countries')->count();
echo "   Total countries in DB: $countries\n";

$sample = DB::table('countries')->limit(3)->get(['id', 'name', 'status', 'order']);
echo "   Sample records:\n";
foreach ($sample as $country) {
    echo "     ID: {$country->id}, Name: {$country->name}, Status: {$country->status}, Order: " . ($country->order ?? 'null') . "\n";
}

// 2. Check repository behavior
echo "\n2. REPOSITORY ANALYSIS:\n";
try {
    $repo = app(CountryInterface::class);
    $repoCountries = $repo->all();
    echo "   Repository count: " . $repoCountries->count() . "\n";
    
    // Check if repository has filters
    $repoFiltered = $repo->allBy([]);
    echo "   Repository allBy([]) count: " . $repoFiltered->count() . "\n";
    
} catch (Exception $e) {
    echo "   Repository error: " . $e->getMessage() . "\n";
}

// 3. Check table class (admin uses this)
echo "\n3. TABLE CLASS ANALYSIS:\n";
try {
    $table = app(CountryTable::class);
    echo "   Table class: " . get_class($table) . "\n";
    
    // Check table query
    $query = $table->query();
    $tableCount = $query->count();
    echo "   Table query count: $tableCount\n";
    
    // Check if table has default ordering
    $tableData = $query->limit(3)->get(['id', 'name', 'status', 'order']);
    echo "   Table query sample:\n";
    foreach ($tableData as $country) {
        echo "     ID: {$country->id}, Name: {$country->name}, Status: {$country->status}, Order: " . ($country->order ?? 'null') . "\n";
    }
    
} catch (Exception $e) {
    echo "   Table class error: " . $e->getMessage() . "\n";
}

// 4. Check model scopes
echo "\n4. MODEL SCOPES ANALYSIS:\n";
$model = new Country();
echo "   Model table: " . $model->getTable() . "\n";

// Check for global scopes
$globalScopes = $model->getGlobalScopes();
echo "   Global scopes: " . count($globalScopes) . "\n";
foreach ($globalScopes as $scope) {
    echo "     - " . get_class($scope) . "\n";
}

// 5. Check ordering
echo "\n5. ORDERING ANALYSIS:\n";
$ordered = Country::orderBy('order')->limit(5)->get(['id', 'name', 'order']);
echo "   Countries ordered by 'order' field:\n";
foreach ($ordered as $country) {
    echo "     {$country->name} (order: " . ($country->order ?? 'null') . ")\n";
}

// 6. Fix the issue
echo "\n6. APPLYING FIX:\n";
$updated = DB::table('countries')->whereNull('order')->update(['order' => 0]);
echo "   Updated $updated countries with null order to 0\n";

$cache_cleared = cache()->flush();
echo "   Cache cleared: " . ($cache_cleared ? 'YES' : 'NO') . "\n";

echo "\n=== DEBUG COMPLETE ===\n";
echo "Check admin panel now - countries should be visible!\n";