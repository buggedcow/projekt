--CREATE DATABASE customer_order_db;
DROP TABLE IF EXISTS customer_floorplan;
DROP TABLE IF EXISTS customer_components;
DROP TABLE IF EXISTS customer_data;
DROP TABLE IF EXISTS customer_component_relations

CREATE TABLE customer_data
(
	customer_id INT PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	company_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL UNIQUE,
	company_streetname VARCHAR(255) NOT NULL,
	company_district VARCHAR(255) NOT NULL,
	company_country VARCHAR(255) NOT NULL,
	userlogin VARCHAR(255) NOT NULL UNIQUE,
);

CREATE TABLE customer_components
(
	component_id INT PRIMARY KEY,
	product_number INT,
	distributor VARCHAR(255),
	purchase_price FLOAT NOT NULL,
	selling_price FLOAT NOT NULL
);

CREATE TABLE customer_floorplan
(
	floorplan_id INT PRIMARY KEY,
	squaremeters FLOAT NOT NULL,
	rooms FLOAT NOT NULL,
	customer_id INT,
	FOREIGN KEY (customer_id) REFERENCES
	customer_data(customer_id)
);

CREATE TABLE customer_components_relations
(
	relation_id INT,
	customer_id INT,
	component_id INT,
	FOREIGN KEY (customer_id) REFERENCES
	customer_data(customer_id),
	FOREIGN KEY (component_id) REFERENCES
	customer_components(component_id)
);

