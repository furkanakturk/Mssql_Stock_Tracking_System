﻿--Girilen ID YE GÖRE ÇALIŞANIN TOPLAM SATIŞ MİKTARINI BULMA
CREATE PROC EMPLOYEESALES
	@EMPLOYEEID INT
AS
BEGIN

SELECT S.EMPLOYEEID, E.FIRSTNAME + ' ' + E.LASTNAME EMPLOYEE, COUNT(*) PIECE, P.PRODUCTNAME, SD.UNITPRICE FROM SALES_SALES S
	INNER JOIN SALES_EMPLOYEES E ON E.ID=S.EMPLOYEEID
	INNER JOIN SALES_SALESDETAILS SD  ON SD.SALESID=S.ID
	INNER JOIN PRODUCT_PRODUCT P ON P.ID=S.PRODUCTID
	WHERE S.EMPLOYEEID=@EMPLOYEEID
	GROUP BY S.EMPLOYEEID, E.FIRSTNAME, E.LASTNAME, P.PRODUCTNAME, SD.UNITPRICE

END