drop table if exists sales;
drop table if exists orders;

CREATE table orderstatus (
	id integer(11),
	name varchar(255),
	PRIMARY KEY (id)
	);
	
CREATE table order (
	id integer(11),
	subtotal decimal(12,3),
	tax decimal (12,3),
	shipping decimal(12,3),
	total decimal(12,3),
	order_status integer(11),
	PRIMARY KEY (id),
	FOREIGN KEY (order_status) REFERENCES order_status(id)
	);
	
CREATE table orderitem (
	product_id integer(11),
	order_id integer(11),
	unit_price decimal(12,3),
	quantity integer(11),
	total_price decimal(12,3),
	FOREIGN KEY (product_id) REFERENCES products(product_id),
	FOERIGN KEY (order_id) REFERENCES order(id)
);