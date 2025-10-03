SELECT
	MIN(avg_area) min_average_area
FROM 
	(SELECT 
	AVG(area_in_sq_km) as avg_area
FROM 
	countries
GROUP BY
	continent_code) as subquery 
