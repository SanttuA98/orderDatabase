INSERT INTO CUSTOMER (COMPANY, FORENAME, SURNAME, ADDRESS) VALUES ('RyoUkot', 'Petteri', 'Kivi', 'Kuja 2');
INSERT INTO CUSTOMER (COMPANY, FORENAME, SURNAME, ADDRESS) VALUES ('RyoUkot', 'Pete', 'Oja', 'Kuja 3');
INSERT INTO CUSTOMER (COMPANY, FORENAME, SURNAME, ADDRESS) VALUES ('Ryoäijät', 'Topi', 'Saha', 'Tie 15');
INSERT INTO DELIVERY (MAXWEIGHT, DELIVERY_DATE, DELIVERY_ADDRESS, CUSTOMERID) VALUES (100, '2020-06-14' , 'Kotikuja 13, 65200 VAASA', 1);
INSERT INTO DELIVERY (MAXWEIGHT, DELIVERY_DATE, DELIVERY_ADDRESS, CUSTOMERID) VALUES (100, '2020-06-16' , 'Kotikuja 54, 65200 VAASA', 1);
INSERT INTO DELIVERY (MAXWEIGHT, DELIVERY_DATE, DELIVERY_ADDRESS, CUSTOMERID) VALUES (150, '2020-02-16' , 'Kotikuja 535, 54533 SEINAJOKI', 1);
INSERT INTO ORDERS (ORDERDATE) VALUES ('2020-04-14');
INSERT INTO ORDERS (ORDERDATE) VALUES ('2020-04-12');
INSERT INTO STORAGES (CAPACITY, PRODUCTNAME) VALUES (5, 'Tuoli');
INSERT INTO STORAGES (CAPACITY, PRODUCTNAME) VALUES (5, 'Kiikku');
INSERT INTO STORAGES (CAPACITY, PRODUCTNAME) VALUES (5, 'Sänky');
INSERT INTO STORAGES (CAPACITY, PRODUCTNAME) VALUES (5, 'Sohva');
INSERT INTO PRODUCT (PRODUCTNAME, PRICE, SIZE, WEIGHT, STORAGELOCATION) VALUES ('Sohva', 900, 80, 1, 4);
INSERT INTO PRODUCT (PRODUCTNAME, PRICE, SIZE, WEIGHT, STORAGELOCATION) VALUES ('Sänky', 800, 90, 2, 3);
INSERT INTO PRODUCT (PRODUCTNAME, PRICE, SIZE, WEIGHT, STORAGELOCATION) VALUES ('Tuoli', 450, 90, 2, 1); 
INSERT INTO PRODUCT (PRODUCTNAME, PRICE, SIZE, WEIGHT, STORAGELOCATION) VALUES ('Kiikku', 620, 90, 2, 2);
INSERT INTO PRODUCT (PRODUCTNAME, PRICE, SIZE, WEIGHT) VALUES ('Jakkara', 50, 90, 2);