<?php

require_once 'bootstrap/app.php';

use Botble\Location\Models\Country;
use Botble\Location\Models\State;
use Botble\Location\Models\City;
use Botble\Base\Enums\BaseStatusEnum;

// Add Countries
$usa = Country::create([
    'name' => 'United States',
    'nationality' => 'American',
    'code' => 'US',
    'status' => BaseStatusEnum::PUBLISHED,
    'order' => 1,
]);

// Add States
$california = State::create([
    'name' => 'California',
    'abbreviation' => 'CA',
    'country_id' => $usa->id,
    'status' => BaseStatusEnum::PUBLISHED,
    'order' => 1,
]);

// Add Cities
City::create([
    'name' => 'Los Angeles',
    'state_id' => $california->id,
    'country_id' => $usa->id,
    'status' => BaseStatusEnum::PUBLISHED,
    'order' => 1,
]);

echo "Locations added successfully!\n";