-- First Step: Create a new database (shirts_db)
CREATE DATABASE shirts_db;

USE shirts_db;

-- Second Step: Create a new table (shirts)
CREATE TABLE shirts (
			shirt_id INT,
			article text,
			color text,
			shirt_size VARCHAR(4),	
			last_worn INT
		    );
            
-- Third Step: Populate the table with the following data:

-- 1. Get all that data in there with a single line
INSERT INTO shirts values(1, 't-shirt', 'white', 'S', 10);
INSERT INTO shirts values(2, 't-shirt', 'green', 'S', 200);
INSERT INTO shirts values(3, 'polo shirt', 'black', 'M', 10);
INSERT INTO shirts values(4, 'tank top', 'blue', 'S', 50);
INSERT INTO shirts values(5, 't-shirt', 'pink', 'S', 0);
INSERT INTO shirts values(6, 'polo shirt', 'red', 'M', 5);
INSERT INTO shirts values(7, 'tank top', 'white', 'S', 200);
INSERT INTO shirts values(8, 'tank top', 'blue', 'S', 15);

-- Check shirts table
SELECT * FROM shirts;

-- Add auto_increment to shirt_id column
ALTER TABLE shirts
MODIFY shirt_id INT AUTO_INCREMENT PRIMARY KEY;

-- 2. Add a new shirt, purple polo shirt, size M last worn 50 days ago
INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('polo shirt', 'purple', 'M', 50);

-- Check shirts table for updated data
SELECT * FROM shirts;

-- 3. SELECT all shirts but only print out article and color
SELECT article, color FROM shirts;

-- 4. SELECT all medium shirts and print out everything but shirt_id
SELECT article "Clothing Article", color "Color" , shirt_size "Shirt Size" , last_worn "Days Since Worn"
FROM shirts
WHERE shirt_size = 'M';

-- Correct typo for shirt_size for shirt_id 8 change from S to M
UPDATE shirts
SET shirt_size = 'M'
WHERE shirt_id = 8; 

-- Check shirts table for updated data
SELECT * FROM shirts;

-- 5. Update all polo shirts Change their size to L
UPDATE shirts
SET shirt_size = 'L'
WHERE article = 'polo shirt'; 

-- Check shirts table for updated data
SELECT * FROM shirts;

-- 6. Update the shirt last worn 15 days ago change last_worn to zero ('0')
UPDATE shirts
SET last_worn = 0
WHERE last_worn = 15; 

-- Check shirts table for updated data
SELECT * FROM shirts;

-- 7. Update all white shirts and change size to 'XS' and color to 'off white'
UPDATE shirts
SET color = 'off white', shirt_size = 'XS'
WHERE color = 'white';

-- Check shirts table for updated data
SELECT * FROM shirts;

-- 8. Delete all old shirts that were last worn 200 days ago
DELETE FROM shirts WHERE last_worn >= 200;

-- Check shirts table for updated data
SELECT * FROM shirts;

-- 9. Delete all tank tops. Your tastes have changed...
DELETE FROM shirts WHERE article = 'tank top'; 

-- Check shirts table for updated data
SELECT * FROM shirts;

-- 10. Delete all shirts. You are doing some major spring cleaning!
DELETE FROM shirts;

-- Check shirts table for updated data
SELECT * FROM shirts;

-- 11. Drop the entire shirts table. Scraping everything... you must be rich or something!
DROP TABLE shirts; 

-- Check shirts table for updated data
SELECT * FROM shirts;
 

