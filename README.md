Banking Management System (SQL Project)


The Banking Management System is a SQL-based database project designed to manage and analyze banking operations such as customer details, account information, transactions, account relationships, interest rates, and customer notifications.
This project demonstrates the use of relational database concepts through real-world banking scenarios.

* To design a structured database for banking operations
* To manage customers and multiple account types efficiently
* To track transaction history and account balances
* To analyze banking data using SQL queries

Database Tables

* BANK_CUSTOMER – Stores customer personal details
* BANK_ACCOUNT / BANK_ACCOUNT_DETAILS – Stores account information and balances
* BANK_ACCOUNT_TRANSACTION – Records deposits, withdrawals, and transfers
* BANK_ACCOUNT_RELATIONSHIP_DETAILS – Maintains primary and secondary account links
* BANK_INTEREST_RATE – Stores interest rates for account types
* BANK_CUSTOMER_MESSAGES – Stores bank notifications and alerts

Technologies Used
* SQL
* MySQL Workbench

Key SQL Concepts Used

* DDL & DML commands (`CREATE`, `INSERT`, `UPDATE`, `DELETE`)
* Joins (INNER JOIN, LEFT JOIN)
* Aggregate functions (`SUM`, `AVG`, `COUNT`)
* `GROUP BY` and `HAVING`
* Date filtering using `BETWEEN`, `MONTH`, `YEAR`
* NULL handling using **COALESCE**
* Relational data modeling (Primary & Foreign Keys)

Key Features

* Customer-wise average balance calculation
* Credit card balance handling using COALESCE
* Monthly and quarterly transaction analysis
* Primary and secondary account relationship tracking
* Adhoc customer notifications for savings account holders

Sample Use Cases

* Retrieve customer transaction history for a specific period
* Calculate deducted balance using negative transactions
* Identify savings accounts linked with credit cards
* Generate reports for first-quarter transactions

How to Run the Project

1. Open **MySQL Workbench**
2. Create a new database
3. Run the table creation scripts
4. Insert the sample data
5. Execute SQL queries for analysis

Conclusion

This project provides hands-on experience in **SQL querying, database design, and data analysis** using a real-world banking system. It strengthens understanding of relational databases and complex query handling.
