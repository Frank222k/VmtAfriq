-- Create test affiliate record
INSERT INTO ec_affiliates (user_id, affiliate_code, commission_rate, status, created_at, updated_at) 
VALUES (1, 'TEST123', 10.00, 'active', NOW(), NOW());

-- Check if record exists
SELECT * FROM ec_affiliates WHERE affiliate_code = 'TEST123';