<?php

// Simple ZIP import without Laravel dependencies
$zipFile = $_SERVER['USERPROFILE'] . '/Downloads/locations-master.zip';

// Alternative paths
$possiblePaths = [
    $_SERVER['USERPROFILE'] . '/Downloads/locations-master.zip',
    'C:/Users/' . $_SERVER['USERNAME'] . '/Downloads/locations-master.zip'
];

$foundFile = null;
foreach ($possiblePaths as $path) {
    if (file_exists($path)) {
        $foundFile = $path;
        break;
    }
}

if (!$foundFile) {
    die("ZIP file not found in Downloads folder\n");
}

// Database connection
$host = '127.0.0.1';
$dbname = 'vmtafriq2';
$username = 'vmt_user';
$password = 'Password123+';

try {
    $mysqli = new mysqli($host, $username, $password, $dbname);
    if ($mysqli->connect_error) {
        die('Connect Error: ' . $mysqli->connect_error);
    }
    
    echo "Connected to database\n";
    
    // Extract ZIP
    $zip = new ZipArchive;
    if ($zip->open($foundFile) === TRUE) {
        $extractPath = sys_get_temp_dir() . '/locations-import';
        
        if (!is_dir($extractPath)) {
            mkdir($extractPath, 0755, true);
        }
        
        $zip->extractTo($extractPath);
        $zip->close();
        
        echo "ZIP extracted to: $extractPath\n";
        
        // Find country directories
        $countries = glob($extractPath . '/locations-master/*', GLOB_ONLYDIR);
        
        foreach ($countries as $countryDir) {
            $countryCode = basename($countryDir);
            
            // Import country
            if (file_exists($countryDir . '/country.json')) {
                $countryData = json_decode(file_get_contents($countryDir . '/country.json'), true);
                
                $stmt = $mysqli->prepare("INSERT IGNORE INTO countries (name, nationality, code, status, created_at, updated_at) VALUES (?, ?, ?, 'published', NOW(), NOW())");
                $stmt->bind_param('sss', $countryData['name'], $countryData['nationality'] ?? '', $countryCode);
                $stmt->execute();
                
                $countryId = $mysqli->insert_id ?: $mysqli->query("SELECT id FROM countries WHERE name = '" . $mysqli->real_escape_string($countryData['name']) . "'")->fetch_row()[0];
                
                echo "Imported country: {$countryData['name']} (ID: $countryId)\n";
                
                // Import states
                if (file_exists($countryDir . '/states.json')) {
                    $statesData = json_decode(file_get_contents($countryDir . '/states.json'), true);
                    
                    foreach ($statesData as $stateData) {
                        $stmt = $mysqli->prepare("INSERT IGNORE INTO states (name, abbreviation, country_id, status, created_at, updated_at) VALUES (?, ?, ?, 'published', NOW(), NOW())");
                        $stmt->bind_param('ssi', $stateData['name'], $stateData['abbreviation'] ?? '', $countryId);
                        $stmt->execute();
                        
                        echo "  Imported state: {$stateData['name']}\n";
                    }
                }
                
                // Import cities
                if (file_exists($countryDir . '/cities.json')) {
                    $citiesData = json_decode(file_get_contents($countryDir . '/cities.json'), true);
                    
                    foreach ($citiesData as $cityGroup) {
                        $stateName = $cityGroup['name'];
                        
                        $stmt = $mysqli->prepare("SELECT id FROM states WHERE name = ? AND country_id = ?");
                        $stmt->bind_param('si', $stateName, $countryId);
                        $stmt->execute();
                        $result = $stmt->get_result();
                        $stateId = $result->fetch_row()[0] ?? null;
                        
                        if ($stateId && isset($cityGroup['cities'])) {
                            foreach ($cityGroup['cities'] as $cityName) {
                                $stmt = $mysqli->prepare("INSERT IGNORE INTO cities (name, state_id, country_id, status, created_at, updated_at) VALUES (?, ?, ?, 'published', NOW(), NOW())");
                                $stmt->bind_param('sii', $cityName, $stateId, $countryId);
                                $stmt->execute();
                            }
                            echo "    Imported " . count($cityGroup['cities']) . " cities for $stateName\n";
                        }
                    }
                }
            }
        }
        
        echo "\nImport completed successfully!\n";
        
    } else {
        echo "Failed to open ZIP file\n";
    }
    
} catch (Exception $e) {
    echo "Database error: " . $e->getMessage() . "\n";
}