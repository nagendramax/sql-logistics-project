-- Create the database
CREATE DATABASE IF NOT EXISTS logistics_db;
USE logistics_db;

-- 1. Drivers Table
CREATE TABLE drivers (
    driver_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(20),
    hire_date DATE
);

-- 2. Shipments Table
CREATE TABLE shipments (
    shipment_id INT PRIMARY KEY AUTO_INCREMENT,
    tracking_number VARCHAR(50) UNIQUE,
    origin_city VARCHAR(50),
    destination_city VARCHAR(50),
    weight_kg DECIMAL(10,2),
    shipping_cost DECIMAL(10,2),
    status VARCHAR(20), -- 'Delivered', 'In Transit', 'Delayed'
    dispatch_date DATE,
    delivery_date DATE,
    driver_id INT,
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id)
);