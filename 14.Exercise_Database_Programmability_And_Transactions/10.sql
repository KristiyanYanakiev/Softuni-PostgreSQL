CREATE OR REPLACE PROCEDURE sp_transfer_money(
	sender_id INT, 
	receiver_id INT,
	amount NUMERIC(4)
)

AS 
$$
 
	
BEGIN
	IF (SELECT balance  from accounts WHERE id = sender_id) - amount < 0 THEN 
		RETURN;
	END IF;
	
	CALL sp_withdraw_money(sender_id, amount);
	CALL sp_deposit_money(receiver_id, amount);
END;
$$

LANGUAGE plpgsql;