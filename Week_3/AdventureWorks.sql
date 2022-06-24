--1--
SELECT Title, FirstName, MiddleName, LastName FROM Person.Person;
--2--
SELECT rtrim(concat(FirstName + ' ', MiddleName + ' ', LastName + ' ')) FROM Person.Person;
--3--
SELECT AddressLine1 FROM Person.Address;
--4--
SELECT DISTINCT City FROM Person.Address;
--5--
SELECT TOP 10 * FROM Person.Address;
--6--
SELECT AVG(Rate) FROM HumanResources.EmployeePayHistory;
--7--
select count(BusinessEntityID) FROM HumanResources.Employee;
