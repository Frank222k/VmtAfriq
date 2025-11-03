<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;

// Direct database insert
DB::table('countries')->insert([
    ['name' => 'United States', 'nationality' => 'American', 'code' => 'US', 'status' => 'published', 'created_at' => now(), 'updated_at' => now()],
    ['name' => 'Canada', 'nationality' => 'Canadian', 'code' => 'CA', 'status' => 'published', 'created_at' => now(), 'updated_at' => now()]
]);

$usId = DB::table('countries')->where('name', 'United States')->value('id');
$caId = DB::table('countries')->where('name', 'Canada')->value('id');

DB::table('states')->insert([
    ['name' => 'California', 'abbreviation' => 'CA', 'country_id' => $usId, 'status' => 'published', 'created_at' => now(), 'updated_at' => now()],
    ['name' => 'Texas', 'abbreviation' => 'TX', 'country_id' => $usId, 'status' => 'published', 'created_at' => now(), 'updated_at' => now()],
    ['name' => 'Ontario', 'abbreviation' => 'ON', 'country_id' => $caId, 'status' => 'published', 'created_at' => now(), 'updated_at' => now()]
]);

$caStateId = DB::table('states')->where('name', 'California')->value('id');
$txStateId = DB::table('states')->where('name', 'Texas')->value('id');

DB::table('cities')->insert([
    ['name' => 'Los Angeles', 'state_id' => $caStateId, 'country_id' => $usId, 'status' => 'published', 'created_at' => now(), 'updated_at' => now()],
    ['name' => 'San Francisco', 'state_id' => $caStateId, 'country_id' => $usId, 'status' => 'published', 'created_at' => now(), 'updated_at' => now()],
    ['name' => 'Houston', 'state_id' => $txStateId, 'country_id' => $usId, 'status' => 'published', 'created_at' => now(), 'updated_at' => now()]
]);

echo "Locations imported successfully!\n";