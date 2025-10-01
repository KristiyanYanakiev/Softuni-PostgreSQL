SELECT 
	e.employee_id, 
	CONCAT(e.first_name, ' ', last_name) as full_name,
	ep.project_id, 
	p.name
	
FROM 
	employees_projects as ep
JOIN
	employees as e
ON 
	ep.employee_id = e.employee_id
JOIN 
	projects as p
ON 
	ep.project_id = p.project_id
	
WHERE 
	ep.project_id = 1