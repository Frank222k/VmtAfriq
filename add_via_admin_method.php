<?php

require_once 'bootstrap/app.php';

use Botble\Location\Models\Country;
use Botble\Location\Models\State;
use Botble\Location\Models\City;
use Botble\Base\Enums\BaseStatusEnum;

echo "=== ADDING VIA ADMIN METHOD ===\n\n";

// Clear existing
Country::truncate();
State::truncate();
City::truncate();

// Add countries using the exact same method as admin panel
$countries = [
    ['name' => 'Japan', 'nationality' => 'Japanese', 'code' => 'JP'],
    ['name' => 'South Korea', 'nationality' => 'Korean', 'code' => 'KR'],
    ['name' => 'Thailand', 'nationality' => 'Thai', 'code' => 'TH'],
    ['name' => 'Vietnam', 'nationality' => 'Vietnamese', 'code' => 'VN'],
    ['name' => 'Malaysia', 'nationality' => 'Malaysian', 'code' => 'MY'],
];

foreach ($countries as $index => $countryData) {
    $country = new Country();
    $country->name = $countryData['name'];
    $country->nationality = $countryData['nationality'];
    $country->code = $countryData['code'];
    $country->order = $index;
    $country->is_default = false;
    $country->status = BaseStatusEnum::PUBLISHED;
    $country->save();
    
    echo "Added: {$country->name} (ID: {$country->id})\n";
    
    // Add a state for each country
    $state = new State();
    $state->name = $countryData['name'] . ' State';
    $state->country_id = $country->id;
    $state->order = 0;
    $state->is_default = false;
    $state->status = BaseStatusEnum::PUBLISHED;
    $state->save();
    
    // Add a city
    $city = new City();
    $city->name = $countryData['name'] . ' City';
    $city->country_id = $country->id;
    $city->state_id = $state->id;
    $city->order = 0;
    $city->is_default = false;
    $city->status = BaseStatusEnum::PUBLISHED;
    $city->save();
}

// Clear all caches
cache()->flush();
app('cache')->flush();

echo "\nAdded 5 countries using admin method. Check admin panel!\n";