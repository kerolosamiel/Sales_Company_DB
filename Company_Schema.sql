-- Create the database named SalesCompany to manage company sales data
Create Database SalesCompany
GO

-- Use the SalesCompany database for subsequent operations
Use SalesCompany
Go 

-- Define the SalesOffice table to store information about company sales offices
Create Table SalesOffice (
    [OfficeNumber] int,           -- Unique identifier for each sales office
    [Location]     varchar(100),
    [ManagerID]    int,           -- Identifier for the manager of the office
    CONSTRAINT [PK_Office] PRIMARY KEY (OfficeNumber) -- Primary key ensuring unique office numbers
)
Go 

-- Define the Property table to store details of properties managed by sales offices
Create Table Property (
    [PropertyID]   int,                 -- Unique identifier for each property
    [Add]          char(50),
    [City]         char(50),
    [State]        char (50),
    [ZipCode]      int,
    [OfficeNumber] int,                 -- Office responsible for this property
    CONSTRAINT [PK_Property] PRIMARY KEY (PropertyID), -- Primary key for unique property identification
    -- Foreign key establishing a relationship with the SalesOffice table
    CONSTRAINT [Fk_List]     FOREIGN KEY (OfficeNumber) REFERENCES SalesOffice(OfficeNumber)
)
GO

-- Define the Owner table to store property owners
Create Table Owner (
    [OwnerID] int, -- Unique identifier for each owner
    [Name]    Char(25),
    CONSTRAINT [PK_Owner] PRIMARY KEY (OwnerID) -- Primary key constraint
)
Go

-- Define the Employee table to store employee details
Create Table Employee (
    [EmployeeID]   int, -- Unique identifier for each employee
    [Name]         char(25),
    [OfficeNumber] int,
    CONSTRAINT [PK_Employee] PRIMARY KEY (EmployeeID),  -- Primary key constraint
    CONSTRAINT [FK_Work_On]  FOREIGN KEY (OfficeNumber) REFERENCES SalesOffice(OfficeNumber) -- Foreign key constraint
)
Go

-- Define the PropertyOwner table to establish many-to-many relationships between properties and owners
Create Table PropertyOwner (
    [PropertyID] int, -- Foreign key linking to the Property table
    [OwnerID]    int, -- Foreign key linking to the Owner table
    CONSTRAINT [PK_Property_Owner] PRIMARY KEY (PropertyID, OwnerID), -- Composite primary key constraint
    CONSTRAINT [FK_Property]       FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID), -- Foreign key constraint
    CONSTRAINT [FK_Owner]          FOREIGN KEY (OwnerID)    REFERENCES Owner(OwnerID) -- Foreign key constraint
)
Go

 -- Foreign key establishing a relationship with the Employee table
Alter Table SalesOffice Add CONSTRAINT [FK_Manage] FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID)
GO

Alter Table PropertyOwner Add percentOwned DECIMAL(5, 2)