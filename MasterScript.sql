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

/*Put the employee table above this and different kinds of employees*/

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
    commission number(3,2) NOT NULL,
    profitGenerated number(8,2) NOT NULL,
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

    INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
        Values(1, 'Jane', 'Doe', 3214567899, '123 Gdcd Blvd, Grand Prairie, TX');

    INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
        Values(2, 'John', 'Smith', 8174257659, '813 King Drive, Fort Worth, TX');

    INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
        Values(3, 'Rob', 'King', 6915432676, '555 Gold Dig St, Colony, TX');

    INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
        Values(4, 'Nate', 'Ko', 7658971234, '333 Panera Dr, Arlington, TX');

    INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
        Values(5, 'Alex', 'Right', 7644569191, '321 Vergo Dr, Austin, TX');

    INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
        Values(6, 'lauren', 'Lee', 1236540987, '89 Wee Wee Blvd, Cedar Hill, TX');

    INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
        Values(7, 'Jacky', 'Nice', 6789909321, '99 Old T St, Carrollton, TX');
    INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
        Values(8, 'Mah', 'Patra', 2145558198, '800 Radha St, Paris, TX');

    INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
        Values(9, 'Travis', 'Love', 3336541234, '66 Why Not Dr, Oden, TX');

    INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
        Values(10, 'Flash', 'Robin', 8769994356, '871 Nice Blvd, Thor, TX');

INSERT INTO Employee(empId, ssn, firstName, lastName, eAddress, phone, salary)
VALUES(1, '654761234', 'Door', 'Handle', 'frame@gmail.com', '4323218790', '30123');

INSERT INTO Employee(empId, ssn, firstName, lastName, eAddress, phone, salary)
VALUES(2, '332111765', 'New', 'Man', 'awomen@gmail.com', '6757863211', '43257');

INSERT INTO Employee(empId, ssn, firstName, lastName, eAddress, phone, salary)
VALUES(3, '873277754', 'Tissue', 'Paper', 'box@yahool.com', '8179953215', '60321');

INSERT INTO Employee(empId, ssn, firstName, lastName, eAddress, phone, salary)
VALUES(4, '211456765', 'Swing', 'Set', 'playground@aol.com', '2167079878', '15765');

INSERT INTO Employee(empId, ssn, firstName, lastName, eAddress, phone, salary)
VALUES(5, '678666453', 'Pro', 'Gram', 'terminal@gmail.com', '8980004561', '28761');

INSERT INTO Employee(empId, ssn, firstName, lastName, eAddress, phone, salary)
VALUES(6, '173899003', 'Handi', 'Cap', 'Blue@aol.com', '8766666099', '38555');

INSERT INTO Employee(empId, ssn, firstName, lastName, eAddress, phone, salary)
VALUES(7, '333000333', 'Key', 'Board', 'computer@yahoo.com', '9997771000', '80675');

INSERT INTO Employee(empId, ssn, firstName, lastName, eAddress, phone, salary)
VALUES(8, '676777890', 'Tea', 'Pot', 'handle@gmail.com', '4118198561', '53556');

INSERT INTO Employee(empId, ssn, firstName, lastName, eAddress, phone, salary)
VALUES(9, '121343131', 'Chip', 'Bag', 'rack@aol.com', '4415648907', '45678');

INSERT INTO Employee(empId, ssn, firstName, lastName, eAddress, phone, salary)
VALUES(10, '777888999', 'Cow', 'Boy', 'star@yahoo.com', '6788769981', '77891');

INSERT INTO Orders(orderNum, shippingAddress, orderDate, empId, accountNum) 
    VALUES (1, '8611 Jerry dr.', '13-JUN-22', 8, 1);

INSERT INTO Orders(orderNum, shippingAddress, orderDate, empId, accountNum) 
    VALUES (2, '8611 Washington dr.', '13-JUN-22', 8, 1);

INSERT INTO Orders(orderNum, shippingAddress, orderDate, empId, accountNum) 
    VALUES (3, '8611 Cooper Str.', '13-JUN-22', 7, 3);

INSERT INTO Orders(orderNum, shippingAddress, orderDate, empId, accountNum) 
    VALUES (4, '8611 Coulter Str.', '13-JUN-22', 8, 5);

INSERT INTO Orders(orderNum, shippingAddress, orderDate, empId, accountNum) 
    VALUES (5, '8611 Addison Road', '13-JUN-22', 8, 4);

INSERT INTO Orders(orderNum, shippingAddress, orderDate, empId, accountNum) 
    VALUES (6, '11 Helfax dr.', '13-JUN-22', 9, 8);

INSERT INTO Orders(orderNum, shippingAddress, orderDate, empId, accountNum) 
    VALUES (7, '256 Cortona dr.', '13-JUN-22', 10, 8);

INSERT INTO Orders(orderNum, shippingAddress, orderDate, empId, accountNum) 
    VALUES (8, '0000 Nowhere Ave.', '13-JUN-22', 8, 10);

INSERT INTO Orders(orderNum, shippingAddress, orderDate, empId, accountNum) 
    VALUES (9, '8611 Cortona dr.', '13-JUN-22', 10, 9);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	Values(1, '60 inch Televsion', 800.99, 50);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	Values(2, '19th Century American Oak Sideboard', 7950.00, 3);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	Values(3, 'Tri-tone Leather Sofa', 1049.99, 100);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	Values(4, 'Traditional Brown Cherry 3-Drawer', 499.99, 20);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	Values(5, 'Round Cocktail Table', 294.00, 80);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	Values(6,'Gray Accent Armchair', 499.00, 90);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	Values(7, 'Harvest Cherry Executive Desk', 459.00, 45);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	Values(8, 'Harvest Cherry Lateral File', 369.99, 45);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	Values(9, 'Xxl Luxury Sectional Sofa', 3439.00, 5);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	Values(10, 'Maia Light Grey Queen Size Bed', 1851.00, 200);

INSERT INTO Purchase(orderNum, itemCode, quantitySold)
    VALUES (1, 3, 1);

INSERT INTO Purchase(orderNum, itemCode, quantitySold)
    VALUES (1, 2, 2);

INSERT INTO Purchase(orderNum, itemCode, quantitySold)
    VALUES (2, 3, 1);

INSERT INTO Purchase(orderNum, itemCode, quantitySold)
    VALUES (4, 4, 1);

INSERT INTO Purchase(orderNum, itemCode, quantitySold)
    VALUES (2, 5, 1);

INSERT INTO Purchase(orderNum, itemCode, quantitySold)
    VALUES (2, 5, 1);

INSERT INTO Purchase(orderNum, itemCode, quantitySold)
    VALUES (2, 5, 1);

INSERT INTO Purchase(orderNum, itemCode, quantitySold)
    VALUES (1, 6, 1);

INSERT INTO Purchase(orderNum, itemCode, quantitySold)
    VALUES (8, 2, 2);

INSERT INTO Purchase(orderNum, itemCode, quantitySold)
    VALUES (5, 1, 4);

INSERT INTO Purchase(orderNum, itemCode, quantitySold)
    VALUES (2, 1, 1);

INSERT INTO Purchase(orderNum, itemCode, quantitySold)
    VALUES (8, 3, 1);

INSERT INTO Purchase(orderNum, itemCode, quantitySold)
    VALUES (7, 4, 2);

    INSERT INTO Shipment(shipmentId, shippingDate, orderNum)
VALUES(000001, '01-JAN-2018', 1);

INSERT INTO Shipment(shipmentId, shippingDate, orderNum)
VALUES(000002, '02-JAN-2018', 3);

INSERT INTO Shipment(shipmentId, shippingDate, orderNum)
VALUES(000003, '03-JAN-2018', 5);

INSERT INTO Shipment(shipmentId, shippingDate, orderNum)
VALUES(000004, '03-JAN-2018', 4);

INSERT INTO Shipment(shipmentId, shippingDate, orderNum)
VALUES(000005, '04-JAN-2018', 6);

INSERT INTO Shipment(shipmentId, shippingDate, orderNum)
VALUES(000006, '05-JAN-2018', 1);

INSERT INTO Shipment(shipmentId, shippingDate, orderNum)
VALUES(000007, '05-JAN-2018', 1);

INSERT INTO Shipment(shipmentId, shippingDate, orderNum)
VALUES(000008, '05-JAN-2018', 3);

INSERT INTO Shipment(shipmentId, shippingDate, orderNum)
VALUES(000009, '06-JAN-2018', 5);

INSERT INTO Shipment(shipmentId, shippingDate, orderNum)
VALUES(000010, '06-JAN-2018', 4);

insert into SalesRep(empId, commission, profitGenerated)
	values(7, 7.56, 20000);

insert into SalesRep(empId, commission, profitGenerated)
	values(8, 9.25, 34000);

insert into SalesRep(empId, commission, profitGenerated)
	values(9, 8.35, 40000);

insert into SalesRep(empId, commission, profitGenerated)
	values(10, 9.75, 50000);

INSERT INTO Truck(vehicleNum, licenseExpDate, inspectionExpDate, shipmentId)
    VALUES(00002, '01-JAN-2020', '01-JAN-2019', 000001);

INSERT INTO Truck(vehicleNum, licenseExpDate, inspectionExpDate, shipmentId)
    VALUES(00003, '01-JAN-2020', '01-JAN-2019', 000001);

INSERT INTO Truck(vehicleNum, licenseExpDate, inspectionExpDate, shipmentId)
    VALUES(00004, '01-JAN-2020', '01-JAN-2019', 000003);

INSERT INTO Truck(vehicleNum, licenseExpDate, inspectionExpDate, shipmentId)
    VALUES(00005, '01-JAN-2020', '01-JAN-2019', 000004);

INSERT INTO Truck(vehicleNum, licenseExpDate, inspectionExpDate, shipmentId)
    VALUES(00006, '01-JAN-2020', '01-JAN-2019', 000005);

INSERT INTO Truck(vehicleNum, licenseExpDate, inspectionExpDate, shipmentId)
    VALUES(00007, '01-JAN-2020', '01-JAN-2019', 000007);

INSERT INTO Driver(empid, licenseNum, licenseExp, vehicleNum)
    Values(1, '11111111', '13-FEB-21', 00002);

INSERT INTO Driver(empid, licenseNum, licenseExp, vehicleNum)
    Values(2, '22222222', '12-JAN-20', 00003);

INSERT INTO Driver(empid, licenseNum, licenseExp, vehicleNum)
    Values(3, '33333333', '19-DEC-22', 00004);

INSERT INTO Driver(empid, licenseNum, licenseExp, vehicleNum)
    Values(4, '44444444', '05-SEP-19', 00005);

INSERT INTO Driver(empid, licenseNum, licenseExp, vehicleNum)
    Values(5, '55555555', '13-JUN-22', 00006);

INSERT INTO Driver(empid, licenseNum, licenseExp, vehicleNum)
    Values(6, '66666666', '01-AUG-18', 00007);