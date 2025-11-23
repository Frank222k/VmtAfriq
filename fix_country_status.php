<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;
use Botble\Base\Enums\BaseStatusEnum;

echo "=== FIXING COUNTRY STATUS ===\n\n";

// Update all countries to have correct status
$updated = DB::table('countries')->update([
    'status' => BaseStatusEnum::PUBLISHED->value
]);

echo "Updated $updated countries with correct status\n";

// Also update states and cities
$statesUpdated = DB::table('states')->update([
    'status' => BaseStatusEnum::PUBLISHED->value
]);

$citiesUpdated = DB::table('cities')->update([
    'status' => BaseStatusEnum::PUBLISHED->value
]);

echo "Updated $statesUpdated states\n";
echo "Updated $citiesUpdated cities\n";

// Verify the fix
$publishedCount = DB::table('countries')->where('status', BaseStatusEnum::PUBLISHED->value)->count();
echo "\nCountries with correct published status: $publishedCount\n";

echo "\nStatus fix complete! Check admin panel now.\n";