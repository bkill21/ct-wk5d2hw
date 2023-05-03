--Add movie info
INSERT INTO movies(
	movie_name,
	rating,
	release_date,
	description,
	movie_length
)VALUES(
	'avengers',
	'PG-13',
	'2023-05-04',
	'yet another avengers movie'
	143
);
-- Add customer info
INSERT INTO customers(
	first_name,
	last_name,
	email,
	customer_age
)VALUES(
	'ben',
	'kill',
	'bkill21@gmail.com',
	26
);
--Add theaters
INSERT INTO theaters(
	seats,
	theater_type 
)VALUES(
	55,
	'IMAX'
);
-- Add concessions items
INSERT INTO concessions(
	item_name,
	item_price,
	item_description,
	customer_id,
	purchase_date
)VALUES(
	'popcorn',
	75.00,
	'overpriced popcorn',
	1,
	'2023-05-04'
);