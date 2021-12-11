# Pewlett-Hackard-Analysis
This analysis is conducted so that the detailed information of number of future retirees can be obtained for the Pewlett Hackard company. Various other analysis related to mentorship and eligibilities will be discussed in detail here.

## Background:
Pewlett Hackard is a huge and a well established company having several thousand employees. As baby boomers begin to retire at a rapid rate, the company is looking towards the future in two ways:
- Offering retirement package for those who meet certain criterias.
- Its starting to think about which positions will need to be filled up in the near future. The number of upcoming retirements would leave behind many job openings. The company needs to gear up and prepare for all these vacancies.

Bobby is an HR Analyst whose task is to perform employee research. He needs to find out the following answers for the same:
-1) Who will be retiring in the next few years.
-2) How many positions will the company need to fill.

This analysis will help future proof Pewlett Hackard by generating a list of all employees eligible for the retirement package. The employee data that Bobby needs is only available in 6 excel(.csv) files since the company has been maily using MS Excel and Visual Basic Analysis for all their data related tasks. Now they have decided to update their methods and switch to SQL, which is a definite upgrade considering the amount of data. My task is to help Bobby build an employee database with SQL by applying data modeling, engineering and analysis skills.

## Overview:
Here, we will be applying knowledge of DataFrames and tabular data and create entity relationship diagrams (ERDs), import data into a database, troubleshoot common errors, and create queries that use data to answer questions. This project consists of two technical analysis deliverables and a written report as follows:
- Deliverable 1: The Number of Retiring Employees by Title
- Deliverable 2: The Employees Eligible for the Mentorship Program
- Deliverable 3: A written report on the employee database analysis (README.md)

## Tools used:
#### SQL - 
Databases are used everywhere—small and large businesses, and even individuals working on personal projects—and SQL is one of the most widely used query languages. Its ability to organize and query data, especially on a large scale, makes SQL knowledge a highly sought after skill in the workforce. SQL statements will be used to perform data analysis. For this project we will be using the following two tools:

- 1. PostgreSQL/Postgres - Postgres SQL is a relational database system holding data. This type of database consists of tables and their predefined relationships. It is a reliable and easy to use database for SQL. Itcreates a local server on the computer which is where the databases created will be stored. The databses will be storing the tables nad the data.
- 2. pgAdmin - It is the graphical user interface (GUI) that talks to Postgres. pgAdmin is an interface specifically built for Postgres. It is also user-friendly and easy to navigate with loads of documentation available. It is the window into our database, that is, it's where queries are written and executed and where results are viewed. While Postgres holds the files, pgAdmin provides the access. All SQL actions take place within these two programs.
#### Entity Relationship Diagrams(ERDs) - 
An entity relationship diagram (ERD) is a type of flowchart that highlights different tables and their relationships to each other. The ERD does not include any actual data, but it does capture the following pertinent information from each CSV file:

- Primary keys
- Foreign keys
- Data types for each column
The ERD also shows the flow of information from one table to another. There are three types of ERDs: conceptual, logical, and physical. Each one builds upon the other—you need the conceptual ERD to build a logical ERD to build a physical ERD.
- 3. Quick DBD - Using an online tool called Quick Database Diagrams ("Quick DBD" for short), we'll help Bobby start by familiarizing ourselves with the webpage, then create a conceptual ERD.  Our flow chart will help us navigate through the relationships more easily than if we had all six CSV files open side-by-side. Quick DBD is a great resource—it's intuitive and creates clean and comprehensible ERDs that are easily exported as image files. http://quickdatabasediagrams.com/

#### Data Sources-
departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv provided by the company.

## Procedure:
- Downloaded the 6 .csv files and analyzed the data by checking the number of columns and data.
- Created an ERD using the online tool  to get an idea of the primary keys and the foreign keys in the 6 databases.
![EmployeeDB](https://user-images.githubusercontent.com/23488019/145668542-2cd74e6d-6442-489f-8431-2ab81e50db58.png)


- The schema was made by creating tables in pgAdmin for each .csv. 
- Write queries as per the deliverables and export data as .csv files.


## Results: 

-1)
-2)
-3)
-4)

## Summary:

#### - 1) How many roles will need to be filled as the "silver tsunami" begins to make an impact?



#### - 2) Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?


#### - 3)
#### - 4)

## References:-

## Useful Articles:-
