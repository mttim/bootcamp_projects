

-- dimension
CREATE TABLE types (
  type_id INT UNIQUE,
  type_name TEXT,
  PRIMARY KEY(type_id));


INSERT INTO types VALUES
  (1, 'dine-in'),
  (2, 'delivery'),
  (3, 'pick-up');


-- dimension
CREATE TABLE categories (
  ct_id INT NOT NULL PRIMARY KEY,
  ct_name TEXT);

INSERT INTO categories values
  (1, 'food'),
  (2, 'appetiser'),
  (3, 'drink');

-- dimension
CREATE TABLE items (
  menu_id INT NOT NULL PRIMARY KEY,
  menu_name TEXT,
  price REAL,
  ct_id INT NOT NULL references categories(ct_id));


INSERT INTO items VALUES 
  (1, 'pork steak', 120, 1),
  (2, 'beef steak', 300, 1),
  (3, 'pasta', 150, 1),
  (4, 'soup', 80, 2),
  (5, 'bread stick', 100, 2),
  (6, 'salad', 100, 2),
  (7, 'french fries', 110, 2),
  (8, 'soft drinks', 40, 3),
  (9, 'smoothies', 120, 3),
  (10, 'beer', 180, 3),
  (11, 'wine', 2100, 3),
  (12, 'mocktail', 330, 3),
  (13, 'mineral water', 80, 3);


-- dimension
CREATE TABLE customers (
  customer_id TEXT NOT NULL PRIMARY KEY,
  firstname TEXT,
  lastname TEXT,
  country TEXT,
  phone INT,
  email TEXT);

INSERT INTO customers values
  (01, 'Taeyeon', 'Kim', 'Korea', 0999999999, 'kim.taeyeon@snsd.kr'),
  (02, 'Jessica', 'Jung', 'USA', 0222222222, 'jung.jessica@snsd.kr'),
  (03, 'Sunny', 'Lee', 'Korea',  0151515151, 'lee.sunny@snsd.kr'),
  (04, 'Tiffany', 'Hwang', 'USA', 0111111111, 'hwang.tiffany@snsd.kr'),
  (05, 'Hyoyeon', 'Kim', 'Korea', 0232323232, 'kim.hyoyeon@snsd.kr'),
  (06, 'Yuri', 'Kwon', 'Korea', 0555555555, 'kwon.yuri@snsd.kr'),
  (07, 'Sooyoung', 'Choi', 'Korea', 0101010101, 'choi.sooyoung@snsd.kr'),
  (08, 'Yoona', 'Im', 'Korea', 0313131313, 'im.yoona@snsd.kr'),
  (09, 'Juhyun', 'Seo', 'Korea', 0282828282, 'seo.juhyun@snsd.kr'),
  (10, 'Irene', 'Bae', 'Korea', 0292929292, 'bae.irene@rv.kr'),
  (11, 'Tanawan', 'M', 'Thailand', 0936655965, 'tanawan.metachuchok@gmail.com'),
  (12, 'Monthira', 'T', 'Thailand', 0644207484, 'monthira.taengpoo@gmail.com');



-- fact
CREATE TABLE orders (
  order_id TEXT NOT NULL PRIMARY KEY,
  order_date DATE,
  customer_id INT NOT NULL REFERENCES  customers(customer_id),
  menu_id INT NOT NULL REFERENCES items(menu_id),
  type_id INT NOT NULL REFERENCES types(type_id),
  amount INT);



INSERT INTO orders values
  ('001', '2022-08-06', 1, 2, 3, 5),
  ('002', '2022-08-06', 5, 3, 2, 3),
  ('003', '2022-08-07', 4, 8, 1, 10),
  ('004', '2022-08-07', 12, 5, 1, 3),
  ('005', '2022-08-07', 12, 1, 1, 2),
  ('006', '2022-08-08', 10, 3, 3, 3),
  ('007', '2022-08-08', 10, 7, 3, 1),
  ('008', '2022-08-08', 10, 13, 3, 4),
  ('009', '2022-08-09', 2, 2, 2, 2),
  ('010', '2022-08-09', 2, 1, 2, 2),
  ('011', '2022-08-09', 2, 3, 2, 2),
  ('012', '2022-08-09', 2, 6, 2, 2),
  ('013', '2022-08-09', 2, 10, 2, 2);





-- number of customers who pick-up their food at the restaurant
-- subquery WITH
WITH sub AS (
SELECT 
  orders.order_id,
  orders.order_date,
  orders.menu_id,
  types.type_id,
  types.type_name
FROM orders
 JOIN types
ON orders.type_id = types.type_id)

SELECT 
  COUNT(*) AS pick_up
  FROM sub
WHERE type_name = 'pick-up';



-- show customers who spended more than 400 THB 
SELECT 
  orders.order_id,
  orders.order_date,
  orders.customer_id,
  customers.firstname||' '||customers.lastname AS fullname,
  items.menu_name,
  (orders.amount * items.price) AS total_price 
  
FROM orders
LEFT JOIN items 
ON orders.menu_id = items.menu_id
LEFT JOIN categories
ON categories.ct_id = items.ct_id
LEFT JOIN customers
ON customers.customer_id = orders.customer_id

WHERE total_price > 400
ORDER BY total_price;



-- show information of customers who live in Korea group by customers and order by order date
SELECT  
  orders.order_id,
  orders.order_date,
  orders.amount,
  customers.customer_id,
  customers.firstname|| ' ' || lastname AS fullname,
  customers.country,
  customers.phone,
  customers.email
FROM orders
LEFT JOIN customers 
ON customers.customer_id = orders.customer_id
WHERE lower(country) = 'korea'
GROUP BY customers.customer_id
ORDER BY order_date;



-- show amount of sold menus from top to low.
SELECT 
  orders.order_id,
  orders.order_date,
  orders.customer_id,
  customers.firstname||' '||customers.lastname AS fullname,
  items.menu_id,
  items.menu_name,
  SUM(orders.amount) AS total_amount,
  (orders.amount * items.price) AS total_price 
  
FROM orders
LEFT JOIN items 
ON orders.menu_id = items.menu_id
LEFT JOIN categories
ON categories.ct_id = items.ct_id
LEFT JOIN customers
ON customers.customer_id = orders.customer_id
GROUP BY orders.amount
ORDER BY total_amount DESC;

