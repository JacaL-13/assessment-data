CREATE TABLE cities (
	city_id serial PRIMARY KEY,
	name varchar(255) NOT NULL,
	rating int NOT NULL,
	country_id int NOT NULL
);

SELECT *
FROM countries
ORDER BY
	CASE
		WHEN country_id = 187 THEN 1
		ELSE 2
	END,
	name

INSERT INTO cities (name, rating, country_id)
VALUES ('${name}', ${rating}, ${countryId})