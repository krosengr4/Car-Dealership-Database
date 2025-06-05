DROP DATABASE car_dealership_db;
CREATE DATABASE car_dealership_db;

use car_dealership_db;

CREATE table dealerships(
	dealership_id int auto_increment,
    name varchar(50),
    address varchar(50),
    phone varchar(12),
    PRIMARY KEY (dealership_id)
    );
    
CREATE table vehicles(
	vehicle_id int,
    vin int NOT NULL,
    year_made int,
    make varchar(30),
    model varchar(30),
    color varchar(30),
    vehicle_type varchar(30),
    odometer int,
    price float,
    sold boolean,
    PRIMARY KEY (vehicle_id)
    );
    
CREATE table inventory(
	inventory_id int auto_increment NOT NULL,
	dealership_id int NOT NULL,
    vin int NOT NULL,
    PRIMARY KEY(inventory_id)
    );
    
CREATE table sales_contract(
	sales_contract_id int auto_increment NOT NULL,
    vin int NOT NULL,
    contract_date varchar(50) NOT NULL,
    customer_name varchar(50) NOT NULL,
    customer_email varchar(50),
    is_financed boolean,
    PRIMARY KEY(sales_contract_id)
    );
    
    
    
