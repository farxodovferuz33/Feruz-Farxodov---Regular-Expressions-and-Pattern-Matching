-- Task_01.sql
-- Query to extract records where the HomePage contains a valid email address.

-- BUT THERE IS NO TABLE NAMED SUCH Contacts, HOWEVER THERE IS TABLE SUPPLIERS WITH HomePage column and this is not email
-- and it is returning just empty, however there is query for the email regex

SELECT *
FROM northwind.suppliers
WHERE HomePage ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$';

-- Explanation:
-- The regex pattern used: 
-- ^[A-Za-z0-9._%+-]+    : Matches the email's local part
-- @[A-Za-z0-9.-]+       : Matches the domain part
-- \.[A-Za-z]{2,}$       : Matches the top-level domain (TLD) with at least two letters
