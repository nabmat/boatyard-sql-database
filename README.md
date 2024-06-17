# Boatyard SQL Database

## Overview

This project involves the design and implementation of a SQL database tailored for managing boatyards. The primary goal was to create a robust, efficient, and scalable database system that handles various aspects of boatyard management, including boats, customers, staff, and their relationships. Below is a detailed explanation of the database design, the Entity-Relationship Diagram (ERD), and the improvements made in data management and retrieval efficiency.

## Database Design

### Entities and Relationships

The database is designed to manage several core entities, as outlined below:

- **Boats**: Information about the boats such as ID, name, fuel type, date of manufacture, color, hull identification number (HIN), capacity, engine size, and the associated customer ID.
- **Customers**: Information about customers including ID, first name, last name, email, address, town, postcode, phone number, and date of birth.
- **Staff**: Information about staff members including ID, first name, last name, address, town, postcode, date of birth, work phone, home phone, and email. Each staff member can have one or more roles.
- **Roles**: Details about staff roles including role ID and role name.
- **Servicing**: Details about services offered, which include service ID, service name, description, date, and the associated boat ID.
- **Boatyard**: Information about boatyards including ID, name, address, town, and postcode.
- **Servicing_Staff_Boatyard**: A junction table to manage the many-to-many relationship between servicing, staff, and boatyards. This includes IDs for staff, boatyard, and service.
- **Staff_Role**: A junction table to manage the many-to-many relationship between staff and their roles.

### Entity-Relationship Diagram (ERD)

The ERD ensures that all entities are correctly related, and the relationships between them are properly established. Key relationships include:

- **One-to-Many Relationships**:
  - A customer can own multiple boats.
  - A boat can have multiple servicing records.
  - A staff member can be assigned to multiple roles.

- **Many-to-Many Relationships**:
  - Staff members can work at multiple boatyards, and boatyards can have multiple staff members. This is managed through the `Servicing_Staff_Boatyard` table.
  - Staff members can have multiple roles, and each role can be assigned to multiple staff members. This is managed through the `Staff_Role` table.

### Primary and Foreign Keys

- **Primary Keys**: Unique identifiers for each entity (e.g., `cust_id`, `boat_id`, `staff_id`, `role_id`, `service_id`, `boatyard_id`).
- **Foreign Keys**: Keys that link related entities (e.g., `cust_id` in the `boat` table, `boat_id` in the `servicing` table, `staff_id` and `boatyard_id` in the `servicing_staff_boatyard` table).

## Data Insertion

The database includes insertion scripts for populating the tables with initial data. These scripts cover:

- **Boats**: Inserting data about each boat's fuel type, body type, and other characteristics.
- **Customers**: Inserting data including first and last names, and other customer details.
- **Staff**: Inserting data including first and last names, and other staff details.
- **Roles**: Inserting different roles that staff members can have.
- **Servicing**: Inserting data about services performed on boats.
- **Boatyard**: Inserting data about boatyard locations.
- **Servicing_Staff_Boatyard**: Linking services, staff, and boatyards.

Here is an example of the insertion data:

```sql
-- Boats
INSERT INTO Boats (boat_id, boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, cust_id) VALUES
(1, 'Sea Breeze', 'Diesel', '2020-05-15', 'White', 'HIN123456', '6', '200', 1),
(2, 'Wave Rider', 'Petrol', '2019-03-22', 'Blue', 'HIN654321', '4', '150', 2);

-- Customers
INSERT INTO Customers (cust_id, cust_fname, cust_lname, cust_email, cust_addr1, cust_addr2, cust_town, cust_postcode, cust_phone, cust_dob) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123 Ocean Ave', '', 'Seaville', '12345', '555-1234', '1980-01-01'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '456 Harbor St', '', 'Seaville', '12345', '555-5678', '1985-02-02');

-- Staff
INSERT INTO Staff (staff_id, staff_fname, staff_lname, staff_addr1, staff_addr2, staff_town, staff_postcode, staff_dob, staff_workphone, staff_homephone, staff_email) VALUES
(1, 'Alice', 'Brown', '789 Dock Rd', '', 'Boatsville', '67890', '1975-03-03', '555-9876', '555-6789', 'alice.brown@solentboats.com'),
(2, 'Bob', 'Johnson', '321 Pier Ln', '', 'Boatsville', '67890', '1982-04-04', '555-4321', '555-8765', 'bob.johnson@solentboats.com');

-- Roles
INSERT INTO Roles (role_id, role_name) VALUES
(1, 'Manager'),
(2, 'Technician');

-- Servicing
INSERT INTO Servicing (service_id, services_name, service_desc, service_date, boat_id) VALUES
(1, 'Engine Check', 'Full engine inspection and maintenance', '2024-01-15', 1),
(2, 'Hull Cleaning', 'Exterior hull cleaning and polishing', '2024-02-20', 2);

-- Boatyard
INSERT INTO Boatyard (boatyard_id, boatyard_name, boatyard_addr1, boatyard_addr2, boatyard_town, boatyard_postcode) VALUES
(1, 'Main Dock', '1 Marina Blvd', '', 'Docktown', '54321'),
(2, 'East Harbor', '77 Ocean Way', '', 'Docktown', '54321');

-- Servicing_Staff_Boatyard
INSERT INTO Servicing_Staff_Boatyard (servicing_staff_boatyard, staff_id, boatyard_id, service_id) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2);

-- Staff_Role
INSERT INTO Staff_Role (staff_id, role_id) VALUES
(1, 1),
(2, 2);

## Improvements in Data Management and Retrieval Efficiency

Several strategies were implemented to enhance data management and retrieval efficiency:

- **Indexing**: Key fields, such as primary and foreign keys, are indexed to speed up search queries and joins.
- **Normalization**: The database schema is normalized to the third normal form (3NF) to eliminate redundancy and ensure data integrity.
- **Efficient Queries**: Optimized SQL queries are used to retrieve data quickly and efficiently. This includes using JOIN operations to combine data from multiple tables without compromising performance.
- **Backup and Recovery**: Regular backup routines are established to ensure data is not lost and can be recovered in case of any failures.

## Conclusion

The boatyard SQL database is a well-designed and efficient system for managing boatyard operations. With a clear ERD, proper table relationships, and optimized data management strategies, the database ensures reliable and quick access to data, supporting the smooth operation of boatyard activities.
