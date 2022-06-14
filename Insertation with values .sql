CREATE TABLE customers (
  customer_id int NOT NULL,
  first_name varchar(255),
  last_name varchar(255),
  email_address varchar(255) ,
  nuumber_of_compliants int,
  PRIMARY KEY (customer_id)
  );
ALTER TABLE 
CHANGE COLUMN number_of_compliants number_of_compliants INT DEFAULT 0;

INSERT INTO customers (first_name, last_name, gender)
VALUES ('Peter', 'Figaro' , 'M')
;