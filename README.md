# 🚚 SQL Logistics & Shipment Tracking Project

An end-to-end data analysis project simulating a logistics and supply chain operations database using **MySQL**. 

## 📊 Project Overview
This project tracks shipments, drivers, delivery statuses, and shipping costs to uncover operational bottlenecks, calculate revenue summaries, and evaluate driver performance.

## 🛠️ Tech Stack
* **Database:** MySQL
* **Version Control:** Git & GitHub

## 📁 Database Schema
* **Drivers Table:** Stores employee contact info and hire dates.
* **Shipments Table:** Stores tracking details, origin/destination cities, weights, costs, statuses, and foreign keys linked to drivers.

## 📐 Entity-Relationship (ER) Diagram

mermaid
erDiagram
    DRIVERS ||--o{ SHIPMENTS : handles
    
    DRIVERS {
        int driver_id PK
        string first_name
        string last_name
        string phone_number
        date hire_date
    }
    
    SHIPMENTS {
        int shipment_id PK
        string tracking_number UK
        string origin_city
        string destination_city
        decimal weight_kg
        decimal shipping_cost
        string status
        date dispatch_date
        date delivery_date
        int driver_id FK
    }
    

## 🔍 Key Business Insights & Queries
Here are examples of operational questions answered using SQL:
1. **Active Tracking:** Filtering shipments currently *In Transit* or *Delayed*.
2. **Driver Assignment:** Using `JOIN`s to pair shipment routes with their assigned drivers.
3. **Revenue Summary:** Aggregating total revenue and shipment counts grouped by status.
4. **Route Cost Analysis:** Calculating average shipping costs per destination city using `ROUND()` and `AVG()`.
5. **Driver Workload:** Using `HAVING` clauses to isolate high-activity drivers managing multiple shipments.

## 🚀 How to Run
1. Run `schema.sql` to create the database and tables.
2. Run `seed.sql` to populate the database with sample data.
3. Run `queries.sql` to execute the analysis.