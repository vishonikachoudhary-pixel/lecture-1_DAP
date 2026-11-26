-- The case of ITC for investing the data base and creating the tables - 

CREATE TABLE distributions(
  distributors_id INTEGER PRIMARY KEY,
  NAME            TEXT NOT NULL,
  city            TEXT,
  region          TEXT,
  phone           TEXT
  );
  
 -- dropping the table-----
 DROP TABLE distributions;
 
 -- create another table name products--
 -- create a table name products with following information: product name, product id, brand, product category, price and stock 
 CREATE TABLE products (
 Product_name     TEXT NOT NULL UNIQUE, 
 Product_id       INTEGER UNIQUE,
 Brand            TEXT NOT NULL,
 product_category TEXT  NOT NULL,
 price             REAL CHECK ( price > 0),
 stock            INTEGER  NOT NULL
);

-- create another table name sales----

CREATE TABLE sales (
  sale_id  INTEGER PRIMARY KEY,
  product_id INTEGER,
  distributors_id INTEGER,
  sale_date TEXT,
  quantity INTEGER CHECK (quantity>0),
  amount REAL,
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (distributors_id) REFERENCES distributors(distributors_id)
  );
  
 