SELECT * from vehicles;
SELECT * from inventory;
SELECT * from dealerships;
SELECT * from sales_contract;


-- Car Dealership Test Scripts
use car_dealership_db;

-- Question 1
SELECT * from dealerships;

-- Question 2
SELECT vehicles.make, vehicles.model, vehicles.color, vehicles.vin, dealership_id from vehicles
left join inventory 
on inventory.vin = vehicles.vin
where inventory.dealership_id = (SELECT dealership_id from dealerships
	where dealership_name like "Codeo Cars");
    
-- Question 3
SELECT * from vehicles
where vin = 266547;

-- Question 4
SELECT dealerships.dealership_id, dealerships.dealership_name, vin from dealerships
left join inventory
on inventory.dealership_id = dealerships.dealership_id
where vin = (SELECT vin from vehicles
	where vin = 10112);
    
-- Question 5
SELECT dealerships.dealership_id, dealerships.dealership_name, vin from dealerships
left join inventory
on inventory.dealership_id = dealerships.dealership_id
where vin = (SELECT vin from vehicles 
	where color = "blue" and make = "Audi" and model = "R8");
    
-- Question 6
SELECT sales_contract.*, dealerships.dealership_id from sales_contract
inner join dealerships
on sales_contract.dealership_id = dealerships.dealership_id
where contract_date like "2021%";