-- Creating the database and connecting to it 
CREATE DATABASE up2111821_cw;
\c up2111821_cw

-- Creating all the tables



-- Creating the staff table 
CREATE TABLE STAFF(
STAFF_ID SERIAL PRIMARY KEY,
STAFF_FNAME VARCHAR(40) NOT NULL,
STAFF_LNAME VARCHAR(40) NOT NULL,
STAFF_ADDR1 VARCHAR(60) NOT NULL, 
STAFF_ADDR2 VARCHAR(60),
STAFF_TOWN VARCHAR(30) NOT NULL,
STAFF_POSTCODE VARCHAR(11) NOT NULL,
STAFF_DOB DATE NOT NULL,
STAFF_WORKPHONE VARCHAR(15) NOT NULL,
STAFF_HOMEPHONE VARCHAR(15) NOT NULL,
STAFF_EMAIL VARCHAR(70) NOT NULL);

-- Creating the customers table
CREATE TABLE CUSTOMERS(
CUST_ID SERIAL PRIMARY KEY,
CUST_FNAME VARCHAR(30) NOT NULL,
CUST_LNAME VARCHAR(30) NOT NULL,
CUST_EMAIL VARCHAR(45) NOT NULL,
CUST_ADDR1 VARCHAR(60) NOT NULL,
CUST_ADDR2 VARCHAR(60),
CUST_TOWN VARCHAR(30) NOT NULL,
CUST_POSTCODE VARCHAR(11) NOT NULL,
CUST_PHONE VARCHAR(15) NOT NULL,
CUST_DOB DATE NOT NULL);

-- Creating the boat table 
CREATE TABLE BOAT(
BOAT_ID SERIAL PRIMARY KEY,
BOAT_NAME VARCHAR(40) NOT NULL,
BOAT_FUEL VARCHAR(30) NOT NULL,
BOAT_MANUFACTURED DATE NOT NULL,
BOAT_COLOUR VARCHAR(40) NOT NULL,
BOAT_HIN VARCHAR(40) NOT NULL,
CAPACITY VARCHAR(10) NOT NULL,
ENGINE_SIZE CHAR(4) NOT NULL,
CUSTOMERS INT NOT NULL REFERENCES CUSTOMERS(CUST_ID));


-- Creating the servicing table 
CREATE TABLE SERVICING(
SERVICE_ID SERIAL PRIMARY KEY, 
SERVICE_NAMES VARCHAR(60) NOT NULL,
SERVICE_DESC VARCHAR(120) NOT NULL,
SERVICE_DATE DATE NOT NULL,
BOAT INT NOT NULL REFERENCES BOAT(BOAT_ID));



-- Creating the role table 
CREATE TABLE ROLE(
ROLE_ID SERIAL PRIMARY KEY,
ROLE_NAME VARCHAR(30));

-- Creating the staff role intersection table
CREATE TABLE STAFF_ROLE(
STAFF_ID int,
ROLE_ID int, 
PRIMARY KEY (STAFF_ID, ROLE_ID),
FOREIGN KEY (STAFF_ID) REFERENCES STAFF (STAFF_ID),
FOREIGN KEY (ROLE_ID) REFERENCES ROLE (ROLE_ID));

-- Creating the boatyard table
CREATE TABLE BOATYARD(
BOATYARD_ID SERIAL PRIMARY KEY,
BOATYARD_NAME VARCHAR(60) NOT NULL,
BOATYARD_ADDR1 VARCHAR(60) NOT NULL,
BOATYARD_ADDR2 VARCHAR(60), 
BOATYARD_TOWN VARCHAR(30) NOT NULL,
BOATYARD_POSTCODE VARCHAR (11) NOT NULL);

-- Creating the servicing staff boatyard intersection table
CREATE TABLE SERVICING_STAFF_BOATYARD(
STAFF_ID INT,
BOATYARD_ID INT,
SERVICE_ID INT,
SERVICING_STAFF_BOATYARD SERIAL PRIMARY KEY, 
FOREIGN KEY (STAFF_ID) REFERENCES STAFF (STAFF_ID),
FOREIGN KEY (BOATYARD_ID) REFERENCES BOATYARD (BOATYARD_ID),
FOREIGN KEY (SERVICE_ID) REFERENCES SERVICING (SERVICE_ID));


-- CREATING THE ROLES
INSERT INTO ROLE (ROLE_NAME) VALUES ('Manager');
INSERT INTO ROLE (ROLE_NAME) VALUES('Glass Fibre Specialist');
INSERT INTO ROLE (ROLE_NAME) VALUES('Engine Technician');
INSERT INTO ROLE (ROLE_NAME) VALUES('General');
INSERT INTO ROLE (ROLE_NAME) VALUES('Electrician');
INSERT INTO ROLE (ROLE_NAME) VALUES('Technician');


-- Inserting the values into staff 
INSERT INTO Staff (staff_fname, staff_lname, staff_addr1, staff_addr2, staff_town, staff_postcode, staff_dob, staff_workphone, staff_homephone, staff_email)
VALUES 
('John', 'Doe', '1 Main St', NULL, 'London', 'W1 1AB', '1980-01-01', '020 12345678', '074 12345678', 'john.doe@solentboats.com'),
('Jane', 'Doe', '2 Main St', 'Apt 2', 'London', 'W1 2AB', '1985-02-02', '020 23456789', '074 23456789', 'jane.s.doe@solentboats.com'),
('Bob', 'Smith', '3 Main St', NULL, 'Manchester', 'M1 3AB', '1990-03-03', '020 34567890', '074 34567890', 'bob.smith@solentboats.com'),
('Alice', 'Johnson', '4 Main St', 'Apt 4', 'Birmingham', 'B1 4AB', '1995-04-04', '020 45678901', '074 45678901', 'alice.johnson@solentboats.com'),
('Charlie', 'Brown', '5 Main St', NULL, 'Liverpool', 'L1 5AB', '1990-05-05', '020 56789012', '074 56789012', 'charlie.brown@solentboats.com'),
('Emily', 'Davis', '6 Main St', 'Apt 6', 'Bristol', 'B6 6AB', '1956-06-06', '020 67890123', '074 67890123', 'emily.davis@solentboats.com'),
('Andrew', 'Miller', '7 Main St', NULL, 'Sheffield', 'S1 7AB', '1983-07-07', '020 78901234', '074 78901234', 'andrew.miller@solentboats.com'),
('Olivia', 'Wilson', '8 Main St', 'Apt 8', 'Leeds', 'L8 8AB', '1963-08-08', '020 89012345', '074 89012345', 'olivia.wilson@solentboats.com'),
('William', 'Moore', '9 Main St', NULL, 'Glasgow', 'G9 9AB', '1973-09-09', '020 90123456', '074 90123456', 'william.moore@solentboats.com'),
('Sophia', 'Taylor', '10 Main St', 'Apt 10', 'Edinburgh', 'E10 10AB', '1982-10-10', '020 01234567', '074 01234567', 'sophia.taylor@solentboats.com'),
('James', 'Anderson', '11 Main St', NULL, 'Dublin', 'D11 11AB', '1980-11-11', '020 12345678', '074 12345678', 'james.anderson@solentboats.com'),
('John', 'Smith', '1 High Street', 'Apt. B', 'London', 'NW1 2RG', '1980-01-01', '0201234567', '0740123456', 'john.smith@solentboats.com'),
('Sophie', 'Doe', '2 Low Road', NULL, 'Manchester', 'M1 3ED', '1985-02-02', '0201234568', '0740123457', 'sophie.doe@solentboats.com'),
('James', 'Johnson', '3 Long Lane', '', 'Birmingham', 'B1 4AB', '1990-03-03', '0201234569', '0740123458', 'james.johnson@solentboats.com'),
('Emily', 'Brown', '4 Short Street', 'Apt. C', 'Liverpool', 'L1 5CD', '1995-04-04', '0201234560', '0740123459', 'emily.brown@solentboats.com'),
('Daniel', 'Taylor', '5 Wide Avenue', NULL, 'Bristol', 'B2 6EF', '1983-05-05', '0201234561', '0740123460', 'daniel.taylor@solentboats.com'),
('Sarah', 'Wilson', '6 Narrow Road', '', 'Leeds', 'L2 7GH', '2003-06-06', '0201234562', '0740123461', 'sarah.wilson@solentboats.com'),
('David', 'Anderson', '7 Tall Building', 'Apt. D', 'Glasgow', 'G1 8IJ', '2001-07-07', '0201234563', '0740123462', 'david.anderson@solentboats.com'),
('Elizabeth', 'Thomas', '8 High Rise', NULL, 'Edinburgh', 'E1 9KL', '2000-08-08', '0201234564', '0740123463', 'elizabeth.thomas@solentboats.com'),
('William', 'Jackson', '9 Low Valley', '', 'Dublin', 'D1 0MN', '2020-09-09', '0201234565', '0740123464', 'william.jackson@solentboats.com'),
('Richard', 'White', '10 Steep Hill', 'Apt. E', 'Cardiff', 'C1 1OP', '2000-10-10', '0201234566', '0740123465', 'richard.white@solentboats.com'),
('Karen', 'Harris', '11 Flat Land', NULL, 'Belfast', 'B1 2QR', '2000-11-11', '0201234567', '0740123466', 'karen.harris@solentboats.com'),
('John', 'Smith', '1 Main St', NULL, 'London', 'SE1 1AA', '1995-01-02', '020 12345678', '074 17345678', 'john.r.smith@solentboats.com'),
('Jane', 'Doe', '2 High Rd', 'Apt 2', 'Manchester', 'M1 1AB', '1996-03-04', '020 23456789', '074 23456789', 'jane.doe@solentboats.com'),
('James', 'Johnson', '3 Park Ave', NULL, 'Birmingham', 'B1 1AC', '1997-05-06', '020 34567890', '074 34567890', 'james.johnson@solentboats.com'),
('Emily', 'Williams', '4 Church St', 'Apt 4', 'Liverpool', 'L1 1AD', '1998-07-08', '020 45678901', '074 45678901', 'emily.williams@solentboats.com'),
('William', 'Brown', '5 Market St', NULL, 'Glasgow', 'G1 1AE', '1999-09-10', '020 56789012', '074 56789012', 'william.brown@solentboats.com'),
('Daniel', 'Jones', '6 King St', 'Apt 6', 'Newcastle', 'N1 1AF', '2000-11-12', '020 67890123', '074 67890123', 'daniel.jones@solentboats.com'),
('Emily', 'Miller', '7 Queen St', NULL, 'Leeds', 'LE2 1CG', '2001-01-14', '020 78901234', '074 78901234', 'emily.miller@solentboats.com'),
('Hannah', 'Miller', '1 King St', NULL, 'Leeds', 'LE4 1XG', '2000-01-14', '020 21901234', '074 72932234', 'hannah.miller@solentboats.com'),
('Emily', 'Snow', '53 Jack St', NULL, 'Leeds', 'LE5 1BG', '1994-01-14', '020 72327234', '074 73134534', 'emily.snow@solentboats.com'),
('Olivia', 'Miller', '42 Hack St', NULL, 'Leeds', 'LE3 1AG', '2001-01-18', '020 34561234', '074 78321334', 'olivia.miller@solentboats.com'),
('Jessica', 'Miller', '24 Berry St', NULL, 'Leeds', 'LE2 1AG', '2001-01-20', '020 72401234', '074 7234234', 'jessica.miller@solentboats.com'),
('Lee', 'Montana', '24 Swarm St', NULL, 'Leeds', 'LE15 1AG', '2001-01-24', '020 73901234', '074 78933324', 'lee.montana@solentboats.com'),
('Femi', 'Kola', '547 Downing St', NULL, 'Leeds', 'LE12 1AG', '2001-01-25', '020 73101234', '074 78444234', 'femi.kola@solentboats.com'),
('Harvin', 'Mandair', '754 Hackney St', NULL, 'Leeds', 'LE12 1AG', '2001-02-14', '020 78241234', '074 78431234', 'harvin.mandair@solentboats.com'),
('Zubair', 'Sumra', '52 Rossington St', NULL, 'Leeds', 'LE16 1AG', '2001-05-14', '020 78211234', '074 72501234', 'zubair.sumra@solentboats.com'),
('Zeshan', 'Snow', '54 Flamboyant St', NULL, 'Leeds', 'LE17 1AG', '2001-07-14', '020 785701234', '074 72301234', 'zeshan.snow@solentboats.com'),
('Emily', 'Miller', '545 Heresay St', NULL, 'Leeds', 'LE19 1AG', '2001-09-14', '020 78431234', '074 78942234', 'emily.miller@solentboats.com'),
('David', 'Davis', '8 Station Rd', 'Apt 8', 'Bristol', 'B1 1AH', '2002-12-16', '020 89572345', '074 89012345', 'david.davis@solentboats.com');


-- Inserting the values into the staff role intersection table
insert into staff_role (staff_id, role_id) values (1, 1);
insert into staff_role (staff_id, role_id) values (2, 2);
insert into staff_role (staff_id, role_id) values (3, 3);
insert into staff_role (staff_id, role_id) values (4, 4);
insert into staff_role (staff_id, role_id) values (5, 5);
insert into staff_role (staff_id, role_id) values (6, 6);
insert into staff_role (staff_id, role_id) values (7, 1);
insert into staff_role (staff_id, role_id) values (8, 2);
insert into staff_role (staff_id, role_id) values (9, 3);
insert into staff_role (staff_id, role_id) values (10, 4);
insert into staff_role (staff_id, role_id) values (11, 5);
insert into staff_role (staff_id, role_id) values (12, 6);
insert into staff_role (staff_id, role_id) values (13, 1);
insert into staff_role (staff_id, role_id) values (14, 2);
insert into staff_role (staff_id, role_id) values (15, 3);
insert into staff_role (staff_id, role_id) values (16, 4);
insert into staff_role (staff_id, role_id) values (17, 5);
insert into staff_role (staff_id, role_id) values (18, 6);
insert into staff_role (staff_id, role_id) values (19, 1);
insert into staff_role (staff_id, role_id) values (20, 2);
insert into staff_role (staff_id, role_id) values (21, 3);
insert into staff_role (staff_id, role_id) values (22, 4);
insert into staff_role (staff_id, role_id) values (23, 5);
insert into staff_role (staff_id, role_id) values (24, 6);
insert into staff_role (staff_id, role_id) values (25, 1);
insert into staff_role (staff_id, role_id) values (26, 2);
insert into staff_role (staff_id, role_id) values (27, 3);
insert into staff_role (staff_id, role_id) values (28, 4);
insert into staff_role (staff_id, role_id) values (29, 5);
insert into staff_role (staff_id, role_id) values (30, 6);
insert into staff_role (staff_id, role_id) values (31, 1);
insert into staff_role (staff_id, role_id) values (32, 2);
insert into staff_role (staff_id, role_id) values (33, 3);
insert into staff_role (staff_id, role_id) values (34, 4);
insert into staff_role (staff_id, role_id) values (35, 5);
insert into staff_role (staff_id, role_id) values (36, 6);
insert into staff_role (staff_id, role_id) values (37, 1);
insert into staff_role (staff_id, role_id) values (38, 2);
insert into staff_role (staff_id, role_id) values (39, 3);
insert into staff_role (staff_id, role_id) values (40, 4);





-- Inserting the values into boatyard
INSERT INTO Boatyard (boatyard_name, boatyard_addr1, BOATYARD_ADDR2, BOATYARD_TOWN, BOATYARD_POSTCODE)
VALUES 
('Marine Services', '53 River Drive', NULL, 'Plymouth', 'PL1 1QR'),
('Sailaway Boatyard', '24 Seafront Road', NULL , 'Southampton', 'SO14 5JZ'),
('Harbour Boatyard', '42 Harbour Lane', NULL , 'Brighton', 'BN2 1TJ'),
('Coastal Boatyard', '72 Beach View', NULL , 'Bristol', 'BS8 1XZ');

-- Inserting the values into the customers
INSERT INTO customers (cust_fname, cust_lname, cust_email, cust_addr1, cust_addr2, cust_town, cust_postcode, cust_phone, cust_dob)
VALUES 
('Ethan', 'Jackson', 'ethan.jackson@gmail.com', '13 Cedar Ave', NULL, 'Oxford', 'S1 13AA', '0753333333', '1980-01-27'), 
('Mia', 'White', 'mia.white@gmail.com', '14 Maple St', NULL, 'Bath', 'B1 14AA', '0754455555', '1985-03-29'), 
('Jacob', 'Harris', 'jacob.harris@gmail.com', '15 Oak Ave', NULL, 'Brighton', 'B2 15AA', '0755555555', '1990-05-31'), 
('Charlotte', 'Clark', 'charlotte.clark@gmail.com', '16 Elm St', NULL, 'Southampton', 'S1 16AA', '0756666666', '1995-07-02'), 
('Noah', 'Lewis', 'noah.lewis@gmail.com', '17 Pine Ave', NULL, 'Norwich', 'N1 17AA', '0757888888', '2000-09-04'),
('Jane', 'Doe', 'jane.doe@gmail.com',  '24 Elm Street', 'Apt 4', 'London', 'W1F 8JL', '07400123456', '1993-04-25'),
('John', 'Smith', 'john.smith@gmail.com',  '36 Oak Road', NULL, 'Manchester', 'M1 2BQ', '07400234567', '1992-05-26'),
('Emily', 'Brown', 'emily.brown@gmail.com',  '48 Pine Ave', NULL, 'Birmingham', 'B1 1CQ', '07400345678', '1991-06-27'),
('William', 'Johnson', 'william.johnson@gmail.com',  '60 Cedar Boulevard', NULL, 'Leeds', 'LS1 5DQ', '07400456789', '1990-07-28'),
('Robert', 'Jones', 'robert.jones@gmail.com',  '72 Maple Terrace', NULL, 'Liverpool', 'L1 1EQ', '07400987654', '1989-12-31'),
('David', 'Broen', 'david.broen@gmail.com', '5 Maple Road', NULL, 'Bristol', 'BS1 5CC', '07450000004', '1996-10-19'),
('Sarah', 'Davis', 'sarah.davis@gmail.com','6 Cedar Avenue', NULL, 'Leeds', 'LS1 5DD', '07460000005', '1997-11-20'),
('Thomas', 'Miller','thomas.miller@gmail.com', '7 Pine Street', NULL, 'Sheffield', 'S1 5EE', '07470000006', '1998-12-21'),
('William', 'Wilson','william.wilson@gmail.com', '8 Elm Road', NULL, 'Newcastle', 'NE1 5FF', '07480000007', '1999-01-22'),
('James', 'Moore', 'james.moore@gmail.com','9 Cherry Avenue', NULL, 'Nottingham', 'NG1 5GG', '07490000008', '2000-02-23'),
('Daniel', 'Taylor', 'daniel.taylor@gmail.com','10 Maple Street', NULL, 'Leicester', 'LE1 5HH', '07500000009', '2001-03-24'),
('Alex', 'Smith', 'alex.smith@gmail.com','1 Main St', 'Apt 2', 'London', 'SW1 1AA', '0741123456', '1995-03-12'),
('Beth', 'Johnson','beth.johnson@gmail.com', '5 Oxford St', NULL, 'London', 'W1 1AA', '0741223457', '1990-04-15'),
('Chris', 'Williams','chris.williams@gmail.com', '10 Park Ave', 'Apt 5', 'Manchester', 'M1 2AA', '0741323458', '1992-05-16'),
('David', 'Brown', 'david.brown@hotmail.com','15 High St', NULL, 'London', 'B1 1AA', '0741423459', '1994-06-17'),
('Emily', 'Davis','emily.davis@gmail.com','20 Baker St', 'Apt 1', 'Liverpool', 'L1 1AA', '0741523460', '1996-07-18'),
('Frank', 'Miller', 'frank.miller@gmail.com','25 King St', NULL, 'Northampton', 'N1 1AA', '0741623461', '1998-08-19'),
('Grace', 'Wilson', 'grace.wilson@gmail.com','30 Queen St', 'Apt 3', 'Birmingham', 'B2 1AA', '0741723462', '2000-09-20'),
('Henry', 'Moore', 'henry.moore@gmail.com', '35 John St', NULL, 'Manchester', 'E1 1AA', '0741823463', '2002-10-21'),
('Isabel', 'Taylor', 'isabel.taylor@gmail.com','40 George St', 'Apt 2', 'Leeds', 'LS1 1AA', '0741923464', '2004-11-22'),
('John', 'Anderson', 'john.anderson@gmail.com','45 Charles St', NULL, 'Bristol', 'S1 1AA', '0742023465', '2002-12-23'),
('Katie', 'Thomas','katie.thomas@gmail.com', '50 David St', 'Apt 1', 'Bristol', 'BS1 1AA', '0742123466', '2001-01-24'),
('Laura', 'Jackson', 'laura.jackson@gmail.com','55 Richard St', NULL , 'Ilford', 'T1 1AA', '0742223467', '2010-02-25'),
('Michael', 'White', 'michael.white@gmail.com','60 Robert St', 'Apt 2', 'Sheffield', 'S2 1AA', '0742323468', '2012-03-26'),
('Natalie', 'Harris', 'natalie.harris@gmail.com','65 Christopher St', NULL, 'Slough', 'W2 1AA', '0742423469', '2014-04-27'),
('Oliver', 'Martin','oliver.martin@gmail.com', '70 Nicholas St', 'Apt 1', 'Newcastle', 'NE1 1AA', '0742523470', '2016-05-28'),
('Penelope', 'Thompson','penelope.thompson@gmail.com', '75 Matthew St', NULL, 'Southampton', 'NW1 1AA', '0742623471', '2018-06-29'),
('Quincy', 'Garcia','quincy.garcia@gmail.com', '80 Joseph St', 'Apt 2', 'Nottingham', 'NG1 1AA', '0742723472', '2020-07-30'),
('Ryan', 'Martinez', 'ryan.martinez@gmail.com','85 Jonathan St', NULL, 'Southampton', 'E2 1AA', '0742823473', '2022-08-31'),
('Jane', 'Doe', 'jane.doe@hotmail.com','10 Downing St', 'Apt 1', 'London', 'SW1A 2AA', '0741122334', '1990-01-02'),
('John', 'Smith', 'john.smith@hotmail.com','1 Buckingham Palace Rd', NULL, 'London', 'SW1A 1AA', '0742234567', '1985-03-04'),
('Emma', 'Johnson','emma.johnson@gmail.com', '2 The Mall', 'Apt 2', 'London', 'SW1A 2PJ', '0743345678', '2000-05-06'),
('Michael', 'Williams','michael.williams@yahoo.com', '3 St James', 'Apt 3', 'London', 'SW1A 1EF', '0744456789', '1995-07-08'),
('Emily', 'Jones', 'emily.jones@gmail.com','4 Piccadilly Circus', 'Apt 4', 'London', 'W1J 0DX', '0745678901', '1992-09-10'),
('David', 'Brown', 'david.brown@yahoo.com','5 Trafalgar Square', 'Apt 5', 'London', 'WC2N 5DN', '0746789012', '1998-11-12'),
('Sophie', 'Davis', 'sophie.davis@gmail.com','6 Oxford St', 'Apt 6', 'London', 'W1D 1AP', '0747898765', '1996-01-14'),
('James', 'Wilson', 'james.wilson@gmail.com','7 Regent St', 'Apt 7', 'London', 'W1B 5SH', '0748901234', '1993-03-16'),
('Olivia', 'Anderson','olivia.anderson@gmail.com', '8 Bond St', 'Apt 8', 'London', 'W1S 1SY', '0749901112', '1991-05-18'),
('William', 'Taylor','william.taylor@gmail.com', '9 Park Lane', 'Apt 9', 'London', 'W1K 1QW', '0741001234', '1997-07-20'),
('Ava', 'Jackson', 'ava.jackson@gmail.com','10 The Strand', 'Apt 10', 'London', 'WC2R 0DW', '0742002345', '1999-09-22'),
('Ethan', 'Miller','ethan.miller@gmail.com', '11 Piccadilly', 'Apt 11', 'London', 'W1J 0DX', '0743003467', '1994-11-24'),
('Isabella', 'Davis','isabella.davis@gmail.com', '12 Oxford Circus', 'Apt 12', 'London', 'W1D 1AP', '0744004578', '2001-01-26'),
('Alexander', 'Wilson', 'alexander.wilson@gmail.com','13 Regents Park', 'Apt 13', 'London', 'NW1 4NR', '0745005612', '2002-03-28'),
('Charlotte', 'Anderson', 'charlotte.anderson@yahoo.com','14 Bond St', 'Apt 14', 'London', 'W1S 1SY', '0746006789', '1998-05-30'),
('Mason', 'Taylor', 'mason.taylor@gmdRail.com','15 Park St', 'Apt 15', 'London', 'W1K 1QW', '0747007890', '1995-07-01'),
('Maple', 'Finn','maple.finn@gmail.com', '63 Main Street', 'Apt 24', 'London', 'W1 1AB', '07412345678', '1980-06-15');







-- Inserting the values into boat
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Stoneseed', 'petrol', '1998-08-12', 'silver', 'JTDZN3EU7FJ544293', 3, '1.6l', 1);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Downy Phlox', 'bunker fuel', '2002-09-04', 'black', 'WAUDG98E96A941464', 4, '1.2l', 2);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Withered Bluegrass', 'diesel', '1974-07-28', 'purple', '1G6DJ1E35D0923834', 4, '1.6l', 3);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Roadside Toadflax', 'petrol', '1979-03-15', 'pink', 'JM1NC2LF5C0655087', 4, '1.4l', 4);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Owyhee Phacelia', 'petrol', '1970-03-11', 'silver', 'JTHBS1BL9D5978312', 4, '1.4l', 5);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Anthracothecium Lichen', 'diesel', '1975-05-04', 'silver', '3D7TP2CTXBG525789', 3, '1.6l', 6);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Corkbark Fir', 'diesel', '1998-11-27', 'black', 'JTJBC1BA9D2310893', 3, '1.2l', 7);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Dancing-lady Orchid', 'petrol', '1991-10-17', 'blue', 'WDDHF2EB1DA644801', 4, '1.4l', 9);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Flagstaff Ragwort', 'diesel', '1993-02-18', 'silver', 'KNAFU5A26B5133523', 1, '1.6l', 9);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Cynodontium Moss', 'diesel', '2003-02-08', 'pink', 'WBABV13406J164668', 2, '1.4l', 10);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Calistoga Ceanothus', 'bunker fuel', '2021-07-22', 'red', '3D73Y3CL1AG810589', 1, '1.2l', 11);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Blackthread Lichen', 'petrol', '1988-10-16', 'purple', '1G4GA5GC8BF200791', 4, '1.2l', 12);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Fancy Nightshade', 'diesel', '1985-11-18', 'purple', '19UUA9F20CA142165', 3, '2.0l', 13);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Fetid Marigold', 'diesel', '1970-05-07', 'silver', 'WBAEV33434P347775', 1, '1.4l', 14);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Field Goldeneye', 'petrol', '2006-03-27', 'black', '3C6JD6CT0CG506937', 1, '2.0l', 15);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Sweetjuice', 'bunker fuel', '1971-06-14', 'grey', 'WAUHF98P17A751200', 4, '1.6l', 16);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Tropical Bushmint', 'diesel', '1984-07-22', 'black', '1G4GD5GG7AF053890', 4, '1.2l', 17);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Kern Cinquefoil', 'petrol', '1981-03-25', 'silver', '1FAHP2D88EG505699', 1, '1.2l', 18);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Cottonwood', 'diesel', '1994-11-23', 'black', 'WAUKFAFL1BN020324', 4, '1.2l', 19);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Colorado Tansyaster', 'petrol', '1984-01-21', 'black', 'WAUTFAFH0DN234109', 4, '1.4l', 20);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Coca', 'diesel', '1982-03-25', 'pink', 'JTHBE1BL3E5380354', 1, '1.4l', 21);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Protothelenella Lichen', 'bunker fuel', '2011-03-23', 'pink', 'WA1EV94L38D583906', 2, '1.2l', 22);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Sphagnum', 'diesel', '2016-05-10', 'black', '2C3CCAKT7CH755328', 2, '2.0l', 23);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Green River Milkvetch', 'diesel', '2017-04-04', 'silver', 'SCFAD02E99G833920', 3, '1.2l', 24);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Rose Gentian', 'petrol', '1999-09-12', 'purple', '1VWAP7A33EC404964', 1, '1.2l', 25);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Dwarf Umbrella Tree', 'diesel', '2012-03-23', 'grey', 'KMHTC6AD2EU975667', 3, '2.0l', 26);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Narrowleaf Crucianella', 'diesel', '2013-08-19', 'blue', '1N6AF0LYXFN051485', 4, '1.4l', 27);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Cobralily', 'petrol', '1980-05-10', 'blue', 'JH4DC23961S782159', 3, '1.2l', 28);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Cahaba Indian Paintbrush', 'diesel', '2005-02-15', 'pink', 'JH4NA21624S850464', 1, '1.2l', 29);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Tropical Waterwillow', 'petrol', '2001-08-31', 'silver', 'JN1AY1AP7DM546598', 4, '2.0l', 30);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Annual Agoseris', 'bunker fuel', '1973-02-04', 'silver', '1GYS4KEF2BR166745', 2, '1.6l', 31);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Whiteray Leastdaisy', 'petrol', '2001-11-08', 'purple', '1GTN1TEX9DZ059558', 1, '1.2l', 32);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Coast Plantain', 'bunker fuel', '2017-05-22', 'purple', 'YV4952CTXD1154495', 1, '1.2l', 33);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Indian Aconite', 'diesel', '2015-08-06', 'blue', '2T1KE4EE1AC756918', 1, '1.4l', 34);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Madagascar Parmotrema Lichen', 'petrol', '2021-10-22', 'silver', 'WBAVA37598N230945', 4, '2.0l', 35);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Gum Bully', 'diesel', '1979-05-13', 'purple', 'WAUGVAFR1AA265935', 4, '1.2l', 36);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Butterfly Orchid', 'diesel', '2019-07-01', 'pink', 'JM1NC2LF5C0898429', 1, '1.4l', 37);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Purple Locoweed', 'diesel', '2021-07-15', 'blue', '5J6TF1H39AL080103', 4, '1.6l', 38);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Mountain Phlox', 'petrol', '1999-10-17', 'black', '1FTKR1AD4BP672950', 1, '2.0l', 39);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Hoary Balsamroot', 'bunker fuel', '2008-04-10', 'grey', 'WBA3A9C52DF941777', 1, '2.0l', 40);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Star Magnolia', 'bunker fuel', '2001-01-15', 'blue', '1GYUCKEFXAR047707', 2, '1.4l', 41);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Panamint Liveforever', 'petrol', '1982-09-03', 'pink', '5UXFG8C59EL724124', 3, '1.4l', 42);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Sanddune Wallflower', 'petrol', '1994-03-15', 'purple', 'JTDBT4K38B1726023', 4, '1.2l', 43);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Loquat', 'petrol', '2017-12-13', 'silver', 'JN8AZ2KRXDT764027', 4, '1.4l', 44);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Sauropus', 'diesel', '2010-01-18', 'silver', 'WAUEG78E96A961433', 1, '1.2l', 45);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Carelessweed', 'diesel', '1991-08-01', 'grey', '1N6AA0EC6EN814777', 3, '1.2l', 46);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Hispid False Mallow', 'petrol', '1976-07-16', 'purple', 'WBAAW33461E064662', 1, '1.4l', 47);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Sanionia Moss', 'diesel', '2016-09-28', 'grey', 'WDDEJ7KB1AA398217', 4, '1.4l', 48);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Lilacbell', 'diesel', '1974-04-08', 'red', 'WAUEH98E56A135705', 1, '1.6l', 49);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Pineapple', 'bunker fuel', '2001-05-19', 'purple', 'KNDJN2A2XE7451095', 1, '2.0l', 50);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Quincy Lupine', 'bunker fuel', '2008-04-18', 'silver', '1FTEW1CF0FK776259', 4, '1.2l', 51);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Yerba De Guava', 'bunker fuel', '2015-05-18', 'grey', 'WDDGF4HBXCF525830', 4, '1.2l', 1);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Cyrtandra', 'bunker fuel', '1989-05-08', 'black', 'WAUFEAFM5AA694205', 3, '1.4l', 1);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Bottom', 'bunker fuel', '1977-10-23', 'blue', '5LMJJ3H53AE049242', 1, '1.2l', 2);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Carolina Coralbead', 'bunker fuel', '2000-03-29', 'purple', '5GADV23137D483257', 2, '2.0l', 2);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Carolina Coralbead', 'bunker fuel', '2000-01-29', 'silver', '5GADV23137D487802', 3, '2.0l', 3);
insert into boat (boat_name, boat_fuel, boat_manufactured, boat_colour, boat_hin, capacity, engine_size, customers) values ('Carolina ', 'bunker fuel', '2003-03-29', 'red', '5GADV23137D484652', 2, '2.0l', 6);






-- Inserting the values into servicing
insert into servicing (service_names, service_desc, service_date, boat) values ('fluid servicing', 'a fluid service has been completed', '2022-09-23', 1);
insert into servicing (service_names, service_desc, service_date, boat) values ('fluid servicing', 'a fluid service has been completed', '2022-12-05', 2);
insert into servicing (service_names, service_desc, service_date, boat) values ('engine maintenance', 'maintenance for the engine is complete', '2022-08-04', 3);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'a full service has been complete', '2022-04-30', 4);
insert into servicing (service_names, service_desc, service_date, boat) values ('engine maintenance', 'maintenance for the engine is complete', '2022-05-24', 5);
insert into servicing (service_names, service_desc, service_date, boat) values ('oil change', 'an oil change has been done', '2023-01-05', 6);
insert into servicing (service_names, service_desc, service_date, boat) values ('oil change', 'an oil change has been done', '2021-11-05', 7);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'a full service has been complete', '2022-02-25', 8);
insert into servicing (service_names, service_desc, service_date, boat) values ('fluid servicing', 'a fluid service has been completed', '2021-11-02', 9);
insert into servicing (service_names, service_desc, service_date, boat) values ('fluid servicing', 'a fluid service has been completed', '2022-01-10', 10);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'a full service has been complete', '2021-12-20', 11);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'a full service has been complete', '2022-03-24', 12);
insert into servicing (service_names, service_desc, service_date, boat) values ('fluid servicing', 'a fluid service has been completed', '2022-08-27', 13);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'a full service has been complete', '2022-06-12', 14);
insert into servicing (service_names, service_desc, service_date, boat) values ('oil change', 'an oil change has been done', '2022-11-22', 15);
insert into servicing (service_names, service_desc, service_date, boat) values ('oil change', 'an oil change has been done', '2022-07-02', 16);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'an oil change has been done', '2021-11-25', 17);
insert into servicing (service_names, service_desc, service_date, boat) values ('oil change', 'an oil change has been done', '2022-09-25', 18);
insert into servicing (service_names, service_desc, service_date, boat) values ('engine maintenance', 'maintenance for the engine is complete', '2022-01-19', 19);
insert into servicing (service_names, service_desc, service_date, boat) values ('engine maintenance', 'maintenance for the engine is complete', '2021-12-11', 20);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'a full service has been complete', '2023-01-29', 21);
insert into servicing (service_names, service_desc, service_date, boat) values ('fluid servicing', 'a fluid service has been completed', '2021-12-02', 22);
insert into servicing (service_names, service_desc, service_date, boat) values ('oil change', 'an oil change has been done', '2022-05-24', 23);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'a full service has been complete', '2021-10-22', 24);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'a full service has been complete', '2022-03-14', 25);
insert into servicing (service_names, service_desc, service_date, boat) values ('fluid servicing', 'a fluid service has been completed', '2023-01-03', 26);
insert into servicing (service_names, service_desc, service_date, boat) values ('oil change', 'an oil change has been done', '2022-06-10', 27);
insert into servicing (service_names, service_desc, service_date, boat) values ('engine maintenance', 'maintenance for the engine is complete', '2021-12-24', 28);
insert into servicing (service_names, service_desc, service_date, boat) values ('fluid servicing', 'a fluid service has been completed', '2021-12-29', 29);
insert into servicing (service_names, service_desc, service_date, boat) values ('engine maintenance', 'maintenance for the engine is complete', '2022-09-12', 30);
insert into servicing (service_names, service_desc, service_date, boat) values ('oil change', 'an oil change has been done', '2022-05-09', 31);
insert into servicing (service_names, service_desc, service_date, boat) values ('fluid servicing', 'a fluid service has been completed', '2022-11-27', 32);
insert into servicing (service_names, service_desc, service_date, boat) values ('engine maintenance', 'maintenance for the engine is complete', '2022-10-25', 33);
insert into servicing (service_names, service_desc, service_date, boat) values ('fluid servicing', 'a fluid service has been completed', '2022-03-28', 34);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'an oil change has been done', '2022-06-20', 35);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'an oil change has been done', '2022-07-25', 36);
insert into servicing (service_names, service_desc, service_date, boat) values ('oil change', 'an oil change has been done', '2022-04-03', 37);
insert into servicing (service_names, service_desc, service_date, boat) values ('engine maintenance', 'maintenance for the engine is complete', '2022-08-23', 38);
insert into servicing (service_names, service_desc, service_date, boat) values ('oil change', 'an oil change has been done', '2021-10-30', 39);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'an oil change has been done', '2022-07-23', 40);
insert into servicing (service_names, service_desc, service_date, boat) values ('oil change', 'an oil change has been done', '2021-10-21', 41);
insert into servicing (service_names, service_desc, service_date, boat) values ('engine maintenance', 'maintenance for the engine is complete', '2022-03-23', 42);
insert into servicing (service_names, service_desc, service_date, boat) values ('engine maintenance', 'maintenance for the engine is complete', '2022-09-09', 43);
insert into servicing (service_names, service_desc, service_date, boat) values ('engine maintenance', 'maintenance for the engine is complete', '2022-12-02', 44);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'an oil change has been done', '2022-01-19', 45);
insert into servicing (service_names, service_desc, service_date, boat) values ('oil change', 'an oil change has been done', '2022-09-20', 46);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'a full service has been complete', '2022-06-17', 47);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'a full service has been complete', '2022-11-19', 48);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'a full service has been complete', '2022-03-20', 49);
insert into servicing (service_names, service_desc, service_date, boat) values ('fluid servicing', 'an oil change has been done', '2022-03-24', 50);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'a full service has been complete', '2021-12-26', 51);
insert into servicing (service_names, service_desc, service_date, boat) values ('fluid servicing', 'a fluid service has been completed', '2022-03-03', 52);
insert into servicing (service_names, service_desc, service_date, boat) values ('oil change', 'an oil change has been done', '2022-12-05', 53);
insert into servicing (service_names, service_desc, service_date, boat) values ('full servicing', 'a full service has been complete', '2022-08-20', 54);
insert into servicing (service_names, service_desc, service_date, boat) values ('oil change', 'an oil change has been done', '2022-06-24', 55);
insert into servicing (service_names, service_desc, service_date, boat) values ('oil change', 'an oil change has been done', '2022-08-27', 56);
insert into servicing (service_names, service_desc, service_date, boat) values ('oil change', 'an oil change has been done', '2022-08-27', 57);



--  Inserting values into the servicing staff boatyard intersection table
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (1, 3, 1);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (7, 2, 2);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (3, 2, 3);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (13, 1, 4);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (5, 1, 5);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (6, 1, 6);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (7, 1, 7);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (8, 2, 8);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (9, 4, 9);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (10, 2, 10);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (11, 2, 11);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (12, 4, 12);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (13, 3, 13);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (14, 2, 14);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (15, 1, 15);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (16, 3, 16);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (17, 2, 17);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (18, 1, 18);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (20, 3, 19);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (19, 4, 20);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (21, 1, 21);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (22, 4, 22);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (23, 4, 23);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (24, 4, 24);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (25, 4, 25);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (26, 4, 26);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (27, 4, 27);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (28, 4, 28);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (29, 4, 29);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (30, 3, 30);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (31, 5, 31);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (32, 3, 32);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (33, 4, 33);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (34, 4, 34);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (35, 4, 35);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (36, 4, 36);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (37, 4, 37);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (38, 3, 38);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (39, 4, 39);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (40, 4, 40);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (1, 4, 41);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (2, 4, 42);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (3, 4, 43);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (4, 4, 44);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (5, 4, 45);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (6, 4, 46);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (2, 4, 47);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (8, 4, 48);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (9, 4, 49);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (10, 4, 50);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (11, 4, 51);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (12, 4, 52);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (4, 4, 53);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (14, 4 , 54);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (15, 4, 55);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (16, 4, 56);
insert into servicing_staff_boatyard (staff_id, boatyard_id, service_id) values (16, 4, 57);