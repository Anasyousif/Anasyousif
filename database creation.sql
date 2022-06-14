CREATE TABLE customers (
customer_id INT, 
first_name VARCHAR(255),
last_name VARCHAR(255), 
email_address VARCHAR(255), 
nuumber_of_compliants INT, 
PRIMARY KEY (customer_id), 
UNIQUE KEY (email_address)
);

DROP TABLE customer; 

CREATE TABLE customers (
customer_id INT, 
first_name VARCHAR(255),
last_name VARCHAR(255), 
email_address VARCHAR(255), 
nuumber_of_compliants INT, 
PRIMARY KEY (customer_id)
);
ALTER TABLE customers 
ADD UNIQUE KEY (e-mail_address);

ALTER TABLE customers
DROP INDEX emial_address;