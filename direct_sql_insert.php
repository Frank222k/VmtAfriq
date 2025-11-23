<?php

require_once 'bootstrap/app.php';

use Illuminate\Support\Facades\DB;

echo "=== DIRECT SQL INSERT ===\n\n";

// Clear tables
DB::statement('TRUNCATE TABLE countries');
DB::statement('TRUNCATE TABLE states');
DB::statement('TRUNCATE TABLE cities');

// Insert countries directly via SQL
$sql = "INSERT INTO countries (name, nationality, code, `order`, is_default, status, created_at, updated_at) VALUES 
('Japan', 'Japanese', 'JP', 0, 0, 'published', NOW(), NOW()),
('South Korea', 'Korean', 'KR', 1, 0, 'published', NOW(), NOW()),
('Thailand', 'Thai', 'TH', 2, 0, 'published', NOW(), NOW()),
('Vietnam', 'Vietnamese', 'VN', 3, 0, 'published', NOW(), NOW()),
('Malaysia', 'Malaysian', 'MY', 4, 0, 'published', NOW(), NOW())";

DB::statement($sql);

// Insert states
$statesSql = "INSERT INTO states (name, country_id, `order`, is_default, status, created_at, updated_at) VALUES 
('Tokyo', 1, 0, 0, 'published', NOW(), NOW()),
('Seoul', 2, 0, 0, 'published', NOW(), NOW()),
('Bangkok', 3, 0, 0, 'published', NOW(), NOW()),
('Hanoi', 4, 0, 0, 'published', NOW(), NOW()),
('Kuala Lumpur', 5, 0, 0, 'published', NOW(), NOW())";

DB::statement($statesSql);

// Insert cities
$citiesSql = "INSERT INTO cities (name, country_id, state_id, `order`, is_default, status, created_at, updated_at) VALUES 
('Tokyo City', 1, 1, 0, 0, 'published', NOW(), NOW()),
('Seoul City', 2, 2, 0, 0, 'published', NOW(), NOW()),
('Bangkok City', 3, 3, 0, 0, 'published', NOW(), NOW()),
('Hanoi City', 4, 4, 0, 0, 'published', NOW(), NOW()),
('Kuala Lumpur City', 5, 5, 0, 0, 'published', NOW(), NOW())";

DB::statement($citiesSql);

echo "Inserted 5 countries directly via SQL\n";
echo "Check admin panel now!\n";