📚 Library Management System (SQL - PostgreSQL)
A full-fledged Library Management System implemented using PostgreSQL. This project covers database schema design, data manipulation, report generation, and stored procedures — perfect for academic projects or foundational backend database practice.

📌 Table of Contents
About the Project

-Database Schema
-Features & Tasks
-Stored Procedures
-Sample Queries
-Usage Instructions
-Technologies Used

📖 About the Project
This project simulates a Library Management System using PostgreSQL. It handles various operations such as:

Book inventory management

>Member registration
>Book issuing and return tracking
>Revenue reporting
>Branch performance
Late returns and active member tracking

Automation through stored procedures

It also demonstrates how relational databases and foreign key constraints can be used to enforce data integrity in a multi-table system.

🧩 Database Schema
The following main tables are used:

Table Name	Description
branch	Stores branch details and managers
employees	Stores employee data and branch links
books	Book inventory and status
members	Registered members of the library
issued_status	Tracks books issued to members
return_status	Tracks returned books and dates

Each table is connected through appropriate foreign key relationships.

🚀 Features & Tasks
🔧 Basic DDL and DML Tasks
Create books, members, employees, branches

Insert, update, and delete records

Foreign key enforcement and normalization

📊 Analytical Tasks
Total rental income by category
Books not returned
Books issued by specific employees
Members with overdue books (30+ days)
Active members in the last 6 months
Branch-wise performance report (issues, returns, revenue)
Top employees by books processed

📝 CTAS Queries
book_issued_cnt: Summary of books issued
active_members: Members active in last 6 months
branch_reports: Branch performance table
expensive_books: Books with rental price > 7.00

⚙️ Stored Procedures
1. add_return_records(...)
Automates return process:
Inserts into return_status
Updates book status to 'yes'
Displays return confirmation

2. issue_book(...)
Automates issue process:
Checks book availability
Inserts into issued_status
Updates book status to 'no'
Displays book issue confirmation or error

📥 Usage Instructions
Set up PostgreSQL on your machine.

Create a schema and run the full SQL script from this project.

Use any SQL client like:

1.pgAdmin
2.DBeaver
3.DataGrip
4.psql CLI

🛠️ Technologies Used
PostgreSQL
PL/pgSQL
SQL Queries (DDL, DML, JOINS, GROUP BY, CTAS)
Stored Procedures & Constraints
