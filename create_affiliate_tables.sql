CREATE TABLE IF NOT EXISTS ec_affiliates (
    id bigint unsigned NOT NULL AUTO_INCREMENT,
    user_id bigint unsigned NULL,
    affiliate_code varchar(50) NOT NULL UNIQUE,
    commission_rate decimal(5,2) DEFAULT 5.00,
    status enum('active','inactive','suspended') DEFAULT 'active',
    total_earnings decimal(15,2) DEFAULT 0,
    paid_earnings decimal(15,2) DEFAULT 0,
    pending_earnings decimal(15,2) DEFAULT 0,
    created_at timestamp NULL,
    updated_at timestamp NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ec_affiliate_commissions (
    id bigint unsigned NOT NULL AUTO_INCREMENT,
    affiliate_id bigint unsigned NOT NULL,
    order_id bigint unsigned NOT NULL,
    commission_amount decimal(10,2) NOT NULL,
    status enum('pending','approved','paid','cancelled') DEFAULT 'pending',
    created_at timestamp NULL,
    updated_at timestamp NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ec_affiliate_referrals (
    id bigint unsigned NOT NULL AUTO_INCREMENT,
    affiliate_id bigint unsigned NOT NULL,
    visitor_ip varchar(45) NOT NULL,
    user_agent text NULL,
    referrer_url text NULL,
    landing_page text NULL,
    converted boolean DEFAULT false,
    order_id bigint unsigned NULL,
    created_at timestamp NULL,
    updated_at timestamp NULL,
    PRIMARY KEY (id)
);