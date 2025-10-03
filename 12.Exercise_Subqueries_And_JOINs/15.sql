SELECT
	COUNT(*) as countries_without_mountains
FROM 
	countries
LEFT JOIN 
	mountains_countries
USING 
	(country_code)
WHERE 
	mountains_countries.mountain_id IS NULL;
	