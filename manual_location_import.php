<?php

require_once 'bootstrap/app.php';

use Botble\Location\Models\Country;
use Botble\Location\Models\State;
use Botble\Location\Models\City;

// Sample location data - replace with your actual data
$locationData = [
    'United States' => [
        'nationality' => 'American',
        'code' => 'US',
        'states' => [
            'California' => ['Los Angeles', 'San Francisco', 'San Diego', 'Sacramento'],
            'Texas' => ['Houston', 'Dallas', 'Austin', 'San Antonio'],
            'New York' => ['New York City', 'Buffalo', 'Albany', 'Rochester']
        ]
    ],
    'Canada' => [
        'nationality' => 'Canadian', 
        'code' => 'CA',
        'states' => [
            'Ontario' => ['Toronto', 'Ottawa', 'Hamilton', 'London'],
            'Quebec' => ['Montreal', 'Quebec City', 'Laval', 'Gatineau'],
            'British Columbia' => ['Vancouver', 'Victoria', 'Surrey', 'Burnaby']
        ]
    ]
];

foreach ($locationData as $countryName => $countryInfo) {
    // Create or find country
    $country = Country::firstOrCreate(
        ['name' => $countryName],
        [
            'nationality' => $countryInfo['nationality'],
            'code' => $countryInfo['code'],
            'status' => 'published'
        ]
    );
    
    echo "Created/Found country: {$countryName}\n";
    
    foreach ($countryInfo['states'] as $stateName => $cities) {
        // Create or find state
        $state = State::firstOrCreate(
            ['name' => $stateName, 'country_id' => $country->id],
            [
                'country_id' => $country->id,
                'status' => 'published'
            ]
        );
        
        echo "  Created/Found state: {$stateName}\n";
        
        foreach ($cities as $cityName) {
            // Create or find city
            $city = City::firstOrCreate(
                ['name' => $cityName, 'state_id' => $state->id, 'country_id' => $country->id],
                [
                    'state_id' => $state->id,
                    'country_id' => $country->id,
                    'status' => 'published'
                ]
            );
            
            echo "    Created/Found city: {$cityName}\n";
        }
    }
}

echo "\nLocation import completed successfully!\n";