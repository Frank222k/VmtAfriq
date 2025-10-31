-- Insert affiliate settings into settings table
INSERT INTO settings (`key`, `value`, `created_at`, `updated_at`) VALUES
('affiliate_default_commission_rate', '5.00', NOW(), NOW()),
('affiliate_minimum_payout', '50.00', NOW(), NOW()),
('affiliate_payout_method', 'manual', NOW(), NOW()),
('affiliate_cookie_duration', '30', NOW(), NOW()),
('affiliate_auto_approve', '1', NOW(), NOW())
ON DUPLICATE KEY UPDATE 
`value` = VALUES(`value`), 
`updated_at` = NOW();