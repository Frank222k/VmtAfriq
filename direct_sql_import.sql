-- Insert Countries
INSERT INTO countries (name, nationality, code, status, created_at, updated_at) VALUES
('United States', 'American', 'US', 'published', NOW(), NOW()),
('Canada', 'Canadian', 'CA', 'published', NOW(), NOW());

-- Insert States (replace country_id with actual IDs)
INSERT INTO states (name, abbreviation, country_id, status, created_at, updated_at) VALUES
('California', 'CA', 1, 'published', NOW(), NOW()),
('Texas', 'TX', 1, 'published', NOW(), NOW()),
('New York', 'NY', 1, 'published', NOW(), NOW()),
('Ontario', 'ON', 2, 'published', NOW(), NOW());

-- Insert Cities (replace state_id and country_id with actual IDs)
INSERT INTO cities (name, state_id, country_id, status, created_at, updated_at) VALUES
('Los Angeles', 1, 1, 'published', NOW(), NOW()),
('San Francisco', 1, 1, 'published', NOW(), NOW()),
('Houston', 2, 1, 'published', NOW(), NOW()),
('Dallas', 2, 1, 'published', NOW(), NOW()),
('New York City', 3, 1, 'published', NOW(), NOW()),
('Toronto', 4, 2, 'published', NOW(), NOW());