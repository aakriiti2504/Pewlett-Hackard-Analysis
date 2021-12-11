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
### SQL - 
Databases are used everywhere—small and large businesses, and even individuals working on personal projects—and SQL is one of the most widely used query languages. Its ability to organize and query data, especially on a large scale, makes SQL knowledge a highly sought after skill in the workforce. SQL statements will be used to perform data analysis. For this project we will be using the following two tools:

#### - 1. PostgreSQL/Postgres - 
Postgres SQL is a relational database system holding data. This type of database consists of tables and their predefined relationships. It is a reliable and easy to use database for SQL. Itcreates a local server on the computer which is where the databases created will be stored. The databses will be storing the tables and the data.

#### - 2. pgAdmin - 
It is the graphical user interface (GUI) that talks to Postgres. pgAdmin is an interface specifically built for Postgres. It is also user-friendly and easy to navigate with loads of documentation available. It is the window into our database, that is, it's where queries are written and executed and where results are viewed. While Postgres holds the files, pgAdmin provides the access. All SQL actions take place within these two programs.

### Entity Relationship Diagrams(ERDs) - 
An entity relationship diagram (ERD) is a type of flowchart that highlights different tables and their relationships to each other. The ERD does not include any actual data, but it does capture the following pertinent information from each CSV file:

- Primary keys
- Foreign keys
- Data types for each column
The ERD also shows the flow of information from one table to another. There are three types of ERDs: conceptual, logical, and physical. Each one builds upon the other—you need the conceptual ERD to build a logical ERD to build a physical ERD.

#### - 3. Quick DBD - 
Using an online tool called Quick Database Diagrams ("Quick DBD" for short), we'll help Bobby start by familiarizing ourselves with the webpage, then create a conceptual ERD.  Our flow chart will help us navigate through the relationships more easily than if we had all six CSV files open side-by-side. Quick DBD is a great resource—it's intuitive and creates clean and comprehensible ERDs that are easily exported as image files. http://quickdatabasediagrams.com/

### Data Sources-
departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv provided by the company.

## Procedure:
- Downloaded the 6 .csv files and analyzed the data by checking the number of columns and data.
- Created an ERD using the online tool  to get an idea of the primary keys and the foreign keys in the 6 databases.
![EmployeeDB](https://user-images.githubusercontent.com/23488019/145668542-2cd74e6d-6442-489f-8431-2ab81e50db58.png)


- The schema was made by creating tables in pgAdmin for each .csv. 
- Write queries as per the deliverables and export data as .csv files.
- Export tabulated results in .csv file formats.

## Results: 
Various queries were run to get our analysis done. Some of the details of the deliverables are discussed below:
- 1. Using SQL queries, a a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955.

![1a](https://user-images.githubusercontent.com/23488019/145671006-316e7720-f317-4643-9609-747c5f99eda9.PNG)

Because some employees may have multiple titles in the database—for example, due to promotions,we will use the DISTINCT ON statement to create a table that contains the most recent title of each employee. Then, use the COUNT() function to create a final table that has the number of retirement-age employees by most recent job title.

![1atable](https://user-images.githubusercontent.com/23488019/145671066-ca4d21dd-ece5-43bc-8fd2-f2648857b39c.PNG)
 with the generated retirement_titles table we can get information of every eligible employee for retirement. We can also see how long they worked at every position during their career and get basic information regarding their start and end dates. We can also note that there are many entries of same employees with different positions in the company.

- 2. There are duplicate entries for some employees because they have switched titles over the years.
![1b](https://user-images.githubusercontent.com/23488019/145670654-f9953793-803a-41a3-a78c-f4d5270ee088.PNG)
The Distinct On statement was used to remove duplicate rows from the results and keep the most recent title of each employee.
The columns of emp_no, first_name, last_name and title from the retirement_titles table. The data was sorted in descending order and the data was exported to unique_titles.csv. 

![1](https://user-images.githubusercontent.com/23488019/145670698-2ab7052a-28f2-48ac-b37b-1040f4bd65bc.PNG)

All the duplicate rows were removed resulting into a clean dataset. 


- 3. The query was written here to retrieve the number of employees by their most recent job title who are about to retire. 
 
![1c](https://user-images.githubusercontent.com/23488019/145670563-366d9725-4fc7-4094-baf0-82ba1a822074.PNG)

The number of titles were retrieved from the Unique_titles table. The count statement is used to count the number of employees of a particular title and the results are saved into the retiring_titles table. data is then exported to a csv file. The result is grouped by title and sorted in descending order.

![count](https://user-images.githubusercontent.com/23488019/145670418-8f067b0d-ddb1-4df9-a98f-2ef057c7c2d9.PNG)

From the result obtained it can be noted that there are 29414 Senior Engineers, 28254 Senior Staff, 14222 Enginner, 12243 Staff, 4502 Technique Leader, 1761 Assistant Engineer and just 2 Managers. In all, there are 90,398 that are about to retire.

- 4. The Mentorship Eligibility table holds the employees who are eligible to participate in a mentorship program. The eligibility requires the employees to be currently employed and born between January 1, 1965 and December 31, 1965. 

![mentor code](https://user-images.githubusercontent.com/23488019/145670081-af9c78ad-7ca4-4108-8883-3fd841e8bbae.PNG)

Inner joins were used to join the titles and dept_emp tables with the employees table using the primary key 'emp_no'. Various columns such as the emp_no, first_name, last_name, birth_date, from_date, to_date and title were retrieved from these tables. The distinct on statement was used on emp_no so that the first occurrence of the employee number for each set of rows can be retrieved. The tabular data was exported into the mentorship_eligibility.csv which can be found in the Data folder. The tabulated results can be seen below:

![mentor table](https://user-images.githubusercontent.com/23488019/145670251-b6438bf1-5f45-42d1-b5fc-a848efb85450.PNG)

From the table it can be noted that a lot of the current employees eligible for the mentorship are at Senior level.

## Summary:

#### - 1) How many roles will need to be filled as the "silver tsunami" begins to make an impact?
 As the "Silver Tsunami" begins to make an impact, a total of 90,398 positions will need to be filled since that is the total number of employees that are going to be retiring in near future. The company has a big task of filiing in these vacancies.
 
![sum ret](https://user-images.githubusercontent.com/23488019/145671785-54f360a7-6933-4635-a4b8-cb5fd06ea045.PNG)


#### - 2) Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
 Unfortunately there are not enough qualified, retirement ready employees in the departments to mentor the next generation of Pewlett Hackard employees. As per the mentorship eligibility analysis, it was found that they have just 1,940 employees eligible to provide mentorship in the company.
 
 
 ![total mentors](https://user-images.githubusercontent.com/23488019/145672017-bfa10cfa-2bf8-44ea-9c38-7e6ce8fe81bd.PNG)
 
 
It can be noted that there are 1549 employees eligible for the mentorship eligibility program. 

#### - 3) Count number of eligible mentorship program employees - 
I ran a query to count the total number of employees eligible for the Mentorship program and th eresult obtained is 1549.


![total mentors](https://user-images.githubusercontent.com/23488019/145672170-db78976d-3f64-44c7-b423-97ab2cdc1341.PNG)


#### - 4) Find the number of female employees worked/working in the company
By using the where clause female employees were sorted out of the entire database and saved in female_employees.csv


![female empl](https://user-images.githubusercontent.com/23488019/145673602-05ad4432-0e18-4d6d-bc7c-642eba4a9e5d.PNG)


![count female](https://user-images.githubusercontent.com/23488019/145673603-8baec74d-6646-400a-af04-0cc695440cd0.PNG)


Then the number of female employees worked in the company so far are 120,051.

Hence, from all our results it can be summarized that almost 1/3 rd of the employees are nearing the retirement age and the company needs to find out ways to cover up the void over the next couple years. Enough workforce may not be available in the company to be mentoring new employees at a fast rate hence provisions need to be made to make this process smooth and with least turbulence.

## References:

- https://www.postgresql.org/docs/9.5/sql-select.html
- https://courses.bootcampspot.com/courses/791/pages/7-dot-2-1-create-a-database?module_item_id=301049

## Useful Articles:

- https://www.techonthenet.com/postgresql/joins.php
- https://www.familysearch.org/en/blog/millennial-generation
