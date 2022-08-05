--eVisa DATABASE

--admin TABLE 
CREATE TABLE admin (userid INT PRIMARY KEY IDENTITY(1,1), uname VARCHAR(50) NOT NULL, pwd VARCHAR(100) NOT NULL)

--Inserting testrun data SELECT * FROM admin
INSERT INTO admin VALUES ('test','123')
INSERT INTO admin VALUES ('test2','321')
INSERT INTO admin VALUES ('test3','000')
INSERT INTO admin VALUES ('Abhimanyu','xyz')

--Procedure for inserting data
CREATE PROCEDURE insadmin (@uname VARCHAR(50), @pwd VARCHAR(100))
AS
BEGIN
INSERT INTO admin VALUES (@uname,@pwd)
END

--TESTING PROCEDURE
EXEC insadmin 'test4','qwerty'

SELECT COUNT(1) FROM admin WHERE uname='test' AND pwd=123

--HR Table
CREATE TABLE HR (hrid INT PRIMARY KEY IDENTITY(1,1), hrname VARCHAR(50) NOT NULL, pwd VARCHAR(100) NOT NULL, visareq VARCHAR(20),feedback VARCHAR(250))

--Inserting testrun data SELECT * FROM HR
INSERT INTO HR VALUES ('hr1','123','update','feedback')
INSERT INTO HR VALUES ('test','123','new','feedback')
INSERT INTO HR VALUES ('deltest','123','new','feedback')

--employee TABLE
CREATE TABLE employee(empid INT PRIMARY KEY IDENTITY(1,1), empname VARCHAR(50) NOT NULL, pwd VARCHAR(100) NOT NULL, onsitedet VARCHAR(50), projectdet VARCHAR(50), feedback VARCHAR(250))

--Inserting testrun data SELECT * FROM employee
INSERT INTO employee (empname , pwd) VALUES('emp1','123')
INSERT INTO employee VALUES ('Abhimanyu','321','NewYork','in-progress','excellent')
INSERT INTO employee VALUES ('Abhiraj','321','NewYork','in-progress','excellent')

SELECT * FROM admin
SELECT * FROM HR
SELECT * FROM employee