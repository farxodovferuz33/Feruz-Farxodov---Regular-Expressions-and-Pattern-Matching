-- Task_03.sql
-- Function to classify customers based on postal code format

CREATE OR REPLACE FUNCTION classify_customer_by_postal_code(postal_code VARCHAR)
RETURNS VARCHAR AS $$
BEGIN
    -- Check for a Local postal code: only numbers, no hyphen
    IF postal_code ~ '^\d+$' THEN
        RETURN 'Local';
        
    -- Check for a National postal code: only numbers with a hyphen
    ELSIF postal_code ~ '^\d+-\d+$' THEN
        RETURN 'National';
    
    -- Any other format is classified as International
    ELSE
        RETURN 'International';
    END IF;
END;
$$ LANGUAGE plpgsql;

-- Query to apply the function and classify customers
SELECT CustomerID, CompanyName, PostalCode, classify_customer_by_postal_code(PostalCode) AS classification
FROM northwind.customers
LIMIT 10;


-- Explanation:
-- Local: Matches postal codes with exactly 5 digits (e.g., "12345").
-- National: Any postal code that contains a hyphen (`-`), regardless of the number of digits before or after it.
-- International: All other formats that don't match the above patterns.
