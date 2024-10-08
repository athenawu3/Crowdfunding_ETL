CREATE TABLE category(
	category_id VARCHAR(20) PRIMARY KEY,
	category VARCHAR(20) NOT NULL
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR(20) PRIMARY KEY,
	subcategory VARCHAR(20) NOT NULL
);

CREATE TABLE contacts(
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL
);

CREATE TABLE campaign(
	cf_id INT PRIMARY KEY,
	contact_id INT NOT NULL,
	company_name VARCHAR (50) NOT NULL,
	description VARCHAR NOT NULL,
	goal REAL NOT NULL,
	pledged REAL NOT NULL,
	outcome VARCHAR (50) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(5) NOT NULL,
	currency VARCHAR(5) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(20) NOT NULL,
	subcategory_id VARCHAR(20) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);