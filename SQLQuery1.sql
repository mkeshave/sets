--Using Server NDAMSSQL\SQLILEARN
--Using Database Training_24Oct18_Pune

USE Training_24Oct18_Pune

CREATE SCHEMA Amit;

CREATE TABLE Amit.Patient
(ID INT PRIMARY KEY IDENTITY(1,1),
FIRSTNAME VARCHAR(15),
LASTNAME VARCHAR(15),
GENDER VARCHAR(6), 
ADDRESS VARCHAR(40),
CITY VARCHAR(15),
STATE VARCHAR(15),
PINCODE INT,
PHONENO VARCHAR(10));

SELECT * FROM Amit.Patient

--For verifying

INSERT INTO Amit.Patient 
VALUES 
(
'Amit', 'Potdar' ,'Male', 'budhwari',
'seoni' ,'MP',480661 ,'9981880044' 
);

--Procedure for inserting patient details

CREATE PROCEDURE Amit.Add_Patient 

@firstname VARCHAR(15),
@lastname VARCHAR(15),
@gender VARCHAR(6), 
@address VARCHAR(40),
@city VARCHAR(15),
@state VARCHAR(15),
@pincode INT,
@phone VARCHAR(10)
AS
BEGIN
INSERT INTO Amit.Patient 
VALUES 
(
@firstname, @lastname ,@gender, @address,
@city ,@state,@pincode ,@phone
);
END

