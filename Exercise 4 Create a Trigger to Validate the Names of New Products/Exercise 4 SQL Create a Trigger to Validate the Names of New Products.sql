-- Task_04.sql
-- Trigger to validate ProductName before insertion

CREATE OR REPLACE FUNCTION validate_product_name() 
RETURNS TRIGGER AS $$
BEGIN
    -- Check if ProductName starts with an uppercase letter and is at least 5 characters long
    IF NEW.ProductName !~ '^[A-Z].{4,}$' THEN
        RAISE EXCEPTION 'ProductName must start with an uppercase letter and be at least 5 characters long.';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create the trigger on the Products table
CREATE TRIGGER trigger_validate_product_name
BEFORE INSERT ON northwind.products
FOR EACH ROW
EXECUTE FUNCTION validate_product_name();

-- Test the trigger by trying to insert a valid and invalid product name

-- Valid product insertion
INSERT INTO northwind.products (ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES (21, 'ValidName', 1, 1, '10 boxes', 50, 100, 0, 10, false);

-- Invalid product insertion (should fail)
INSERT INTO northwind.products (ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES (22, 'invalid', 1, 1, '10 boxes', 50, 100, 0, 10, false);
