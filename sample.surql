<foo> $user;

-- Define the parameter
LET $name = "tobie";
-- Use the parameter
CREATE person SET name = $name;

-- Storing Query Results
-- Define the parameter
LET $adults = (SELECT * FROM person WHERE age > 18);
-- Use the parameter
UPDATE $adults SET adult = true;

BEGIN TRANSACTION;
CREATE account:one SET balance = 135605.16;
CREATE account:two SET balance = 91031.31;
UPDATE account:one SET balance += 300.00;
UPDATE account:two SET balance -= 300.00;
COMMIT TRANSACTION;


CREATE person:100 CONTENT {
	name: 'Tobie',
	bar: NULL,
	company: 'SurrealDB',
	skills: ['Rust', 'Go', 'JavaScript'],
};

-- Note: meta::tb(id) returns just the table name portion of a record ID
CREATE townsperson SET
    created_at = time::now(),
    name = "Just a " + meta::tb(id);
