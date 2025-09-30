SELECT 
 	c.id as driver_id,
	v.vehicle_type,
	CONCAT (c.first_name, ' ', c.last_name) AS driver_name
	 
	 
 FROM 
 	campers as c
JOIN 
	vehicles AS v
ON 
	c.id = v.driver_id