--Customer Login Activation

CREATE PROCEDURE LoginActivation
@CUSTOMERID INT,
@CONFIRMATIONCODE INT

AS

IF EXISTS (SELECT * FROM SALES_CUSTOMERS WHERE ID=@CUSTOMERID AND LOGINCODE=@CONFIRMATIONCODE)
BEGIN
UPDATE SALES_CUSTOMERS SET ENTRYCODEAPPROVAL=1 WHERE ID=@CUSTOMERID

RETURN 1
END

ELSE
BEGIN
RETURN 0
END