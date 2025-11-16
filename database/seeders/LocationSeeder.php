<?php

namespace Database\Seeders;

use Botble\Location\Models\Country;
use Botble\Location\Models\State;
use Botble\Location\Models\City;
use Botble\Base\Enums\BaseStatusEnum;
use Illuminate\Database\Seeder;

class LocationSeeder extends Seeder
{
    public function run(): void
    {
        $countries = [
            ['name' => 'United States', 'code' => 'US', 'nationality' => 'American'],
            ['name' => 'Canada', 'code' => 'CA', 'nationality' => 'Canadian'],
            ['name' => 'United Kingdom', 'code' => 'GB', 'nationality' => 'British'],
        ];

        foreach ($countries as $countryData) {
            $country = Country::create([
                'name' => $countryData['name'],
                'code' => $countryData['code'],
                'nationality' => $countryData['nationality'],
                'status' => BaseStatusEnum::PUBLISHED,
            ]);

            // Add states/provinces for each country
            $this->addStatesForCountry($country);
        }
    }

    private function addStatesForCountry(Country $country): void
    {
        $statesData = match($country->code) {
            'US' => [
                ['name' => 'California', 'abbreviation' => 'CA'],
                ['name' => 'New York', 'abbreviation' => 'NY'],
                ['name' => 'Texas', 'abbreviation' => 'TX'],
            ],
            'CA' => [
                ['name' => 'Ontario', 'abbreviation' => 'ON'],
                ['name' => 'Quebec', 'abbreviation' => 'QC'],
                ['name' => 'British Columbia', 'abbreviation' => 'BC'],
            ],
            'GB' => [
                ['name' => 'England', 'abbreviation' => 'ENG'],
                ['name' => 'Scotland', 'abbreviation' => 'SCT'],
                ['name' => 'Wales', 'abbreviation' => 'WLS'],
            ],
            default => [],
        };

        foreach ($statesData as $stateData) {
            $state = State::create([
                'name' => $stateData['name'],
                'abbreviation' => $stateData['abbreviation'],
                'country_id' => $country->id,
                'status' => BaseStatusEnum::PUBLISHED,
            ]);

            $this->addCitiesForState($state);
        }
    }

    private function addCitiesForState(State $state): void
    {
        $citiesData = match($state->name) {
            'California' => ['Los Angeles', 'San Francisco', 'San Diego'],
            'New York' => ['New York City', 'Buffalo', 'Albany'],
            'Ontario' => ['Toronto', 'Ottawa', 'Hamilton'],
            'England' => ['London', 'Manchester', 'Birmingham'],
            default => [],
        };

        foreach ($citiesData as $cityName) {
            City::create([
                'name' => $cityName,
                'state_id' => $state->id,
                'country_id' => $state->country_id,
                'status' => BaseStatusEnum::PUBLISHED,
            ]);
        }
    }
}