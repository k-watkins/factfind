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

CREATE TABLE employer(
	emp_id INTEGER PRIMARY KEY NOT NULL,
	emp_name VARCHAR(50),
	emp_type VARCHAR(50),
);

CREATE TABLE li_type (
	li_type_id INTEGER PRIMARY KEY NOT NULL,
	li_name VARCHAR(50)
);

CREATE TABLE liabilities(
	li_id INTEGER PRIMARY KEY NOT NULL,
	li_type_id INTEGER,
	li_price FLOAT,
	FOREIGN KEY (li_type_id) REFERENCES li_type(li_type_id)
);

CREATE TABLE ass_type (
	ass_type_id INTEGER PRIMARY KEY NOT NULL,
	ass_name VARCHAR(50)
);

CREATE TABLE assets(
	asset_id INTEGER PRIMARY KEY NOT NULL,
	ass_type_id INTEGER,
	asset_amount FLOAT,
	FOREIGN KEY (ass_type_id) REFERENCES ass_type(ass_type_id)
);

CREATE TABLE inc_type (
	inc_type_id INTEGER PRIMARY KEY NOT NULL,
	inc_name VARCHAR(50)
);

CREATE TABLE income(
	income_id INTEGER PRIMARY KEY NOT NULL,
	inc_type_id INTEGER,
	emp_id INTEGER,
	income_amount FLOAT NOT NULL,
	pay_freq VARCHAR(20) NOT NULL,
	date_started DATE NOT NULL,
	FOREIGN KEY (inc_type_id) REFERENCES inc_type(inc_type_id),
	FOREIGN KEY (emp_id) REFERENCES employer(emp_id)
);

CREATE TABLE application(
	app_id INTEGER PRIMARY KEY NOT NULL,
	li_id INTEGER,
	asset_id INTEGER,
	income_id INTEGER,
	pi_id INTEGER,
	trans_id INTEGER,
	FOREIGN KEY (li_id) REFERENCES liabilities(li_id),
	FOREIGN KEY (asset_id) REFERENCES assets(asset_id),
	FOREIGN KEY (income_id) REFERENCES income(income_id),
	FOREIGN KEY (pi_id) REFERENCES personal_details(pi_id),
	FOREIGN KEY (trans_id) REFERENCES transact(trans_id)
);
