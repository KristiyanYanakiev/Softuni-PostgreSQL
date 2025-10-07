CREATE OR REPLACE FUNCTION fn_difficulty_level(
	difficulty_level INT
)
RETURNS VARCHAR(50)


AS 
$$
DECLARE 
	res VARCHAR(50);
BEGIN
	IF difficulty_level <= 40 THEN res := 'Normal Difficulty';
	ELSIF difficulty_level >= 41 AND difficulty_level <= 60 THEN res := 'Nightmare Difficulty';
	ELSE res:= 'Hell Difficulty';
	END IF;
	RETURN res;
END;
$$

LANGUAGE plpgsql;
