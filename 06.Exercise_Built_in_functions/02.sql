CREATE VIEW view_continents_countries_currencies_details
AS

SELECT 
	CONCAT(con.continent_name, ': ', con.continent_code) AS continent_details,
	
	CONCAT(cou.country_name, ' - ', cou.capital, ' - ', 
	area_in_sq_km, ' - ', 'km2') AS country_information, 
	
	CONCAT(cu.description, ' ', '(', cu.currency_code, ')', ' ') AS currencies
	
FROM 
	continents as con
JOIN 
	countries as cou
ON 
	con.continent_code = cou.continent_code
JOIN 
	currencies as cu
ON
	cou.currency_code = cu.currency_code

ORDER BY 
	country_information ASC,
	currencies ASC;
	
	