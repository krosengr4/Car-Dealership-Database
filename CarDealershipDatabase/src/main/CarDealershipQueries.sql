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
    yearMade int,
    make varchar(30),
    model varchar(30),
    color varchar(30),
    vehicleType varchar(30),
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
    
    
