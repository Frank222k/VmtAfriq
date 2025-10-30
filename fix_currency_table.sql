-- Add missing columns to ec_currencies table
ALTER TABLE ec_currencies ADD COLUMN number_format_style VARCHAR(50) DEFAULT 'western' AFTER decimals;
ALTER TABLE ec_currencies ADD COLUMN space_between_price_and_currency BOOLEAN DEFAULT FALSE AFTER number_format_style;

-- Update existing records to have the default values
UPDATE ec_currencies SET number_format_style = 'western', space_between_price_and_currency = 0 WHERE number_format_style IS NULL;