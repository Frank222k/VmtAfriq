<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;

echo "=== COPYING MANUAL STRUCTURE ===\n\n";

// Get one of your manual countries as template
$manualCountry = DB::table('countries')->where('id', '<=', 15)->first();
if (!$manualCountry) {
    echo "No manual country found\n";
    exit;
}

echo "Manual country template:\n";
foreach ((array)$manualCountry as $field => $value) {
    echo "  $field: " . ($value ?? 'null') . "\n";
}

echo "\n";

// Get your imported countries (assuming they have higher IDs)
$importedCountries = DB::table('countries')->where('id', '>', 15)->get();
echo "Found " . count($importedCountries) . " imported countries\n\n";

// Update each imported country with the same structure as manual ones
foreach ($importedCountries as $country) {
    $updateData = [];
    
    // Copy all fields from manual country except id, name, nationality
    foreach ((array)$manualCountry as $field => $value) {
        if (!in_array($field, ['id', 'name', 'nationality', 'created_at', 'updated_at'])) {
            $updateData[$field] = $value;
        }
    }
    
    // Keep the original name and nationality
    $updateData['updated_at'] = now();
    
    DB::table('countries')->where('id', $country->id)->update($updateData);
    echo "Updated: {$country->name}\n";
}

// Clear cache
cache()->flush();

echo "\nStructure copied! Check admin panel now.\n";