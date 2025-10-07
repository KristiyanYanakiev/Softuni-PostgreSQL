CREATE OR REPLACE FUNCTION fn_is_word_comprised(
	set_of_letters VARCHAR(50),
	word VARCHAR(50)
)

RETURNS BOOLEAN
AS
$$
DECLARE 
	i INT;
	ch CHAR(1);
BEGIN
	  FOR i in 1..length(word) LOOP
	  	ch := LOWER(SUBSTR(word, i, 1));
		IF POSITION(ch IN LOWER(set_of_letters)) = 0 THEN 
			RETURN FALSE;
		END IF;
		END LOOP;
	  	
	RETURN TRUE;
END;
$$
LANGUAGE plpgsql;
