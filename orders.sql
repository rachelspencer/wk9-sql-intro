-- In the orders.sql file, write out the code for the following problems:

-- 1. Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
  orders_id SERIAL PRIMARY KEY,
  person_id varchar(50) NOT NULL,
  product_name varchar(80),
  product_price INTEGER,
  quantity INTEGER
  );

-- 2. Add 5 orders to the orders table.
INSERT INTO orders (person_id, product_name, product_price, quantity)
  VALUES ('Misty', 'fish plate', 10, 4),
  ('Rachel', 'sushi', 8, 10),
  ('Chris', 'bao bun', 4, 24),
  ('Ali', 'edamame', 3, 15),
  ('Charlee', 'chicken broth', 2, 20);

-- 3. Make orders for at least two different people.

-- 4. person_id should be different for different people.

-- 5. Select all the records from the orders table.
SElECT * FROM orders

-- 6. Calculate the total number of products ordered.
SElECT SUM(product_price) FROM orders

-- 7. Calculate the total order price.
SElECT SUM(product_price * quantity) FROM orders

-- 8. Calculate the total order price by a single person_id
SElECT SUM(product_price * quantity) FROM orders
WHERE person_id = 'Misty';