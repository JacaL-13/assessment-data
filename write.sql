CREATE TABLE cities (
	city_id serial PRIMARY KEY,
	name varchar(255) NOT NULL,
	rating int NOT NULL,
	country_id int NOT NULL
);

SELECT *
FROM countries