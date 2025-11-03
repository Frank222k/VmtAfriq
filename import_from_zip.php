<?php

require_once 'bootstrap/app.php';

use Botble\Location\Models\Country;
use Botble\Location\Models\State;
use Botble\Location\Models\City;
use ZipArchive;

function importFromZip($zipPath) {
    $zip = new ZipArchive;
    
    if ($zip->open($zipPath) === TRUE) {
        $extractPath = storage_path('app/locations-import');
        
        // Create extraction directory
        if (!file_exists($extractPath)) {
            mkdir($extractPath, 0755, true);
        }
        
        // Extract ZIP
        $zip->extractTo($extractPath);
        $zip->close();
        
        // Process extracted files
        $countries = glob($extractPath . '/*', GLOB_ONLYDIR);
        
        foreach ($countries as $countryDir) {
            $countryCode = basename($countryDir);
            
            // Import country
            if (file_exists($countryDir . '/country.json')) {
                $countryData = json_decode(file_get_contents($countryDir . '/country.json'), true);
                
                $country = Country::firstOrCreate(
                    ['name' => $countryData['name']],
                    array_merge($countryData, ['status' => 'published'])
                );
                
                echo "Imported country: {$countryData['name']}\n";
                
                // Import states
                if (file_exists($countryDir . '/states.json')) {
                    $statesData = json_decode(file_get_contents($countryDir . '/states.json'), true);
                    
                    foreach ($statesData as $stateData) {
                        $state = State::firstOrCreate(
                            ['name' => $stateData['name'], 'country_id' => $country->id],
                            array_merge($stateData, [
                                'country_id' => $country->id,
                                'status' => 'published'
                            ])
                        );
                        
                        echo "  Imported state: {$stateData['name']}\n";
                    }
                }
                
                // Import cities
                if (file_exists($countryDir . '/cities.json')) {
                    $citiesData = json_decode(file_get_contents($countryDir . '/cities.json'), true);
                    
                    foreach ($citiesData as $cityGroup) {
                        $stateName = $cityGroup['name'];
                        $state = State::where('name', $stateName)
                                     ->where('country_id', $country->id)
                                     ->first();
                        
                        if ($state && isset($cityGroup['cities'])) {
                            foreach ($cityGroup['cities'] as $cityName) {
                                City::firstOrCreate(
                                    ['name' => $cityName, 'state_id' => $state->id],
                                    [
                                        'state_id' => $state->id,
                                        'country_id' => $country->id,
                                        'status' => 'published'
                                    ]
                                );
                                
                                echo "    Imported city: {$cityName}\n";
                            }
                        }
                    }
                }
            }
        }
        
        // Cleanup
        exec("rmdir /s /q \"$extractPath\"");
        
        echo "\nImport completed successfully!\n";
        
    } else {
        echo "Failed to open ZIP file: $zipPath\n";
    }
}

// Usage: Update with your ZIP filename
$zipFile = $_SERVER['USERPROFILE'] . '/Downloads/locations.zip';

// Alternative paths to try
$possiblePaths = [
    $_SERVER['USERPROFILE'] . '/Downloads/locations-master.zip',
    $_SERVER['USERPROFILE'] . '/Downloads/locations.zip',
    $_SERVER['USERPROFILE'] . '/Downloads/countries.zip',
    'C:/Users/' . $_SERVER['USERNAME'] . '/Downloads/locations-master.zip',
    'C:/Users/' . $_SERVER['USERNAME'] . '/Downloads/locations.zip',
    'C:/Users/' . $_SERVER['USERNAME'] . '/Downloads/countries.zip'
];

$foundFile = null;
foreach ($possiblePaths as $path) {
    if (file_exists($path)) {
        $foundFile = $path;
        break;
    }
}

if ($foundFile) {
    echo "Found ZIP file: $foundFile\n";
    importFromZip($foundFile);
} else {
    echo "ZIP file not found. Tried these paths:\n";
    foreach ($possiblePaths as $path) {
        echo "- $path\n";
    }
    echo "\nPlease rename your ZIP file to 'locations.zip' or update the script.\n";
}