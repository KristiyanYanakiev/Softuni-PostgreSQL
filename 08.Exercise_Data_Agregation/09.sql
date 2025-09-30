SELECT 
	last_name, 
	COUNT(notes) AS count_notes
FROM 
	wizard_deposits
WHERE 
	notes LIKE '%Dumbledore%'
GROUP BY
	last_name