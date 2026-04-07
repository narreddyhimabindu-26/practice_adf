# Azure Data Migration: On-Prem SQL Server to ADLS Gen2

## 🔷 Project Overview
This project demonstrates an end-to-end data migration pipeline from an on-premises SQL Server to Azure Data Lake Storage Gen2 using Azure Data Factory.

The solution implements a scalable, metadata-driven framework with incremental data loading using watermark logic.

---

## 🔷 Architecture
- Source: On-Prem SQL Server
- Integration: Self-Hosted Integration Runtime
- Processing: Azure Data Factory
- Storage: ADLS Gen2 (Parquet format)

---

## 🔷 Key Features
- Metadata-driven pipeline for dynamic table ingestion
- Incremental load using watermark table
- Parent-child pipeline orchestration
- Dynamic query generation for incremental loads
- Partitioned data storage (date-based folders)

---

## 🔷 Pipeline Flow
1. Lookup metadata (table list + watermark values)
2. ForEach loop to process each table
3. Fetch MAX watermark value from source
4. IF condition to check new data
5. Copy activity (Full / Incremental load)
6. Store data in ADLS (Parquet format)
7. Update watermark using stored procedure

---

## 🔷 Technologies Used
- Azure Data Factory
- Azure Data Lake Storage Gen2
- SQL Server
- Stored Procedures

---

## 🔷 Outcome
- Reduced data processing time using incremental load
- Enabled scalable ingestion across multiple tables
- Improved performance and data consistency
