-- Basic Parameter Assignment

-- Define the parameter
LET $name = "tobie";
-- Use the parameter
CREATE person SET name = $name;

-- Storing Query Results
-- Define the parameter
LET $adults = (SELECT * FROM person WHERE age > 18);
-- Use the parameter
UPDATE $adults SET adult = true;
