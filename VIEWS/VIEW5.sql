CREATE VIEW V_EMPLOYEECATEGORYCOUNT
AS
SELECT JOB, COUNT(*) TOTALCOUNT FROM SALES_EMPLOYEES
	GROUP BY JOB

SELECT * FROM V_EMPLOYEECATEGORYCOUNT;