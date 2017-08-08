/*

    Create all the tables

*/

CREATE TABLE Customer
    (accountNum number(6) CONSTRAINT pk_anum PRIMARY KEY,
    firstName varchar2(20) NOT NULL,
    lastName varchar2(20) NOT NULL,
    phoneNum number(10) NOT NULL,
    billingAddress varchar2(50) NOT NULL);

CREATE TABLE Employee
    (empId number(6) CONSTRAINT pk_emp Primary Key,
    ssn number(9) NOT NULL,
    firstName varchar2(20) NOT NULL,
    lastName varchar2(20) NOT NULL,
    eAddress varchar2(50),
    phone number(10) NOT NULL,
    salary number(7,2) NOT NULL);

/*Put the employee table above this and different kinds of oemployees*/

CREATE TABLE Orders
    (orderNum number(6) CONSTRAINT pk_num PRIMARY KEY,
    shippingAddress varchar2(50) NOT NULL,
    orderDate Date NOT NULL,
    empId number(6) NOT NULL,
    accountNum number(6) NOT NULL,
    FOREIGN KEY (empId) REFERENCES Employee(empId) ON DELETE CASCADE,
    FOREIGN KEY (accountNum) REFERENCES Customer(accountNum) ON DELETE CASCADE);

CREATE TABLE Furniture
    (itemCode number(6) CONSTRAINT pk_itemC PRIMARY KEY,
    fdescription varchar2(50) NOT NULL,
    unitPrice number(7,2) NOT NULL,
    quantity number(5) NOT NULL);

CREATE TABLE Purchase
    (orderNum number(6) NOT NULL,
    itemCode number(6) NOT NULL,
    quantitySold number(3) NOT NULL,
    FOREIGN KEY (orderNum) REFERENCES Orders(orderNum) ON DELETE CASCADE,
    FOREIGN KEY (itemCode) REFERENCES Furniture(itemCode) ON DELETE CASCADE);


CREATE TABLE Shipment
    (shipmentId number(6) CONSTRAINT pk_shipment Primary Key,
    shippingDate Date NOT NULL,
    orderNum number(6) NOT NULL,
    FOREIGN KEY (orderNum) REFERENCES Orders(orderNum) ON DELETE CASCADE);

CREATE TABLE SalesRep
    (empId number(6) NOT NULL,
    commission number(2,2) NOT NULL,
    PRIMARY KEY (empId),
    FOREIGN KEY (empId) REFERENCES Employee(empId) ON DELETE CASCADE);

CREATE TABLE Truck
    (vehicleNum number(6) CONSTRAINT pk_vnum Primary Key,
    licenseExpDate Date not null,
    inspectionExpDate Date not null,
    shipmentId number(6) NOT NULL,
    FOREIGN KEY (shipmentId) REFERENCES Shipment(shipmentId) ON DELETE CASCADE);

CREATE TABLE Driver
    (empId number(6),
    licenseNum number(8) NOT NULL,
    licenseExp Date NOT NULL,
    vehicleNum number(6) NOT NULL,
    PRIMARY KEY (empId),
    FOREIGN KEY (empId) REFERENCES Employee(empId) ON DELETE CASCADE,
    FOREIGN KEY (vehicleNum) REFERENCES Truck(vehicleNum) ON DELETE CASCADE);





