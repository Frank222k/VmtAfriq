<?php

// Extract ZIP and generate SQL file
$zipFile = $_SERVER['USERPROFILE'] . '/Downloads/locations-master.zip';

if (!file_exists($zipFile)) {
    die("ZIP file not found: $zipFile\n");
}

$zip = new ZipArchive;
if ($zip->open($zipFile) === TRUE) {
    $extractPath = sys_get_temp_dir() . '/locations-extract';
    
    if (!is_dir($extractPath)) {
        mkdir($extractPath, 0755, true);
    }
    
    $zip->extractTo($extractPath);
    $zip->close();
    
    $sqlFile = 'all_locations.sql';
    $sql = "-- Generated SQL for all countries from locations-master.zip\n\n";
    
    $countryId = 1;
    $stateId = 1;
    
    // Find country directories
    $countries = glob($extractPath . '/locations-master/*', GLOB_ONLYDIR);
    
    foreach ($countries as $countryDir) {
        $countryCode = strtoupper(basename($countryDir));
        
        if (file_exists($countryDir . '/country.json')) {
            $countryData = json_decode(file_get_contents($countryDir . '/country.json'), true);
            
            $sql .= "-- Country: {$countryData['name']}\n";
            $sql .= "INSERT INTO countries (id, name, nationality, code, status, created_at, updated_at) VALUES\n";
            $sql .= "($countryId, '{$countryData['name']}', '{$countryData['nationality']}', '$countryCode', 'published', NOW(), NOW());\n\n";
            
            // Import states
            if (file_exists($countryDir . '/states.json')) {
                $statesData = json_decode(file_get_contents($countryDir . '/states.json'), true);
                
                $sql .= "-- States for {$countryData['name']}\n";
                $sql .= "INSERT INTO states (id, name, abbreviation, country_id, status, created_at, updated_at) VALUES\n";
                
                $stateInserts = [];
                $stateMap = [];
                
                foreach ($statesData as $stateData) {
                    $stateInserts[] = "($stateId, '{$stateData['name']}', '{$stateData['abbreviation']}', $countryId, 'published', NOW(), NOW())";
                    $stateMap[$stateData['name']] = $stateId;
                    $stateId++;
                }
                
                $sql .= implode(",\n", $stateInserts) . ";\n\n";
                
                // Import cities
                if (file_exists($countryDir . '/cities.json')) {
                    $citiesData = json_decode(file_get_contents($countryDir . '/cities.json'), true);
                    
                    $sql .= "-- Cities for {$countryData['name']}\n";
                    $sql .= "INSERT INTO cities (name, state_id, country_id, status, created_at, updated_at) VALUES\n";
                    
                    $cityInserts = [];
                    
                    foreach ($citiesData as $cityGroup) {
                        $stateName = $cityGroup['name'];
                        $currentStateId = $stateMap[$stateName] ?? null;
                        
                        if ($currentStateId && isset($cityGroup['cities'])) {
                            foreach ($cityGroup['cities'] as $cityName) {
                                $cityInserts[] = "('{$cityName}', $currentStateId, $countryId, 'published', NOW(), NOW())";
                            }
                        }
                    }
                    
                    if (!empty($cityInserts)) {
                        // Split into chunks of 100 to avoid SQL limits
                        $chunks = array_chunk($cityInserts, 100);
                        foreach ($chunks as $chunk) {
                            $sql .= implode(",\n", $chunk) . ";\n\n";
                            if ($chunk !== end($chunks)) {
                                $sql .= "INSERT INTO cities (name, state_id, country_id, status, created_at, updated_at) VALUES\n";
                            }
                        }
                    }
                }
            }
            
            $countryId++;
        }
    }
    
    file_put_contents($sqlFile, $sql);
    echo "Generated SQL file: $sqlFile\n";
    echo "Import this file in phpMyAdmin to get ALL countries from your ZIP.\n";
    
} else {
    echo "Failed to open ZIP file\n";
}