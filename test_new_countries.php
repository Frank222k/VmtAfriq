<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;
use Botble\Base\Enums\BaseStatusEnum;

echo "=== TESTING NEW COUNTRIES ===\n\n";

// Delete all countries
DB::table('countries')->truncate();
DB::table('states')->truncate();
DB::table('cities')->truncate();

echo "Cleared all location data\n";

// Test with different countries
$locations = [
    'Japan' => ['nationality' => 'Japanese', 'states' => ['Tokyo' => ['Tokyo', 'Shibuya'], 'Osaka' => ['Osaka', 'Sakai']]],
    'South Korea' => ['nationality' => 'Korean', 'states' => ['Seoul' => ['Seoul', 'Gangnam'], 'Busan' => ['Busan', 'Haeundae']]],
    'Thailand' => ['nationality' => 'Thai', 'states' => ['Bangkok' => ['Bangkok', 'Nonthaburi'], 'Chiang Mai' => ['Chiang Mai', 'Lamphun']]],
    'Vietnam' => ['nationality' => 'Vietnamese', 'states' => ['Hanoi' => ['Hanoi', 'Hai Phong'], 'Ho Chi Minh City' => ['Ho Chi Minh City', 'Thu Duc']]],
    'Malaysia' => ['nationality' => 'Malaysian', 'states' => ['Selangor' => ['Kuala Lumpur', 'Petaling Jaya'], 'Johor' => ['Johor Bahru', 'Skudai']]],
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
echo "\nImported 5 Asian countries. Check admin panel!\n";