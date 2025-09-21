SELECT 
	CONCAT(m.mountain_range, ' ', p.peak_name), 
	LENGTH(CONCAT(m.mountain_range, ' ', p.peak_name)) AS characters_length,
	BIT_LENGTH(CONCAT(m.mountain_range, ' ', p.peak_name)) AS bits_of_a_tring
FROM 
	mountains as m
JOIN 
	peaks as p
ON
	m.id = p.mountain_id;
