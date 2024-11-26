# CRUDApplication

# Project: Student Information Management System

## Purpose:
This project is a simple web-based application designed using JSP and MySQL. It allows users to:
1. Insert student/user information (Name, Email, Address, Course).
2. Update existing information.
3. View all records from the database.

## Key Features:
- Dynamic connection to the database (MySQL).
- CRUD Operations: Create, Read, Update, and Delete records.
- User-friendly interface with Bootstrap integration.



# How to Run:
1. Clone or Download the project from the repository.
2. Open the project in NetBeans.
3. Configure the database:
   - Create a database named `python_db` in MySQL.
   - Create tables:
     - `first` table with columns: `id (int), name (varchar)`.
     - `infor` table with columns: `id (int), name (varchar), email (varchar), address (varchar), course (varchar)`.
   - Insert some test data if needed.
4. Run the project:
   - Deploy it on a Tomcat server from NetBeans.
   - Open the browser and visit: `http://localhost:8080/YourProjectName/index.jsp`.
