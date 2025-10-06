CREATE OR REPLACE FUNCTION fn_count_employees_by_town(town_name VARCHAR)
RETURNS INT AS

$$
BEGIN 
	RETURN (
		SELECT 
			COUNT(*) 
		FROM 
			towns
		JOIN 
			addresses
		USING 
			(town_id)
		JOIN 
			employees
		USING
			(address_id)
		WHERE 
			towns.name = town_name
			
	
	);
END;
$$
LANGUAGE plpgsql;