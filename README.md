# Feruz-Farxodov-Regular-Expressions-and-Pattern-Matching
I will work with the NORTHWIND database using the corresponding script from the previous topics.

There are folders name with exercise X and inside 2 files report .docx and SQL .sql

Regular Expressions and Pattern Matching in PostgreSQL

The goal of this exercise is to give you some practice using regular expressions in PostgreSQL to enhance your skills in advanced SQL querying and data manipulation.

The task will take you about 1.5 hours.
Please be aware that the task is mandatory.
You can earn a maximum of 18 points.


Task Description

You will work with the NORTHWIND database using the corresponding script from the previous topics.


Exercise 1: Identify Email Addresses in Contacts

Write a PostgreSQL query using regular expressions to extract all records from the Contacts table where the Homepage field contains an email address.

Test: Ensure your query lists only records with valid email formats in the HomePage column.


Exercise 2: Format Phone Numbers in a Standard Format

Using the function REGEXP_REPLACE(), format all phone numbers in the Customers table to a standard format (XXX) XXX-XXXX.

Test: Apply this formatting to the Phone column and display the first 10 formatted phone numbers.


Exercise 3: Classify Customers Based on Postal Codes

Create a PostgreSQL function called classify_customer_by_postal_code(postal_code VARCHAR) that returns Local, National, or International based on the pattern of the postal code (e.g., Local for codes like 12345, National for codes like 123-456, and International for other formats).

Test: Use this function in a query on the Customers table to classify customers and display the first 10 results.


Exercise 4: Create a Trigger to Validate the Names of New Products

Develop a trigger that validates a ProductName in the Products table before insertion. The name of a product must start with an uppercase letter and be at least five characters long.

Test: Try to insert a few test records into the Products table to ensure the trigger validates the names of products correctly.


Additional Requirements

Please make sure to do the following:

Label each file clearly, for example: e.g., sql, Task_02.sql.
Submit a brief report summarizing the approach, including how regular expressions were utilized in each task.
Ensure code readability with proper formatting and comments to explain its purpose and functionality.
Include error handling in the function and a trigger to manage exceptions.
Document the test cases used to validate each query and function.
