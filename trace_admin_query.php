<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;
use Botble\Location\Repositories\Interfaces\CountryInterface;

echo "=== TRACING ADMIN QUERY ===\n\n";

// Check what repository the admin uses
try {
    $countryRepo = app(CountryInterface::class);
    echo "Country repository: " . get_class($countryRepo) . "\n";
    
    // Get the model the repository uses
    $model = $countryRepo->getModel();
    echo "Model: " . get_class($model) . "\n";
    echo "Table: " . $model->getTable() . "\n";
    echo "Connection: " . $model->getConnectionName() . "\n\n";
    
    // Test the repository query
    $adminCountries = $countryRepo->all();
    echo "Admin repository count: " . $adminCountries->count() . "\n";
    
    // Show first few
    foreach ($adminCountries->take(5) as $country) {
        echo "- {$country->name}\n";
    }
    
} catch (Exception $e) {
    echo "Repository error: " . $e->getMessage() . "\n";
}

echo "\n";

// Check if there's caching
try {
    $cacheRepo = app('Botble\Location\Repositories\Caches\CountryCacheDecorator');
    echo "Cache repository found\n";
    
    // Clear cache
    cache()->flush();
    echo "Cache cleared\n";
    
} catch (Exception $e) {
    echo "No cache repository\n";
}

echo "\n=== END TRACE ===\n";