# SalesCompany Database Schema

This project defines the database schema for a company involved in property sales, including details about sales offices, properties, employees, property owners, buyers, and property purchases.

## Database Structure

The schema includes the following tables:

1. **SalesOffice**: Stores information about sales offices.
    - **OfficeNumber**: Unique identifier for each sales office (Primary Key).
    - **Location**: Location of the sales office.
    - **ManagerID**: ID of the manager responsible for the office.

2. **Property**: Stores information about properties.
    - **PropertyID**: Unique identifier for each property (Primary Key).
    - **Add**: Address of the property.
    - **City**: City where the property is located.
    - **State**: State where the property is located.
    - **ZipCode**: ZIP code of the property.
    - **OfficeNumber**: Foreign key linking the property to a sales office.

3. **Owner**: Stores information about property owners.
    - **OwnerID**: Unique identifier for each owner (Primary Key).
    - **Name**: Name of the property owner.

4. **Employee**: Stores information about employees.
    - **EmployeeID**: Unique identifier for each employee (Primary Key).
    - **Name**: Name of the employee.
    - **OfficeNumber**: Foreign key linking the employee to a sales office.

5. **PropertyOwner**: Establishes a many-to-many relationship between properties and their owners.
    - **PropertyID**: Foreign key linking to the `Property` table.
    - **OwnerID**: Foreign key linking to the `Owner` table.
    - **Composite Primary Key**: Combination of `PropertyID` and `OwnerID`.

## Constraints

- Primary keys and foreign keys are defined to ensure data integrity.
- The schema enforces relationships between tables to model real-world associations.

## Usage

- Use the provided SQL script to create the database and its tables.
- Populate the tables with relevant data for testing or application development.
