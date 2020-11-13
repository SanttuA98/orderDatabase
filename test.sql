
CREATE TABLE CUSTOMER ( 
    CUSTOMERID INT NOT NULL PRIMARY KEY,
    COMPANY VARCHAR(100) NOT NULL,
    FORENAME VARCHAR(100), 
    SURNAME VARCHAR(100), 
    ADDRESS VARCHAR(100) NOT NULL);

CREATE TABLE STORAGE ( 
    STORAGELOCATION INT NOT NULL PRIMARY KEY,
    CAPACITY INT NOT NULL);

CREATE TABLE DELIVERY ( 
    MAXWEIGHT INT NOT NULL,
    MAXSIZE INT NOT NULL, 
    DELIVERY_DATE DATE NOT NULL, 
    DELIVERY_ADDRESS VARCHAR(100) NOT NULL,
    DELIVERYID INT NOT NULL PRIMARY KEY,
  	ORDERID INT NOT NULL);

CREATE TABLE ORDERS ( 
    ORDERDATE DATE NOT NULL,
    ORDERID INT NOT NULL PRIMARY KEY,
  	PRODUCTID INT NOT NULL,
  	DELIVERYID INT NOT NULL,
  	CUSTOMERID INT NOT NULL,
    FOREIGN KEY (DELIVERYID) REFERENCES DELIVERY (DELIVERYID),
    FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMER (CUSTOMERID));



CREATE TABLE PRODUCT ( 
  	PRODUCTID INT NOT NULL PRIMARY KEY, 
    PRODUCTNAME VARCHAR(100) NOT NULL,
    PRICE INT NOT NULL, 
    QUANTITY INT NOT NULL, 
    SIZE INT NOT NULL,
    WEIGHT INT NOT NULL,
  	ORDERID INT NOT NULL,
  	STORAGELOCATION INT NOT NULL,
    FOREIGN KEY (ORDERID) REFERENCES ORDERS (ORDERID),
    FOREIGN KEY (STORAGELOCATION) REFERENCES STORAGE (STORAGELOCATION));


CREATE TABLE orderProduct(
    PRODUCTID INT NOT NULL,
    ORDERID INT NOT NULL,
    FOREIGN KEY (PRODUCTID) REFERENCES PRODUCT (PRODUCTID),
    FOREIGN KEY (ORDERID) REFERENCES ORDERS (ORDERID));

  CREATE TABLE customerDelivery(
    CUSTOMERID INT NOT NULL,
    DELIVERYID INT NOT NULL,
    FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMER (CUSTOMERID),
    FOREIGN KEY (DELIVERYID) REFERENCES DELIVERY (DELIVERYID));