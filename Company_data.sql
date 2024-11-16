use SalesCompany
Go

-- Insert data into the SalesOffice table
INSERT INTO SalesOffice ([OfficeNumber], [Location]) VALUES
(1, 'New York'),
(2, 'Los Angeles'),
(3, 'Chicago'),
(4, 'Houston'),
(5, 'Phoenix');

-- Insert data into the Property table
INSERT INTO Property ([PropertyID], [Add], [City], [State], [ZipCode], [OfficeNumber]) VALUES
(1, '123 Elm St', 'New York', 'NY', 10001, 1),
(2, '456 Oak Ave', 'Los Angeles', 'CA', 90001, 2),
(3, '789 Maple Dr', 'Chicago', 'IL', 60601, 3),
(4, '101 Pine Rd', 'Houston', 'TX', 77001, 4),
(5, '202 Cedar Ln', 'Phoenix', 'AZ', 85001, 5);

-- Insert data into the Owner table
INSERT INTO Owner ([OwnerID], [Name]) VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Robert Brown'),
(4, 'Emily Davis'),
(5, 'Michael Johnson');

-- Insert data into the Employee table
INSERT INTO Employee ([EmployeeID], [Name], [OfficeNumber]) VALUES
(101, 'Alice Green', 1),
(102, 'Bob White', 2),
(103, 'Charlie Black', 3),
(104, 'Diana Blue', 4),
(105, 'Eve Grey', 5),
(106, 'Kerolos Amiel', 3),
(107, 'Leo Messi', 1),
(108, 'Even Morie', 5);

-- Insert data into the PropertyOwner table
INSERT INTO PropertyOwner ([PropertyID], [OwnerID]) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(1, 2),
(5, 2),
(2, 3),
(5, 4),
(3, 5);

-- Update the PercentOwned Column in PropertyOwner Table after add the column to his table 
Update PropertyOwner SET PercentOwned = 60.00
Where PropertyID = 1 AND OwnerID = 1

Update PropertyOwner SET PercentOwned = 40.00
Where PropertyID = 1 AND OwnerID = 2

Update PropertyOwner SET PercentOwned = 45.00
Where PropertyID = 2 AND OwnerID = 2

Update PropertyOwner SET PercentOwned = 55.00
Where PropertyID = 2 AND OwnerID = 3

Update PropertyOwner SET PercentOwned = 20.00
Where PropertyID = 3 AND OwnerID = 3

Update PropertyOwner SET PercentOwned = 80.00
Where PropertyID = 3 AND OwnerID = 5

Update PropertyOwner SET PercentOwned = 100.00
Where PropertyID = 4 AND OwnerID = 4

Update PropertyOwner SET PercentOwned = 25.00
Where PropertyID = 5 AND OwnerID = 2

Update PropertyOwner SET PercentOwned = 20.00
Where PropertyID = 5 AND OwnerID = 4

Update PropertyOwner SET PercentOwned = 55.00
Where PropertyID = 5 AND OwnerID = 5

--Add the office manager to SalesOffice Table
Update SalesOffice Set ManagerID = 107
Where OfficeNumber = 1

Update SalesOffice Set ManagerID = 102
Where OfficeNumber = 2

Update SalesOffice Set ManagerID = 103
Where OfficeNumber = 3

Update SalesOffice Set ManagerID = 104
Where OfficeNumber = 4

Update SalesOffice Set ManagerID = 105
Where OfficeNumber = 5
