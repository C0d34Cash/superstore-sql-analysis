# Superstore SQL Analysis

Analyzed 9,800+ sales records from the Global Superstore dataset using SQLite to uncover revenue drivers, customer patterns, and regional trends. Built as a portfolio project for entry-level Data Analyst roles.

### 🛠 Tech Stack
`SQL` `SQLite` `DB Browser for SQLite` `Data Analysis` `GROUP BY` `CTE` `Window Functions` `Business Intelligence`

### 📊 Dataset
**Global Superstore** - 9,800 rows, 21 columns  
Key fields: Order Date, Region, State, Category, Sub-Category, Product Name, Sales, Profit, Customer Name, Ship Mode

### 📝 Business Questions Solved
| # | Question | SQL Concepts Used |
| --- | --- | --- |
| 1 | Total sales and total orders | SUM, COUNT |
| 2 | Top 10 products by revenue | GROUP BY, ORDER BY, LIMIT |
| 3 | Best region + top 5 states | GROUP BY, WHERE |
| 4 | Year-over-year sales 2016-2019 | strftime, GROUP BY |
| 5 | Top 10 customers by sales | GROUP BY, ORDER BY, LIMIT |
| 6 | Shipping performance by mode | GROUP BY, AVG |
| 7 | Top 3 sub-categories per category | CTE, ROW_NUMBER() |

### 🔍 Key Insights
1. **Products**: Phones `$327,944` and Chairs `$322,933` are top revenue drivers
2. **Risk**: 82% of Furniture revenue from just Chairs + Tables 
3. **Region**: West leads. Top states: California, New York, Texas
4. **Customer**: Top customer spent `$25,961` over 4 years
5. **Shipping**: Standard Class most used but slowest

### ▶ How to Run Queries
1. Download `superstore.db` from Kaggle "Global Superstore Dataset"
2. Open in DB Browser for SQLite
3. Run queries from `superstore_analysis.sql` file
4. Check `results/` folder for CSV outputs

### 📁 Repository Structure

### 👤 Author
Debojyoti Mondal | Aspiring Data Analyst  
LinkedIn: www.linkedin.com/in/debojyoti-mondal-654891329

---
*This project demonstrates core SQL skills: aggregation, filtering, CTEs, and window functions*
