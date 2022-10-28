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
	name;

INSERT INTO cities (name, rating, country_id)
VALUES ('${name}', ${rating}, ${countryId});

SELECT
	cit.city_id,
	cit.name as city,
	cit.rating,
	cou.country_id,
	cou.name as country
FROM
	cities 				cit
	LEFT JOIN countries cou ON cit.country_id = cou.country_id;
ORDER BY
	cit.rating DESC,
	cit.name;

DELETE FROM
	cities
WHERE
	city_id = ${req.params.id};

INSERT INTO
	cities (name, rating, country_id)
VALUES
	('Salt Lake City', 3, 187),
	('Seoul', 4, 163),
	('Kyoto', 4, 86)