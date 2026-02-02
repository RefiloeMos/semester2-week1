-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read example.sql
-- 3. Exit SQLite: .exit

-- Use this file to test things out, follow allow with classwork, etc.

SELECT Continent, AVG(Population) 
FROM 
countries GROUP BY Continent HAVING AVG(Population)>1000000;
