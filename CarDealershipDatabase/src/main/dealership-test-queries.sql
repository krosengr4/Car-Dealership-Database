-- Car Dealership Test Scripts
use car_dealership_db;

-- Question 1
SELECT * from dealerships;

-- Question 2
SELECT vehicles.make, vehicles.model, vehicles.color, vehicles.vin, dealership_id from vehicles
right join inventory 
on inventory.dealership_id = dealership_id
where dealership_id = (SELECT dealership_id from dealerships
	where dealership_name like "%Codeo%");
    
-- Question 3
SELECT * from vehicles
where vin = 266547;

-- Question 4
SELECT * from dealerships
left join inventory 
on inventory.vin = vin
where vin = 44901;


SELECT * from vehicles;
SELECT * from inventory;
SELECT * from dealerships;

use northwind;

SELECT orders.OrderID, orders.OrderDate, orders.ShipName, orders.ShipAddress, ProductID, ProductName from orders
left join `order details` on 
`order details`.ProductID = ProductID
where ProductID = (SELECT ProductID from products
		where ProductName = "Sasquatch Ale");
        
SELECT * FROM orders;
SELECT * from products;
SELECT * from `order details`;