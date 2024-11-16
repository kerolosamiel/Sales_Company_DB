# SalesCompany Database Schema

This project defines the database schema for a company involved in property sales, including details about sales offices, properties, employees, property owners, buyers, and property purchases.

## Database Structure

The schema includes the following tables:

1. **SalesOffice**: Stores information about sales offices.
2. **Property**: Stores information about properties.
3. **Owner**: Stores information about property owners.
4. **Employee**: Stores information about employees.
5. **PropertyOwner**: Establishes a many-to-many relationship between properties and their owners.

## Constraints

- Primary keys and foreign keys are defined to ensure data integrity.
- The schema enforces relationships between tables to model real-world associations.

## Usage

- Use the provided SQL script to create the database and its tables.
- Populate the tables with relevant data for testing or application development.
