SELECT 
	id, 
	first_name || ' ' || last_name AS "Full name", 
	job_title AS "Job Title"

FROM employees;