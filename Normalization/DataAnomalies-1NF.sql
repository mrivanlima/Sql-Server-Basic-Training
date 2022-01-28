

DROP TABLE IF EXISTS Person
GO

CREATE TABLE Person
( 
	  FirstName			NVARCHAR(50)
	, LastName			NVARCHAR(50)
	, PhoneNumber		VARCHAR(50)
	, StreeAddress		NVARCHAR(50)
	, ZipCode			NVARCHAR(50)
	, City				NVARCHAR(50)
	, AddressType		NVARCHAR(50)
)
GO

INSERT INTO Person 
VALUES('Joe', 'Black', '(123) 456-7890 (123) 456-5741', '123 Address 1', '32777', 'Miam', 'Home'),
('Jennifer', 'White', '(633) 456-3621 (588) 456-9856 (633) 456-1111', '678 Address4', '32892', 'Houston', 'Home'),
('Cindy', 'Sullivan', '(874) 456-6582', '89 Address10', '36987', 'Los Angeles', 'Work'),
('Michael', 'Moon', '(123) 456-4783', '28 Address34', '96321', 'Portland', 'Home'),
('Eric', 'Tyson', '(963) 456-4112', '11 Address12', '32772', 'New York', 'Work'),
('Crystal', 'Williams', '(963) 456-9687', 'Crystal Address12', '32777', 'Miami', 'Work'),
('Joe', 'Black', '(7 89) 456-7899', '567 Address 12', '80196', 'Dallas', 'Home')

SELECT * FROM Person


--Let's do an insert
INSERT INTO Person 
VALUES ('Michael', 'Moon', '(123) 456-4783 (245) 234-1256', '28 Address34', '96321', 'Portland', 'Home')

SELECT * FROM Person

--Let's do an insert?
UPDATE p 
	SET p.PhoneNumber = CONCAT(p.PhoneNumber, ' (245) 234-1256') 
FROM Person p
WHERE p.FirstName = 'Michael'
AND p.LastName = 'Moon'

SELECT * FROM Person

UPDATE p 
	SET p.PhoneNumber = CONCAT(p.PhoneNumber, '  (245) 234-1221  (245) 234-1287') 
FROM Person p
WHERE p.FirstName = 'Michael'
AND p.LastName = 'Moon'


--Let's do an update
UPDATE p 
	SET p.PhoneNumber = '(245) 234-1255'
FROM Person p
WHERE p.FirstName = 'Michael'
AND p.LastName = 'Moon'

SELECT * FROM Person


--Let's do a delete
--DELETE I don't want to do it, since I am only able to delete the record and not the attribute.
--I would have to do an update again, but this time, it will also be very complicated because it the person has more than one phone
--I would want to delete only the one phone and keep the other one.
-------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS Person
GO

CREATE TABLE Person
( 
	  FirstName			NVARCHAR(50)
	, LastName			NVARCHAR(50)
	, PhoneNumber1		NVARCHAR(100)
	, PhoneNumber2		NVARCHAR(100)
	, StreeAddress		NVARCHAR(50)
	, ZipCode			NVARCHAR(50)
	, City				NVARCHAR(50)
	, AddressType		NVARCHAR(50)
)
GO

INSERT INTO Person 
VALUES('Joe', 'Black', '(123) 456-7890', '(123) 456-5741', '123 Address 1', '32777', 'Miam', 'Home'),
('Jennifer', 'White', '(633) 456-3621', '(588) 456-9856 (633) 456-1111', '678 Address4', '32892', 'Houston', 'Home'),
('Cindy', 'Sullivan', '(874) 456-6582', NULL, '89 Address10', '36987', 'Los Angeles', 'Work'),
('Michael', 'Moon', '(123) 456-4783', NULL, '28 Address34', '96321', 'Portland', 'Home'),
('Eric', 'Tyson', '(963) 456-4112', NULL, '11 Address12', '32772', 'New York', 'Work'),
('Crystal', 'Williams', '(963) 456-9687', NULL, 'Crystal Address12', '32777', 'Miami', 'Work'),
('Joe', 'Black', '(7 89) 456-7899', NULL, '567 Address 12', '80196', 'Dallas', 'Home')

SELECT * FROM Person

--Let's do an insert
INSERT INTO Person 
VALUES ('Michael', 'Moon', NULL, '(245) 234-1256','28 Address34', '96321', 'Portland', 'Home')

SELECT * FROM Person

INSERT INTO Person 
VALUES ('Michael', 'Moon', '(123) 456-4783', '(245) 234-1256','28 Address34', '96321', 'Portland', 'Home')

SELECT * FROM Person

--Let's do an insert?
UPDATE p 
	SET p.PhoneNumber2 = '(245) 234-1256' 
FROM Person p
WHERE p.FirstName = 'Michael'
AND p.LastName = 'Moon'

SELECT * FROM Person

--Let's do an update
UPDATE p 
	SET p.PhoneNumber2 = '(245) 234-1256' 
FROM Person p
WHERE p.FirstName = 'Michael'
AND p.LastName = 'Moon'

SELECT * FROM Person

--Let's do a delete?
UPDATE p 
	SET p.PhoneNumber2 = NULL
FROM Person p
WHERE p.FirstName = 'Michael'
AND p.LastName = 'Moon'

SELECT * FROM Person

INSERT INTO Person 
VALUES ('Michael', 'Moon', '(123) 456-4783', '(245) 234-1256', '(245) 321-2345', '28 Address34', '96321', 'Portland', 'Home')

--------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS Person
GO

CREATE TABLE Person
( 
	  FirstName			NVARCHAR(50)
	, LastName			NVARCHAR(50)
	, PhoneNumber		NVARCHAR(14)
	, StreeAddress		NVARCHAR(50)
	, ZipCode			NVARCHAR(50)
	, City				NVARCHAR(50)
	, AddressType		NVARCHAR(50)
)
GO

INSERT INTO Person 
VALUES
('Joe', 'Black', '(123) 456-7890', '123 Address 1', '32777', 'Miam', 'Home'),
('Joe', 'Black', '(123) 456-5741', '123 Address 1', '32777', 'Miam', 'Home'),
('Jennifer', 'White', '(633) 456-3621', '678 Address4', '32892', 'Houston', 'Home'),
('Jennifer', 'White', '(588) 456-9856', '678 Address4', '32892', 'Houston', 'Home'),
('Jennifer', 'White', '(633) 456-1111', '678 Address4', '32892', 'Houston', 'Home'),
('Cindy', 'Sullivan', '(874) 456-6582', '89 Address10', '36987', 'Los Angeles', 'Work'),
('Michael', 'Moon', '(123) 456-4783', '28 Address34', '96321', 'Portland', 'Home'),
('Eric', 'Tyson', '(963) 456-4112', '11 Address12', '32772', 'New York', 'Work'),
('Crystal', 'Williams', '(963) 456-9687', 'Crystal Address12', '32777', 'Miami', 'Work'),
('Joe', 'Black', '(789) 456-7899', '567 Address 12', '80196', 'Dallas', 'Home')

SELECT * FROM Person