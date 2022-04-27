CREATE TABLE personal_details (
	pi_id INTEGER PRIMARY KEY NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	dob DATE NOT NULL,
	email VARCHAR(100) NOT NULL,
	gender VARCHAR(10)
);

CREATE TABLE transact (
	trans_id INTEGER PRIMARY KEY NOT NULL,
	purchase_price INTEGER,
	first_home VARCHAR(3)
);

