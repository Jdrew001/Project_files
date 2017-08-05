/* Create queries
*/

/*1)*/
SELECT cus.lastName, cus.firstName, cus.billingAddress, ord.shippingAddress, cus.phoneNum
FROM /////.Customer cus, /////.Orders ord
WHERE cus.accountNum = ord.accountNum
;

/*2)*/
