CREATE TABLE customers(
	id INTEGER PRIMARY KEY,
	name TEXT
);


CREATE TABLE bartenders(
	id INTEGER PRIMARY KEY,
	name TEXT, 
	customer_id INTEGER,
	drink_id INTEGER
);


CREATE TABLE drinks(
	id INTEGER PRIMARY KEY,
	name TEXT,
	ingredient_1_id INTEGER,
	ingredient_2_id INTEGER, 
	ingredient_3_id INTEGER, 
	price INTEGER
);

CREATE TABLE ingredients(
	id INTEGER PRIMARY KEY,
	name TEXT,
	cost INTEGER
);

def statement_name
	sql_statment = <<-SQL
		SELECT * FROM projects 
		WHERE projects.name = 'build drones'
	SQL
end


# customers with most revenue




	SELECT customers.name, SUM(drinks.price) AS total_bill FROM bartenders JOIN customers 
	ON customers.id = bartenders.customer_id JOIN drinks ON drinks.id = bartenders.drink_id 
	GROUP BY bartenders.customer_id ORDER BY total_bill DESC LIMIT 1;


	SELECT bartenders.name, SUM(drinks.price) AS total_bill FROM bartenders JOIN drinks 
	ON drinks.id = bartenders.drink_id GROUP BY bartenders.name ORDER BY total_bill DESC LIMIT 1;

	cost of each drink

	SELECT SUM(ingredients.cost) AS cost FROM drinks JOIN ingredients 
	ON drinks.ingredient_1_id = ingredients.id JOIN





-- CREATE TABLE customers(
-- 	id INTEGER PRIMARY KEY,
-- 	name TEXT
-- );


-- CREATE TABLE bartenders(
-- 	id INTEGER PRIMARY KEY,
-- 	name TEXT, 
-- 	customer_id INTEGER,
-- 	drink_id INTEGER
-- );


-- CREATE TABLE drinks(
-- 	id INTEGER PRIMARY KEY,
-- 	name TEXT,
-- 	ingredient_1_id INTEGER,
-- 	ingredient_2_id INTEGER, 
-- 	ingredient_3_id INTEGER, 
-- 	price INTEGER
-- );

-- CREATE TABLE ingredients(
-- 	id INTEGER PRIMARY KEY,
-- 	name TEXT,
-- 	cost INTEGER
-- );

INSERT INTO ingredients (name, cost) VALUES ('gin', 5), ('vodka', 5), ('OJ', 3), ('tonic', 2), ('gingerbeer', 4), ('lime', 1)


INSERT INTO customers (name) VALUES ('Lauren'), ('Jeff'), ('Snigdha'), ('Meryl');

INSERT INTO drinks (name, ingredient_1_id, ingredient_2_id, ingredient_3_id, price) VALUES ('gin & tonic', 1, 4, NULL, 13), ('Screwdriver', 2,3,NULL, 13), ('Moscow Mule', 5,2,6,17);

-- INSERT INTO bartenders (name, customer_id, drink_id) VALUES ('blonde', 2, 1), ('brunette', 2, 3), ('blonde', 1, 2), ('cute guy', 3, 2), ('tattoo guy', NULL, NULL);


