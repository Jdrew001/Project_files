/*Create all the tables
CREATE TABLE MAJOR
    (majorId number(6) CONSTRAINT pk_mid PRIMARY KEY,
    majorName varchar2(20) CONSTRAINT name_nnull NOT NULL,
    majorDescription varchar2(35),
    department varchar2(20));

*/

CREATE TABLE Customer
    (accountNum number(6) CONSTRAINT pk_anum PRIMARY KEY,
    firstName varchar2(20) NOT NULL,
    lastName varchar2(20) NOT NULL,
    billingAddress varchar2(50) NOT NULL);

/*Put the employee table above this and different kinds of employees*/

CREATE TABLE Orders
    (orderNum number(6) CONSTRAINT pk_num PRIMARY KEY,
    shippingAddress varchar2(50) NOT NULL,
    orderDate Date NOT NULL,
    CONSTRAINT fk_empId FOREIGN KEY (empId) REFERENCES Employee(empId));

CREATE TABLE Purchase
    (CONSTRAINT fk_onum FOREIGN KEY (orderNum) REFERENCES Orders(orderNum),
    CONSTRAINT fk_itemCode FOREIGN KEY (itemCode) REFERENCES Furniture(itemCode),
    extendedPrice number(7,2) not null,
    quantitySold number(3) not null);

CREATE TABLE Furniture
    (itemCode number(6) CONSTRAINT pk_itemC PRIMARY KEY,
    fname varchar2(20) not null,
    unitPrice number(7,2) not null,
    quantity number(5) not null
    );

CREATE TABLE Shipment
    (shipmentId number(6) CONSTRAINT pk_shipment Primary Key,
    shippingDate Date NOT NULL,
    CONSTRAINT fk_onum FOREIGN KEY (orderNum) REFERENCES Orders(orderNum));

CREATE TABLE SalesRep
    ();

CREATE TABLE Driver
    ();

CREATE TABLE Truck
    (vehicleNum number(6) CONSTRAINT pk_vnum Primary Key,
    licenseExpDate Date not null,
    inspectionExpDate Date not null,
    CONSTRAINT fk_ship FOREIGN KEY (shipmentId) REFERENCES Shipment(shipmentId));

CREATE TABLE Employee
    (empId number(6) CONSTRAINT pk_emp Primary Key,
    ssn number(9) NOT NULL,
    firstName varchar2(20) NOT NULL,
    lastName varchar2(20) NOT NULL,
    eAddress varchar2(50),
    phone number(10) NOT NULL,
    salary number(7,2) NOT NULL);

