<?php

require_once 'bootstrap/app.php';

use Botble\Location\Models\Country;
use Botble\Location\Models\State;
use Botble\Location\Models\City;

$countries = Country::count();
$states = State::count();
$cities = City::count();

echo "Countries: $countries\n";
echo "States: $states\n";
echo "Cities: $cities\n";

if ($countries > 0) {
    echo "\nFirst 5 countries:\n";
    foreach (Country::take(5)->get() as $country) {
        echo "- {$country->name} ({$country->nationality})\n";
    }
} else {
    echo "\nNo countries found. Running import again...\n";
    include 'import_locations_direct.php';
}