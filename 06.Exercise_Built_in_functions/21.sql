ALTER TABLE 
	bookings
ADD column 
	billing_day TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP;

SELECT 
	to_char(billing_day,  'DD "Day" MM "Month" YYYY "Year" HH24:MI:SS') AS "Billing Day"
FROM 
	bookings;
