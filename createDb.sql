/*Create all the tables
CREATE TABLE MAJOR
    (majorId number(6) CONSTRAINT pk_mid PRIMARY KEY,
    majorName varchar2(20) CONSTRAINT name_nnull NOT NULL,
    majorDescription varchar2(35),
    department varchar2(20));


    CONSTRAINT fk_major FOREIGN KEY (majorId) REFERENCES Major(majorId)

*/

CREATE TABLE Customer
    (accountNum number(6) CONSTRAINT pk_anum PRIMARY KEY,
    firstName varchar2(20) NOT NULL,
    lastName varchar2(20) NOT NULL,
    billingAddress varchar2(50) NOT NULL);

CREATE TABLE Employee
    (empId number(6) CONSTRAINT pk_emp Primary Key,
    ssn number(9) NOT NULL,
    firstName varchar2(20) NOT NULL,
    lastName varchar2(20) NOT NULL,
    eAddress varchar2(50),
    phone number(10) NOT NULL,
    salary number(7,2) NOT NULL);

/*Put the employee table above this and different kinds of employees*/

CREATE TABLE Orders
    (orderNum number(6) CONSTRAINT pk_num PRIMARY KEY,
    shippingAddress varchar2(50) NOT NULL,
    orderDate Date DEFAULT SYSDATE NOT NULL,
    empId number(6) NOT NULL,
    CONSTRAINT fk_empId FOREIGN KEY (empId) REFERENCES Employee(empId));

CREATE TABLE Furniture
    (itemCode number(6) CONSTRAINT pk_itemC PRIMARY KEY,
    fname varchar2(20) NOT NULL,
    unitPrice number(7,2) NOT NULL,
    quantity number(5) NOT NULL);

CREATE TABLE Purchase
    (orderNum number(6) NOT NULL,
    itemCode number(6) NOT NULL,
    extendedPrice number(7,2) NOT NULL,
    quantitySold number(3) NOT NULL,
    orderNum number(6) NOT NULL,
    CONSTRAINT fk_onum FOREIGN KEY (orderNum) REFERENCES Orders(orderNum),
    CONSTRAINT fk_itemCode FOREIGN KEY (itemCode) REFERENCES Furniture(itemCode));


CREATE TABLE Shipment
    (shipmentId number(6) CONSTRAINT pk_shipment Primary Key,
    shippingDate Date NOT NULL,
    orderNum number(6) NOT NULL,
    CONSTRAINT fk_onum FOREIGN KEY (orderNum) REFERENCES Orders(orderNum));

CREATE TABLE SalesRep
    (empId number(6) NOT NULL,
    commission number(2,2) NOT NULL,
    PRIMARY KEY (empId),
    FOREIGN KEY (empId) REFERENCES Employee(empId));

CREATE TABLE Driver
    (empId number(6),
    licenseNum number(8) NOT NULL,
    licenseExp Date NOT NULL,
    vehicleNum number(6) NOT NULL,
    CONSTRAINT fk_truck FOREIGN KEY (vehicleNum) REFERENCES Truck(vehicleNum));

CREATE TABLE Truck
    (vehicleNum number(6) CONSTRAINT pk_vnum Primary Key,
    licenseExpDate Date not null,
    inspectionExpDate Date not null,
    shipmentId number(6) NOT NULL
    CONSTRAINT fk_ship FOREIGN KEY (shipmentId) REFERENCES Shipment(shipmentId));



