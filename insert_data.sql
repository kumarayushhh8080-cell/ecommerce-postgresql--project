INSERT INTO customers(name,email,city)
VALUES('Amit Sharma','amit@gmail.com','Delhi'),
      ('Priya verma','priya@gmail.com','Lucknow'),
	  ('Rahul Singh','rahul@gmail.com','Varanasi');

INSERT INTO products(product_name,category,price)
VALUES('Laptop','Electronics',55000),
	  ('Headphones','Electronics',2000),
	  ('Shoes','Fahion',3000);
INSERT INTO orders(customer_id,order_date)
VALUES(1,'2025-1-10'),
      (2,'2025-3-15'),
      (3,'2026-1-20');
INSERT INTO order_details(order_id,product_id,quantity)
VALUES(1,1,1),
      (1,2,2),
      (2,3,1),
      (3,2,3);
