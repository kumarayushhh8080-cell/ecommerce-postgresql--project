CREATE TABLE customers(
	 customer_id SERIAL PRIMARY KEY,
	 name VARCHAR(100),
	 email VARCHAR(100) UNIQUE,
	 city VARCHAR(50)
);
----- Products Table
CREATE TABLE products(
		product_id SERIAL PRIMARY KEY,
		product_name VARCHAR(100),
		category VARCHAR(100),
		price DECIMAL(10,2)
);
---- Orders Table
CREATE TABLE orders(
	order_id SERIAL PRIMARY KEY,
	customer_id INT REFERENCES customers(customer_id),
	order_date DATE
);
----- Order Details Table
CREATE TABLE order_details(
	order_detail_id SERIAL PRIMARY KEY,
	order_id INT REFERENCES orders(order_id),
	product_id INT REFERENCES products(product_id),
	quantity INT
);