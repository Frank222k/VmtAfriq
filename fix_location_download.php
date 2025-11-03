<?php

require_once 'bootstrap/app.php';

use Botble\Location\Models\Country;
use Botble\Location\Models\State;
use Botble\Location\Models\City;
use Illuminate\Support\Facades\Http;

// Alternative method to import US locations without GitHub dependency
function importUSLocations() {
    // Create US Country
    $country = Country::firstOrCreate(
        ['name' => 'United States'],
        [
            'nationality' => 'American',
            'code' => 'US',
            'status' => 'published'
        ]
    );

    // US States with major cities
    $usStates = [
        'Alabama' => ['Birmingham', 'Montgomery', 'Mobile'],
        'Alaska' => ['Anchorage', 'Fairbanks', 'Juneau'],
        'Arizona' => ['Phoenix', 'Tucson', 'Mesa'],
        'Arkansas' => ['Little Rock', 'Fort Smith', 'Fayetteville'],
        'California' => ['Los Angeles', 'San Francisco', 'San Diego', 'Sacramento'],
        'Colorado' => ['Denver', 'Colorado Springs', 'Aurora'],
        'Connecticut' => ['Hartford', 'New Haven', 'Stamford'],
        'Delaware' => ['Wilmington', 'Dover', 'Newark'],
        'Florida' => ['Miami', 'Tampa', 'Orlando', 'Jacksonville'],
        'Georgia' => ['Atlanta', 'Augusta', 'Columbus'],
        'Hawaii' => ['Honolulu', 'Hilo', 'Kailua'],
        'Idaho' => ['Boise', 'Nampa', 'Meridian'],
        'Illinois' => ['Chicago', 'Aurora', 'Rockford'],
        'Indiana' => ['Indianapolis', 'Fort Wayne', 'Evansville'],
        'Iowa' => ['Des Moines', 'Cedar Rapids', 'Davenport'],
        'Kansas' => ['Wichita', 'Overland Park', 'Kansas City'],
        'Kentucky' => ['Louisville', 'Lexington', 'Bowling Green'],
        'Louisiana' => ['New Orleans', 'Baton Rouge', 'Shreveport'],
        'Maine' => ['Portland', 'Lewiston', 'Bangor'],
        'Maryland' => ['Baltimore', 'Frederick', 'Rockville'],
        'Massachusetts' => ['Boston', 'Worcester', 'Springfield'],
        'Michigan' => ['Detroit', 'Grand Rapids', 'Warren'],
        'Minnesota' => ['Minneapolis', 'Saint Paul', 'Rochester'],
        'Mississippi' => ['Jackson', 'Gulfport', 'Southaven'],
        'Missouri' => ['Kansas City', 'Saint Louis', 'Springfield'],
        'Montana' => ['Billings', 'Missoula', 'Great Falls'],
        'Nebraska' => ['Omaha', 'Lincoln', 'Bellevue'],
        'Nevada' => ['Las Vegas', 'Henderson', 'Reno'],
        'New Hampshire' => ['Manchester', 'Nashua', 'Concord'],
        'New Jersey' => ['Newark', 'Jersey City', 'Paterson'],
        'New Mexico' => ['Albuquerque', 'Las Cruces', 'Rio Rancho'],
        'New York' => ['New York City', 'Buffalo', 'Rochester', 'Albany'],
        'North Carolina' => ['Charlotte', 'Raleigh', 'Greensboro'],
        'North Dakota' => ['Fargo', 'Bismarck', 'Grand Forks'],
        'Ohio' => ['Columbus', 'Cleveland', 'Cincinnati'],
        'Oklahoma' => ['Oklahoma City', 'Tulsa', 'Norman'],
        'Oregon' => ['Portland', 'Salem', 'Eugene'],
        'Pennsylvania' => ['Philadelphia', 'Pittsburgh', 'Allentown'],
        'Rhode Island' => ['Providence', 'Warwick', 'Cranston'],
        'South Carolina' => ['Charleston', 'Columbia', 'North Charleston'],
        'South Dakota' => ['Sioux Falls', 'Rapid City', 'Aberdeen'],
        'Tennessee' => ['Nashville', 'Memphis', 'Knoxville'],
        'Texas' => ['Houston', 'San Antonio', 'Dallas', 'Austin'],
        'Utah' => ['Salt Lake City', 'West Valley City', 'Provo'],
        'Vermont' => ['Burlington', 'Essex', 'South Burlington'],
        'Virginia' => ['Virginia Beach', 'Norfolk', 'Chesapeake'],
        'Washington' => ['Seattle', 'Spokane', 'Tacoma'],
        'West Virginia' => ['Charleston', 'Huntington', 'Parkersburg'],
        'Wisconsin' => ['Milwaukee', 'Madison', 'Green Bay'],
        'Wyoming' => ['Cheyenne', 'Casper', 'Laramie']
    ];

    foreach ($usStates as $stateName => $cities) {
        $state = State::firstOrCreate(
            ['name' => $stateName, 'country_id' => $country->id],
            [
                'country_id' => $country->id,
                'status' => 'published'
            ]
        );

        foreach ($cities as $cityName) {
            City::firstOrCreate(
                ['name' => $cityName, 'state_id' => $state->id],
                [
                    'state_id' => $state->id,
                    'country_id' => $country->id,
                    'status' => 'published'
                ]
            );
        }
    }

    echo "US locations imported successfully!\n";
}

// Run the import
importUSLocations();