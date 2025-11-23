<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;
use Botble\Base\Enums\BaseStatusEnum;

echo "=== FINAL FIX ===\n\n";

// Get template from manual country
$template = DB::table('countries')->where('id', '<=', 15)->first();

// Delete all countries
DB::table('countries')->truncate();
DB::table('states')->truncate();
DB::table('cities')->truncate();

echo "Cleared all location data\n";

// Re-import with exact template structure
$locations = [
    'United States' => ['nationality' => 'American', 'states' => ['California' => ['Los Angeles', 'San Francisco'], 'New York' => ['New York City', 'Buffalo']]],
    'Canada' => ['nationality' => 'Canadian', 'states' => ['Ontario' => ['Toronto', 'Ottawa'], 'Quebec' => ['Montreal', 'Quebec City']]],
    'United Kingdom' => ['nationality' => 'British', 'states' => ['England' => ['London', 'Manchester'], 'Scotland' => ['Edinburgh', 'Glasgow']]],
    'Germany' => ['nationality' => 'German', 'states' => ['Bavaria' => ['Munich', 'Nuremberg'], 'Berlin' => ['Berlin']]],
    'France' => ['nationality' => 'French', 'states' => ['Île-de-France' => ['Paris', 'Versailles'], 'Provence-Alpes-Côte d\'Azur' => ['Marseille', 'Nice']]],
];

$order = 0;
foreach ($locations as $countryName => $countryData) {
    $countryId = DB::table('countries')->insertGetId([
        'name' => $countryName,
        'nationality' => $countryData['nationality'],
        'code' => strtoupper(substr($countryName, 0, 2)),
        'order' => $order++,
        'is_default' => 0,
        'status' => BaseStatusEnum::PUBLISHED->value,
        'created_at' => now(),
        'updated_at' => now(),
    ]);
    
    echo "Added: $countryName (ID: $countryId)\n";
    
    foreach ($countryData['states'] as $stateName => $cities) {
        $stateId = DB::table('states')->insertGetId([
            'name' => $stateName,
            'country_id' => $countryId,
            'order' => 0,
            'is_default' => 0,
            'status' => BaseStatusEnum::PUBLISHED->value,
            'created_at' => now(),
            'updated_at' => now(),
        ]);
        
        foreach ($cities as $cityName) {
            DB::table('cities')->insert([
                'name' => $cityName,
                'country_id' => $countryId,
                'state_id' => $stateId,
                'order' => 0,
                'is_default' => 0,
                'status' => BaseStatusEnum::PUBLISHED->value,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}

cache()->flush();
echo "\nImported 5 countries with proper structure. Check admin panel!\n";