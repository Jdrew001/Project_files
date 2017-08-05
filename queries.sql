/* Create queries
*/

/*1)*/
SELECT cus.lastName, cus.firstName, cus.billingAddress, ord.shippingAddress, cus.phoneNum
FROM /////.Customer cus, /////.Orders ord
WHERE cus.accountNum = ord.accountNum
;

/*2)*/
SELECT ord.orderNum, ord.shippingAddress, cus.lastName, cus.firstName, cus.billingAddress,
cus.accountNum, emp.lastName, emp.firstName
FROM /////.Orders ord, /////.Customer cus, /////.Employee emp
WHERE ord.accountNum = cus.accountNum
AND ord.empId = emp.empId
;

/*3)*/