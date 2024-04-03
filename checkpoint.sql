CREATE TABLE CUSTOMER (
    Customer_id VARCHAR(20) PRIMARY KEY,
    Customer_name VARCHAR(20)NOT NULL,
    Customer_tel NUMBER
)

CREATE TABLE PRODUCT (
    Product_id VARCHAR(20) PRIMARY KEY,
    Product_name VARCHAR(20) NOT NULL,
    Price NUMBER CHECK (PRICE>0)
    )

 CREATE TABLE orders (
    Customer_id VARCHAR2(20) ,
    Product_id  VARCHAR2(20) ,
    Quantity Number,
    Totale_Amount NUMBER,
    constraint fk1 FOREIGN KEY (Customer_id) REFERENCES CUSTOMER (Customer_id),
    constraint fk2 FOREIGN KEY (product_id) REFERENCES product (product_id) 


)
 -- adding category colum to product
 ALTER TABLE PRODUCT ADD CATEGORY VARCHAR(20)
 --adding orderDate to orders 
 ALTER TABLE ORDERS ADD OrderDate DATE DEFAULT SYSDATE 
