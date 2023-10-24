-- Link for Sales
CREATE TABLE Link_Sales (
    link_sale_id SERIAL PRIMARY KEY,
    hub_customer_id INTEGER REFERENCES Hub_Customers(hub_customer_id),
    hub_car_id INTEGER REFERENCES Hub_Cars(hub_car_id),
    hub_salesperson_id INTEGER REFERENCES Hub_Salespeople(hub_salesperson_id),
    hub_dealership_id INTEGER REFERENCES Hub_Dealerships(hub_dealership_id),
    load_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    record_source VARCHAR(100)
);
