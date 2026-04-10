# 🛢️ Oil & Gas SQL Project

## 📌 Project Description (Extended)

The Oil & Gas SQL Project is a structured data analysis project designed to simulate real-world operations in the oil and gas industry. It uses relational database tables to model key business processes such as oil production, equipment management, employee tracking, maintenance scheduling, and logistics/shipments.

The goal of this project is to demonstrate how SQL can be used to extract meaningful insights from operational data. By querying structured datasets, we can identify production trends, monitor equipment performance, evaluate operational efficiency, and support data-driven decision-making in a large-scale industrial environment.

This project reflects typical analytics tasks performed in energy companies where data is used to optimize production, reduce downtime, and improve supply chain efficiency.

---

## 📊 Key Areas of Analysis

- Oil and gas production performance across wells  
- Equipment usage, efficiency, and failure tracking  
- Maintenance history and downtime analysis  
- Employee involvement in operations  
- Shipment and logistics performance tracking  

---

## 🗄️ Database Tables

- **wells** – stores information about oil and gas wells  
- **production** – records daily or monthly output of oil and gas  
- **equipment** – details drilling and production machines  
- **maintenance_logs** – tracks repairs and maintenance activities  
- **employees** – staff involved in operations  
- **shipments** – tracks transportation of oil and gas products  

---

## 🎯 Project Objectives

- Analyze total production per well  
- Identify high-performing and low-performing wells  
- Track equipment performance and downtime  
- Monitor maintenance frequency and failures  
- Evaluate logistics and shipment efficiency  
- Support operational decision-making using SQL  

---

## 🧠 Example SQL Query

```sql
-- Total oil and gas production per well
SELECT 
    well_id,
    SUM(oil_barrels) AS total_oil,
    SUM(gas_mcf) AS total_gas
FROM production
GROUP BY well_id
ORDER BY total_oil DESC;
