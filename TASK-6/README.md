# 📊 TASK 6: Sales Trend Analysis Using Aggregations (MySQL)

## 🚀 Project Overview
This project focuses on analyzing **monthly sales trends** using SQL aggregation techniques.  
By grouping orders by **year and month**, we uncover insights about **revenue growth** and **order volume over time**.

This task strengthens real-world SQL skills used in **data analysis and reporting**.

---

## 🎯 Objective
- Analyze **monthly revenue**
- Analyze **monthly order volume**
- Understand **time-based trends** using SQL aggregations

---

## 🛠 Tools & Technologies
- **Database:** MySQL  
- **Language:** SQL  
- **Dataset:** Online Sales CSV  

---

## 📂 Dataset Details
The dataset contains sales records with the following important columns:

- `order_id` – Unique order identifier  
- `order_date` – Date of order  
- `amount` – Total revenue per order  

Data is loaded from a CSV file using `LOAD DATA INFILE`.

---

## 🧱 Table Structure
```sql
CREATE TABLE orders (
    order_id   BIGINT,
    order_date DATE,
    amount     DECIMAL(14,2)
);
