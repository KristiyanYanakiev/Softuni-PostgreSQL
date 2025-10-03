SELECT 
	mc.country_code,
	COUNT(mc.mountain_id) as mountain_range_count
FROM 
	mountains_countries as mc
JOIN 
	mountains as m
ON
	mc.mountain_id = m.id

WHERE 
	mc.country_code IN ('BG', 'RU', 'US')
GROUP BY
	mc.country_code
ORDER BY 
	mountain_range_count DESC;