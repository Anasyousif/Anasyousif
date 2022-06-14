DROP TABLE sales; 
CREATE TABLE sales 
( 
purchase_number INT AUTO_INCREMENT, 
date_of_purchase DATE, 
customer_id INT, 
item_code VARCHAR(10), 
PRIMARY KEY (purchase_number) 
);
ALTER TABLE sales 
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;