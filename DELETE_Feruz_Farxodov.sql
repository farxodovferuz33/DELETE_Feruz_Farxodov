-- Task 1 : Remove a previously inserted film from the inventory and all corresponding rental records
-- deleted from rental and inventory
DELETE FROM rental
WHERE inventory_id IN (
    SELECT inventory_id
    FROM inventory
    WHERE film_id = 1002
);
DELETE FROM inventory
WHERE film_id = 1002;
DELETE FROM film
WHERE film_id = 1002;




-- Task 2 : Remove any records related to you (as a customer) from all tables except "Customer" and "Inventory"
-- Only removed from payment and rental because there only customer data, and its said that except from Customer and Inventory table
-- thats why didnt delete from these tables
DELETE FROM payment
WHERE customer_id = 1;

DELETE FROM rental
WHERE customer_id = 1;
