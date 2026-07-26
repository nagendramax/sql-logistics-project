USE logistics_db;

-- Insert sample drivers
INSERT INTO drivers (first_name, last_name, phone_number, hire_date) VALUES
('John', 'Smith', '555-0101', '2023-01-15'),
('Sarah', 'Johnson', '555-0202', '2022-11-20'),
('Michael', 'Brown', '555-0303', '2024-03-10'),
('Emily', 'Davis', '555-0404', '2021-06-05');

-- Insert sample shipments
INSERT INTO shipments (tracking_number, origin_city, destination_city, weight_kg, shipping_cost, status, dispatch_date, delivery_date, driver_id) VALUES
('TRK1001', 'New York', 'Chicago', 150.50, 450.00, 'Delivered', '2026-06-01', '2026-06-04', 1),
('TRK1002', 'Los Angeles', 'Phoenix', 85.00, 200.00, 'Delivered', '2026-06-02', '2026-06-03', 2),
('TRK1003', 'Chicago', 'Dallas', 320.00, 750.00, 'In Transit', '2026-06-10', NULL, 3),
('TRK1004', 'Houston', 'Miami', 210.00, 600.00, 'Delayed', '2026-06-05', NULL, 1),
('TRK1005', 'Seattle', 'Denver', 95.50, 310.00, 'Delivered', '2026-06-08', '2026-06-11', 4);