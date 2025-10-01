ALTER TABLE countries_rivers

ADD CONSTRAINT 
	countries_countries_rivers_fk
FOREIGN KEY
	(river_id)
REFERENCES 
	rivers(id)
ON UPDATE CASCADE;


ALTER TABLE countries_rivers

ADD CONSTRAINT 
	countries_countries_rivers_country_code_fk
FOREIGN KEY
	(country_code)
REFERENCES 
	countries(country_code)
ON UPDATE CASCADE;
