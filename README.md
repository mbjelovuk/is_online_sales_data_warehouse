# Online Sales Data Warehouse
 
**Faculty:** School of Electrical Engineering, University of Belgrade
**Course:** Information Systems 2
**Year:** 2025/2026

## Overview

Project covers the full path from operational database to analytical data warehouse for an online article sales system.

### Operational system
Users can buy and sell articles. Main entities:

- **Users** – name, surname, phone, email, year of birth, gender, place
- **Places** – city/town
- **Categories** – article category
- **Articles** – name, description, price, discount, quantity, seller, category
- **Orders** – date, time, total amount
- **Order items** – quantity and amount per article
- **Cart** – temporary selection of articles
- **Reviews** – rating, description, datetime

### Data warehouse (star schema)

Two analytical areas:

1. **Sales**  
   Total number and amount of sold articles by:
   - article category
   - order time
   - buyer gender & age
   - buyer place
   - seller place

2. **Reviews**  
   Total number and average rating by:
   - review time
   - article
   - buyer gender & age
   - buyer place
   - seller

## Deliverables

| File / Folder                  | Description                                      |
|--------------------------------|--------------------------------------------------|
| `operativna-struktura.sql`     | Operational database structure                   |
| `operativna-podaci.sql`        | Initial data (≥10 rows per table)                |
| `operativna-podaci-dodatno.sql`| Extra data for incremental load testing          |
| `skladiste-struktura.sql`      | Data warehouse (star schema) structure           |
| `punjenje/`                    | Kettle ETL jobs (full + incremental)             |
| `skladiste.xml`                | Mondrian logical schema                          |
| `upiti-mdx.txt`                | Required MDX queries                             |

## Tools used

- MySQL Server - MySQL Workbench
- Kettle (PDI) – ETL
- Mondrian Schema Workbench
  
