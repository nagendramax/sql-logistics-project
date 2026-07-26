USE logistics_db;

-- Find all shipments that are currently 'In Transit' or 'Delayed'
SELECT 
    tracking_number,
    origin_city,
    destination_city,
    status,
    shipping_cost
FROM shipments
WHERE status IN ('In Transit', 'Delayed');

-- Combine shipments and drivers to see who is handling each shipment
SELECT 
    s.tracking_number,
    CONCAT(d.first_name, ' ', d.last_name) AS driver_name,
    s.origin_city,
    s.destination_city,
    s.status
FROM shipments s
JOIN drivers d ON s.driver_id = d.driver_id;

-- Find total shipping cost and number of shipments grouped by status
SELECT 
    status,
    COUNT(shipment_id) AS total_shipments,
    SUM(shipping_cost) AS total_revenue
FROM shipments
GROUP BY status;


-- 1. Find the average shipping cost for each destination city
SELECT 
    destination_city,
    COUNT(shipment_id) AS total_shipments,
    ROUND(AVG(shipping_cost), 2) AS avg_shipping_cost
FROM shipments
GROUP BY destination_city;

-- 2. Find drivers who have handled more than one shipment using HAVING
SELECT 
    d.driver_id,
    CONCAT(d.first_name, ' ', d.last_name) AS driver_name,
    COUNT(s.shipment_id) AS shipment_count
FROM drivers d
JOIN shipments s ON d.driver_id = s.driver_id
GROUP BY d.driver_id, driver_name
HAVING COUNT(s.shipment_id) > 1;