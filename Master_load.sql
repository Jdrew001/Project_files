---load data into customer table---
INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
    VALUES(1, 'Jane', 'Doe', 3214567899, '123 Gdcd Blvd, Grand Prairie, TX');

INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
    VALUES(2, 'John', 'Smith', 8174257659, '813 King Drive, Fort Worth, TX');

INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
    VALUES(3, 'Rob', 'King', 6915432676, '555 Gold Dig St, Colony, TX');

INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
    VALUES(4, 'Nate', 'Ko', 7658971234, '333 Panera Dr, Arlington, TX');

INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
    VALUES(5, 'Alex', 'Right', 7644569191, '321 Vergo Dr, Austin, TX');

INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
    VALUES(6, 'lauren', 'Lee', 1236540987, '89 Wee Wee Blvd, Cedar Hill, TX');

INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
    VALUES(7, 'Jacky', 'Nice', 6789909321, '99 Old T St, Carrollton, TX');
INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
    VALUES(8, 'Mah', 'Patra', 2145558198, '800 Radha St, Paris, TX');

INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
    VALUES(9, 'Travis', 'Love', 3336541234, '66 Why Not Dr, Oden, TX');

INSERT INTO Customer(accountNum, firstName, lastName, phoneNum, billingAddress)
    VALUES(10, 'Flash', 'Robin', 8769994356, '871 Nice Blvd, Thor, TX');

---load data into employee table---
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

---load data into orders table---
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

---load data into furniture table---
INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	VALUES(1, '60 inch Televsion', 800.99, 50);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	VALUES(2, '19th Century American Oak Sideboard', 7950.00, 3);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	VALUES(3, 'Tri-tone Leather Sofa', 1049.99, 100);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	VALUES(4, 'Traditional Brown Cherry 3-Drawer', 499.99, 20);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	VALUES(5, 'Round Cocktail Table', 294.00, 80);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	VALUES(6,'Gray Accent Armchair', 499.00, 90);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	VALUES(7, 'Harvest Cherry Executive Desk', 459.00, 45);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	VALUES(8, 'Harvest Cherry Lateral File', 369.99, 45);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	VALUES(9, 'Xxl Luxury Sectional Sofa', 3439.00, 5);

INSERT INTO Furniture (itemCode, fdescription, unitPrice, quantity)
	VALUES(10, 'Maia Light Grey Queen Size Bed', 1851.00, 200);

---load data into purchase table---
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

---load data into truck table---
INSERT INTO Truck(vehicleNum, licenseExpDate, inspectionExpDate)
    VALUES(00002, '01-JAN-2020', '01-JAN-2019');

INSERT INTO Truck(vehicleNum, licenseExpDate, inspectionExpDate)
    VALUES(00003, '01-JAN-2020', '01-JAN-2019');

INSERT INTO Truck(vehicleNum, licenseExpDate, inspectionExpDate)
    VALUES(00004, '01-JAN-2020', '01-JAN-2019');

INSERT INTO Truck(vehicleNum, licenseExpDate, inspectionExpDate)
    VALUES(00005, '01-JAN-2020', '01-JAN-2019');

INSERT INTO Truck(vehicleNum, licenseExpDate, inspectionExpDate)
    VALUES(00006, '01-JAN-2020', '01-JAN-2019');

INSERT INTO Truck(vehicleNum, licenseExpDate, inspectionExpDate)
    VALUES(00007, '01-JAN-2020', '01-JAN-2019');

---load data into shipment table---
INSERT INTO Shipment(shipmentId, shippingDate, vehicleNum, orderNum)
    VALUES(000001, '01-JAN-2018', 00002, 1);

INSERT INTO Shipment(shipmentId, shippingDate, vehicleNum, orderNum)
    VALUES(000002, '02-JAN-2018', 00002, 3);

INSERT INTO Shipment(shipmentId, shippingDate, vehicleNum, orderNum)
    VALUES(000003, '03-JAN-2018', 00002, 5);

INSERT INTO Shipment(shipmentId, shippingDate, vehicleNum, orderNum)
    VALUES(000004, '03-JAN-2018', 00003, 4);

INSERT INTO Shipment(shipmentId, shippingDate, vehicleNum, orderNum)
    VALUES(000005, '04-JAN-2018', 00004, 6);

INSERT INTO Shipment(shipmentId, shippingDate, vehicleNum, orderNum)
    VALUES(000006, '05-JAN-2018', 00004, 1);

INSERT INTO Shipment(shipmentId, shippingDate, vehicleNum, orderNum)
    VALUES(000007, '05-JAN-2018', 00005, 1);

INSERT INTO Shipment(shipmentId, shippingDate, vehicleNum, orderNum)
    VALUES(000008, '05-JAN-2018', 00005,3);

INSERT INTO Shipment(shipmentId, shippingDate, vehicleNum, orderNum)
    VALUES(000009, '06-JAN-2018', 00006, 5);

INSERT INTO Shipment(shipmentId, shippingDate, vehicleNum, orderNum)
    VALUES(000010, '06-JAN-2018', 00006, 4);

---load data into salesrep table---
insert into SalesRep(empId, commission, profitGenerated)
	VALUES(7, 7.56, 20000);

insert into SalesRep(empId, commission, profitGenerated)
	VALUES(8, 9.25, 34000);

insert into SalesRep(empId, commission, profitGenerated)
	VALUES(9, 8.35, 40000);

insert into SalesRep(empId, commission, profitGenerated)
	VALUES(10, 9.75, 50000);

---load data into driver table---
INSERT INTO Driver(empid, licenseNum, licenseExp, vehicleNum)
    VALUES(1, '11111111', '13-FEB-21', 00002);

INSERT INTO Driver(empid, licenseNum, licenseExp, vehicleNum)
    VALUES(2, '22222222', '12-JAN-20', 00003);

INSERT INTO Driver(empid, licenseNum, licenseExp, vehicleNum)
    VALUES(3, '33333333', '19-DEC-22', 00004);

INSERT INTO Driver(empid, licenseNum, licenseExp, vehicleNum)
    VALUES(4, '44444444', '05-SEP-19', 00005);

INSERT INTO Driver(empid, licenseNum, licenseExp, vehicleNum)
    VALUES(5, '55555555', '13-JUN-22', 00006);

INSERT INTO Driver(empid, licenseNum, licenseExp, vehicleNum)
    VALUES(6, '66666666', '01-AUG-18', 00007);