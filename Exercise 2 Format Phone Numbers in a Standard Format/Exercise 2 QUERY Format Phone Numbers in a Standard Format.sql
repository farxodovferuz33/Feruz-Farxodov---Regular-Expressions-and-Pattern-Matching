-- Task_02.sql
-- Format phone numbers exactly to the format (XXX) XXX-XXXX
-- I used exactly format of (XXX) XXX-XXXX as its required

SELECT CustomerID, 
       REGEXP_REPLACE(
           -- Remove all non-digit characters from the phone number
           REGEXP_REPLACE(Phone, '[^0-9]', '', 'g'),
           -- Ensure the number is formatted as (XXX) XXX-XXXX
           '(\d{3})(\d{3})(\d{4})', 
           '(\1) \2-\3'
       ) AS formatted_phone
FROM northwind.customers
WHERE LENGTH(REGEXP_REPLACE(Phone, '[^0-9]', '', 'g')) = 10  -- Only select numbers with exactly 10 digits
LIMIT 10;

-- Explanation:
-- First REGEXP_REPLACE: '[^0-9]', '', 'g' removes any non-digit characters (e.g., spaces, hyphens, etc.).
-- Second REGEXP_REPLACE: '(\d{3})(\d{3})(\d{4})' captures exactly 10 digits and formats them as (XXX) XXX-XXXX.
-- The query ensures only phone numbers with exactly 10 digits are formatted.
