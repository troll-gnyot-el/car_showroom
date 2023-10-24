-- Satellite for Customers
CREATE TABLE Sat_Customer (
    sat_customer_id SERIAL PRIMARY KEY,
    hub_customer_id INTEGER REFERENCES Hub_Customers(hub_customer_id),
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    start_date DATE,
    end_date DATE,
    is_current BOOLEAN,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100)
);

-- Satellite for Cars
CREATE TABLE Sat_Car (
    sat_car_id SERIAL PRIMARY KEY,
    hub_car_id INTEGER REFERENCES Hub_Cars(hub_car_id),
    make VARCHAR(50),
    model VARCHAR(50),
    year INTEGER,
    price NUMERIC(10, 2),
    start_date DATE,
    end_date DATE,
    is_current BOOLEAN,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100)
);

-- Satellite for Manufacturers
CREATE TABLE Sat_Manufacturer (
    sat_manufacturer_id SERIAL PRIMARY KEY,
    hub_manufacturer_id INTEGER REFERENCES Hub_Manufacturers(hub_manufacturer_id),
    manufacturer_name VARCHAR(100),
    country VARCHAR(50),
    start_date DATE,
    end_date DATE,
    is_current BOOLEAN,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100)
);

-- Satellite for Salespeople
CREATE TABLE Sat_Salesperson (
    sat_salesperson_id SERIAL PRIMARY KEY,
    hub_salesperson_id INTEGER REFERENCES Hub_Salespeople(hub_salesperson_id),
    salesperson_name VARCHAR(100),
    hire_date DATE,
    start_date DATE,
    end_date DATE,
    is_current BOOLEAN,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100)
);

-- Satellite for Dealerships
CREATE TABLE Sat_Dealership (
    sat_dealership_id SERIAL PRIMARY KEY,
    hub_dealership_id INTEGER REFERENCES Hub_Dealerships(hub_dealership_id),
    dealership_name VARCHAR(100),
    location VARCHAR(100),
    start_date DATE,
    end_date DATE,
    is_current BOOLEAN,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100)
);
