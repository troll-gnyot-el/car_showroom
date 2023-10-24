-- Hub for Customers
CREATE TABLE Hub_Customers (
    hub_customer_id SERIAL PRIMARY KEY,
    source_customer_id INTEGER,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100)
);

-- Hub for Cars
CREATE TABLE Hub_Cars (
    hub_car_id SERIAL PRIMARY KEY,
    source_car_id INTEGER,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100)
);

-- Hub for Manufacturers
CREATE TABLE Hub_Manufacturers (
    hub_manufacturer_id SERIAL PRIMARY KEY,
    source_manufacturer_id INTEGER,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100)
);

-- Hub for Salespeople
CREATE TABLE Hub_Salespeople (
    hub_salesperson_id SERIAL PRIMARY KEY,
    source_salesperson_id INTEGER,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100)
);

-- Hub for Dealerships
CREATE TABLE Hub_Dealerships (
    hub_dealership_id SERIAL PRIMARY KEY,
    source_dealership_id INTEGER,
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100)
);
