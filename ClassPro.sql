CREATE TABLE CUSTOMER
(	
	Customer_Name        VARCHAR2(20) NOT NULL ,
	Customer_Address     VARCHAR2(80) NOT NULL ,
	Customer_Email       VARCHAR2(50) NOT NULL ,	
	Customer_BirthDate   DATE NOT NULL ,
	Customer_ID          NUMBER(7) NOT NULL PRIMARY KEY 
);


CREATE TABLE ORDERS
(
	Date_Order           DATE NOT NULL ,
	Delivery_Address     VARCHAR2(80) NOT NULL ,
	Delivery_ContactNo   INTEGER NOT NULL ,
	Order_No             NUMBER(20) NOT NULL PRIMARY KEY,
	Customer_ID          NUMBER(7) NOT NULL,
  order_status         VARCHAR2(7) NOT NULL

);

ALTER TABLE ORDERS
ADD CONSTRAINT fk_customer
  FOREIGN KEY(Customer_ID)
  REFERENCES CUSTOMER(Customer_ID);

CREATE TABLE  PRODUCT
(
	Product_Description  VARCHAR2(30) NOT NULL ,
	Unit_SellingPrice    NUMBER(7,2) NOT NULL ,
	Unit_CostPrice       NUMBER(7,2) NOT NULL ,
  Product_Code         NUMBER(20) NOT NULL PRIMARY KEY,
	Supplier_ID          NUMBER(20) NOT NULL,
	Batch_ID             NUMBER(20) NOT NULL
  
);

ALTER TABLE Product
ADD CONSTRAINT fk_SUPPLIER
  FOREIGN KEY (Supplier_ID)
  REFERENCES SUPPLIER(Supplier_ID);

CREATE TABLE PRODUCT_ORDERS
(
	Quantity             INTEGER NOT NULL ,
  Product_Description  VARCHAR2(30) NOT NULL ,
	Product_Code         NUMBER(20) NOT NULL,
	Order_No             NUMBER(20) NOT NULL
  );
  
ALTER TABLE PRODUCT_ORDERS
ADD CONSTRAINT fk_product
  FOREIGN KEY(Product_Code)
  REFERENCES Product(Product_Code);
  
  
  CREATE TABLE SUPPLIER
(
	Supplier_Name        VARCHAR2(25) NOT NULL ,
	Supplier_Address     VARCHAR2(80) NOT NULL ,
	Supplier_ID          NUMBER(20) NOT NULL PRIMARY KEY
);

CREATE TABLE Computer
(
	order_no         NUMBER(20) NOT NULL,
	batch_id      NUMBER(20) NOT NULL PRIMARY KEY,
  del_date       date not null
);
ALTER TABLE computer
ADD CONSTRAINT fk_staff1
  FOREIGN KEY (staffID)
  REFERENCES staff(StaffID);
  
  
  CREATE TABLE Staff
(	
	FName        VARCHAR2(20) NOT NULL ,
  SName        VARCHAR2(20) NOT NULL ,
	StaffID     number NOT NULL primary key
	
);
