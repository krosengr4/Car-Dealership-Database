DROP DATABASE car_dealership_db;
CREATE DATABASE car_dealership_db;

use car_dealership_db;

CREATE table dealerships(
	dealership_id int auto_increment NOT NULL,
    name varchar(50),
    address varchar(50),
    phone varchar(12),
    PRIMARY KEY (dealership_id)
    );
    
CREATE table vehicles(
	vehicle_id int auto_increment NOT NULL,
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
	dealership_id int NOT NULL,
    vin int NOT NULL,
    PRIMARY KEY(vin)
    );

CREATE table sales_contract(
	sales_contract_id int auto_increment NOT NULL,
    vin int NOT NULL,
    contract_date varchar(50) NOT NULL,
    customer_name varchar(50) NOT NULL,
    customer_email varchar(50),
    is_financed boolean,
    total_price float,
    PRIMARY KEY(sales_contract_id)
    );
    
CREATE table lease_contract(
	lease_contract_id int auto_increment NOT NULL,
    vin int NOT NULL,
    contract_date varchar(50) NOT NULL,
    customer_name varchar(50) NOT NULL,
    customer_email varchar(50),
    monthly_payment float,
    total_price float,
    PRIMARY KEY(lease_contract_id)
    );
    
INSERT INTO dealerships (name, address, phone)
VALUES ("Codeo Cars", "2834 Old Codeo Cv.", "512-685-2489");
INSERT INTO dealerships (name, address, phone)
VALUES ("Dave's Drivin' Dealership", "6548 Automobile Lane", "652-685-4125");
INSERT INTO dealerships (name, address, phone)
VALUES ("Cars Cars Cars", "8946 Old Town Road", "346-673-6795");

INSERT INTO vehicles (vin, year_made, make, model, color, vehicle_type, odometer, price, sold)
VALUES (10112, 1993, "Ford", "Explorer", "Red", "SUV", 525123, 995.0, false);
INSERT INTO vehicles (vin, year_made, make, model, color, vehicle_type, odometer, price, sold)
VALUES (37846, 2001, "Ford", "Ranger", "Yellow", "truck", 172544, 1995.0, false);
INSERT INTO vehicles (vin, year_made, make, model, color, vehicle_type, odometer, price, sold)
VALUES (44901, 2012, "Honda", "Civic", "Gray", "SUV", 103221, 6995.0, false);

INSERT INTO inventory (dealership_id, vin)
VALUES (2, 10112);
INSERT INTO inventory (dealership_id, vin)
VALUES (1, 37846);
INSERT INTO inventory (dealership_id, vin)
VALUES (1, 44901);

    
    
    
    
    
