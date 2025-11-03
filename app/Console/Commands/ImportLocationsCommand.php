<?php

namespace App\Console\Commands;

use Botble\Location\Models\Country;
use Botble\Location\Models\State;
use Botble\Location\Models\City;
use Illuminate\Console\Command;

class ImportLocationsCommand extends Command
{
    protected $signature = 'locations:import';
    protected $description = 'Import locations directly to database';

    public function handle()
    {
        // Create Country
        $country = Country::create([
            'name' => 'United States',
            'nationality' => 'American',
            'code' => 'US',
            'status' => 'published'
        ]);

        // Create States
        $states = [
            ['name' => 'California', 'abbreviation' => 'CA'],
            ['name' => 'Texas', 'abbreviation' => 'TX'],
            ['name' => 'New York', 'abbreviation' => 'NY']
        ];

        foreach ($states as $stateData) {
            $state = State::create([
                'name' => $stateData['name'],
                'abbreviation' => $stateData['abbreviation'],
                'country_id' => $country->id,
                'status' => 'published'
            ]);

            // Create Cities for each state
            $cities = $this->getCitiesForState($stateData['name']);
            foreach ($cities as $cityName) {
                City::create([
                    'name' => $cityName,
                    'state_id' => $state->id,
                    'country_id' => $country->id,
                    'status' => 'published'
                ]);
            }
        }

        $this->info('Locations imported successfully!');
    }

    private function getCitiesForState($stateName)
    {
        $cities = [
            'California' => ['Los Angeles', 'San Francisco', 'San Diego'],
            'Texas' => ['Houston', 'Dallas', 'Austin'],
            'New York' => ['New York City', 'Buffalo', 'Albany']
        ];

        return $cities[$stateName] ?? [];
    }
}