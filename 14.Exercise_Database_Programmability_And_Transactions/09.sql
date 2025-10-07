CREATE OR REPLACE PROCEDURE sp_withdraw_money(
	account_id INT, 
	money_amount NUMERIC(4)
)

AS 
$$
 
	
BEGIN
	IF (SELECT balance  from accounts WHERE id = account_id) - money_amount < 0 THEN 
		RETURN;
	END IF;
	
	UPDATE 
		accounts 
	SET 	
		balance = balance - money_amount
	WHERE 
		id = account_id;
END;
$$

LANGUAGE plpgsql;