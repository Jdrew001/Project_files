/* Create queries
*/

/*1)*/
SELECT cus.lastName, cus.firstName, cus.billingAddress, ord.shippingAddress, cus.phoneNum
FROM Customer cus, Orders ord
WHERE cus.accountNum = ord.accountNum
;

/*2)*/
SELECT ord.orderNum, ord.shippingAddress, cus.lastName, cus.firstName, cus.billingAddress,
cus.accountNum, emp.lastName, emp.firstName
FROM Orders ord, Customer cus, Employee emp
WHERE ord.accountNum = cus.accountNum
AND ord.empId = emp.empId and ord.orderNum = 1
;

SELECT fur.itemCode, fur.fdescription, fur.unitPrice, pur.quantitySold, pur.quantitySold * fur.unitPrice as extendedPrice
FROM Furniture fur, Purchase pur
WHERE pur.orderNum = 1
AND fur.itemCode = pur.itemCode
;

/*3)*/
SELECT e.phone
FROM Orders o, Employee e
WHERE e.empId = o.empId
AND o.orderNum = 1
;
