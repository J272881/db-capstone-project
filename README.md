<h1># db-capstone-project (Project Walkthrough)</h1>
Welcome, to my repository for the Meta database engineering capstone project. In this read me, I will guide you through a step by step process of the project, and showcase my skills in data modeling, data analysis, SQL, Python, data clients, and data visualization. The capstone project requirements are spread out in a four week course, where each week we were required to complete a set of tasks in order to build an functioning database system. 

<h1> Week1: Project Set Up</h1>
This module provides practical hands on experience with using MySQL. Set up a MySQL instance server in MySQL Workbench, then create an ER Diagram data model and implement it in MySQL.
<h3><b>Learning Objectives<h2></3>
 <p> Seting up MySQL instance server in MySQL Workbench and create an ER diagram data model and implement it in MySQL. Also Setting up a Git Repository</p>
<h2> Exercise: Set up the MySQL instance server in MySQL Workbench </h2>
Scenario 
Little Lemon needs to build a robust relational database system in MySQL to store large amounts of data which they can also easily manage and locate as required. Little Lemon have decided to use MySQL Workbench to develop their new database system. They need you to help them set up their MySQL environment to prepare for the design and development of their database. 
<h3> Task 1</h3>
Creating a new user is the most secure way to connect to your MySQL database. In this first task, you need to use MySQL Workbench to create a new user account. 

Here is some guidance for completing this task:

Log in to the MySQL Server using the root user.

Select Administration tab from the Navigator section.

Select Add account. 

Provide a meaningful username and a strong password.

Grant the new user the right to perform all tasks. 


<h3>Task 2</h3>
To prepare for building and managing your database, you need to be connected to a MySQL server. In this task you need to create a new MySQL connection. 

Here is some guidance for completing this task:

In the MySQL Workbench home screen, select MySQL connection tab. 

Select the plus icon to open the Setup New Connection form. 

Fill in the form to create a new server instance. 

Click the Test Connection button to check that the settings work as required. 

Once you have completed this task, you can use this connection to begin working with database schemas and SQL queries.

Solution

![image](https://user-images.githubusercontent.com/98139941/236061321-9fc2ba20-79f2-426d-8780-92ccb6d952b8.png)



<h2> Exercise: Create an ER diagram data model and implement it in MySQL </h2>

Little Lemon needs to build a robust relational database system in MySQL in which they can store large amounts of data. They then need to easily manage and find this data as required. This database system should maintain information about the following aspects of the business:  

Bookings.

Orders.

Order delivery status.

Menu.

Customer details.

and Staff information.

<h3> Task 1: ER Diagram <h3>
In this task, I created a normalized ER diagram (that adheres to 1NF, 2NF and 3NF) with relevant relationships to meet the data requirements of Little Lemon. I include the following tables:

Bookings: To store information about booked tables in the restaurant including booking id, date and table number.

Orders: To store information about each order such as order date, quantity and total cost.

Order delivery status: To store information about the delivery status of each order such as delivery date and status.

Menu: To store information about cuisines, starters, courses, drinks and desserts.

Customer details: To store information about the customer names and contact details.

Staff information: Including role and salary.

Steps for completing this task:

1.) Identify entities and related attributes. 

2.) Identify primary and foreign keys.

3.) Define data types and constraints. 

In order to follow the 3 normal forms, I added a delivery address, and staff address table to seperate contact details, I also made two different tables for menus and menu items table, and connected the staff table to customers table.
 <h4> My Solution:</h4>
![Week1-LittleLemonDM](https://user-images.githubusercontent.com/98139941/236060780-94161543-a3f9-4da3-b6cc-5ada2f51be18.png)

<h3> Task2: Forward Engineer </h3>
 In this second task, I implemented the Little Lemon data model inside my MySQL server. What I did in completing this task:

Use the forward engineer method in MySQL Workbench to implement the Little Lemon data model inside MySQL server. 

Name my database LittleLemonDB. 

Export the LittleLemonDB as a single contained SQL file and save it in the db-capstone-project folder.
 
![image](https://github.com/J272881/db-capstone-project/assets/98139941/ac0adc91-dbd6-48cd-8d0d-1b8b47a199de)
 

 

<h3> Task 3 </h3>
In the third and final task, you need to show the databases in the MySQL server. Write a SQL code inside MySQL Workbench SQL editor to show all your databases in MySQL server. Check if the Little Lemon database is included in the list.

![image](https://user-images.githubusercontent.com/98139941/236062762-d50000c9-6853-4674-a6a3-cdd5259aa461.png)
 
 <h2> Table Population </h2>
 
 I used different sources of data, from data generators, from data points used in previous smaller projects done in this course in order populate the tables. I populated the tables such as the menu items with greek, turkish, and italian food.
 ![image](https://github.com/J272881/db-capstone-project/assets/98139941/9ae50bf3-d45d-4e00-984c-044baeccfea7)
 
 <h1> Week 2: Database Queries and prepared statements</h1>
 
Use SQL to create virtual tables, stored procedures and prepared statements for Little Lemon restaurant.
 <h3><b>Main Objectives</b><h3>
- Implement transaction procedures to manage table bookings for the Little Lemon restaurant.
- Create SQL stored procedures to query the database and generate sales reports.
<h2> Exercise 2.1: Create a virtual table to summarize data </h2>
 

Scenario
Little Lemon needs to retrieve data from their database. You can use your knowledge of MySQL to help them. As part of this task, you need to:

Create a virtual table to summarize data.

Use a JOIN statement to query data from multiple tables.

Create a SQL statement with a subquery.

You can carry out these steps using your knowledge of virtual tables, JOIN statements and SQL queries. Review the instructions that follow for guidance on completing these tasks.

<h3> Task 1 : OrdersView </h3>
In the first task, Little Lemon need you to create a virtual table called OrdersView that focuses on OrderID, Quantity and Cost columns within the Orders table for all orders with a quantity greater than two.
Here’s some guidance around completing this task: 

Use a CREATE VIEW statement.

Extract the order id, quantity and cost data from the Orders table.

Filter data from the orders table based on orders with a quantity greater than 2. 
 <h4>My Solution:</h4>
 
![Week2- OrdersView](https://github.com/J272881/db-capstone-project/assets/98139941/0a0b768a-c233-4c33-94a5-eaad6dba00d0)
 
 <h3> Task 2: Multiple Join </h3>
For your second task, Little Lemon need information from four tables on all customers with orders that cost more than $150. Extract the required information from each of the following tables by using the relevant JOIN clause: 

Customers table: The customer id and full name.

Orders table: The order id and cost.

Menus table: The menus name.

MenusItems table: course name and starter name.

The result set should be sorted by the lowest cost amount.
 
 <h4> My Solution:</h4>
 
I connected the customers, booking, orders, menus, and menu items table to get the full join, table, of the customer id, full name, order id, total cost, menu name, and item name, as well as the item type to extract my data. Since the instructions were only asking for the main course and starter couser, I filter the where clause to only get items that have the starter, and main course type.


![Week2- InnerJoin](https://github.com/J272881/db-capstone-project/assets/98139941/f59cbca6-78be-4967-9a18-3c6a9b10e0af)

 
 



<h2> Exercise 3.1: Set up the Tableau Workspace for data analysis</h2>
<h3>Scenario </h3>
Little Lemon have an Excel sheet file with thousands of records of data on orders made between 2019 and 2023. They want to analyze the sales data to examine how they can increase their profits. They need you to help them to prepare the existing data before they start analyzing it.   


<h3> Task 1: Filtering </h3> 
In this first task, I connected to Little Lemon data stored in the Excel Sheet called LittleLemonDB. Then filter data in the data source page and select the United States as the country.

Steps for completing this task:

 <br> 1.)Open Tableau. In the Connection Pane select Excel, then navigate to the data source.</br>

  <br>2.)In the data source page, select Filter Tab.</br>

<br>![image](https://user-images.githubusercontent.com/98139941/235809053-38c828e5-0c73-43fa-a323-b9d6a5d069d0.png)</br>


<h3> Task 2: Splitting Column </h3>
In the second task, you need to create two new data fields called First Name and Last Name. Related values should be extracted from the Full Name field.

To complete this task:

I use the Split feature in Tableau and Rename the new fields.
![image](https://user-images.githubusercontent.com/98139941/235809586-45858d1a-f6af-4bdc-94b6-f3068bdd9cef.png)



<h2> Task 3: Calculated Field </h2>
For your third task, you need to create a new data field that stores the profits for each sale, or order as shown in the screenshot below.

Here’s some guidance for completing this task:

Select Sales field in the Data Pane, then select Create Calculated field. 

Name the calculated field Profit.

Write a formula that deducts Cost from Sales. 

Once you complete these tasks you should be ready to perform data analytics and to create visual charts. 

My Sales and Profit tables:
<br><i> Calculated field</i></br>
![image](https://user-images.githubusercontent.com/98139941/235811413-1ea2c7c7-3184-454f-bc0a-90cb18b0e8bd.png)
<br><i>  New Field: Profit </i></br>
![image](https://user-images.githubusercontent.com/98139941/235811635-a7bb00b2-f886-4de7-bf81-e0181d19b5c9.png)

Conclusion
You have now prepared Little Lemon’s data in Tableau. You can now begin analyzing it and providing relevant visualized charts.

<h1>Exercise: Create interactive dashboard for sales and profits </h1>
<b> Scenario </b>
In the previous exercise, you prepared Little Lemon’s data to perform data analytics. Little Lemon now need you to filter the data, analyze it and create visual charts in the form of an interactive dashboard to help them understand their business performance, so they can increase their sales and profits.

Task instructions
Complete the following tasks to help Little Lemon create interactive dashboards to display their sales and profits.


<h2>Task 1: Bar Chart</h2>
In the first task, you need to create a bar chart that shows customers sales and filter data based on sales with at least $70.

Steps for completing this task:

Drag and drop relevant fields from the data pane into the shelves section.

Use a suitable colour scheme.

Filter sales based on sales >= $70.

Name the chart Customers sales.

If you roll over a bar, the customer names and sale figures should be displayed as shown below.

View Customer Sales bar chart:
https://public.tableau.com/app/profile/jon6122/viz/CustomerSalesBarChart-LittleLemon/CustomerSales?publish=yes
![image]
(https://user-images.githubusercontent.com/98139941/235823006-e85da419-0ec5-4d99-b432-b0928c9de3fd.png)

<h2>Task 2: Line Chart </h2>
In the second task, you need to create a line chart to show the sales trend from 2019 to 2022. 

Here’s some guidance for completing this task:

Drag and drop relevant fields from the data pane.

Use a suitable colour scheme.

Filter data to exclude 2023.

Name the chart Profit chart.
Show the trend of sales from 2019 to 2022 only as shown below. 
View Profit Chart:
https://public.tableau.com/app/profile/jon6122/viz/ProfitChart-LittleLemon/ProfitChart?publish=yes
 
 
![image](https://user-images.githubusercontent.com/98139941/235818059-dd856b65-504e-49fb-93d2-744433ed6f47.png)


<h2>Task 3: Sales Bubble Chart </h2>
In the third task, you need to create a Bubble chart of sales for all customers. The chart should show the names of all customers. Once you roll over a bubble, the chart should show the name, profit and sale.

Here’s some guidance for completing this task:

Drag and drop relevant fields from the data pane.

Use a suitable colour scheme.

Name the chart Sales Bubble Chart.

View Sales Bubble chart:
https://public.tableau.com/app/profile/jon6122/viz/SalesBubbleChart-LittleLemon/SalesBubbleChart
![image](https://user-images.githubusercontent.com/98139941/235819443-f17b6d81-a48e-4722-a092-96145f28f8db.png)


<h2>Task 4: Cuisine Sales and Profit Chart</h2>
In this task, you need to compare the sales of the three different cuisines sold at Little Lemon. Create a Bar chart that shows the sales of the Turkish, Italian and Greek cuisines.

You need to display sales data for 2020, 2021, and 2022 only. Each bar should display the profit of each cuisine. 

Here’s some guidance for completing this task:

Drag and drop relevant fields from the data pane.

Use a suitable color scheme.

Name the worksheet Cuisine Sales and Profits.

Sort data in descending order by the sum of the sale.

Your chart should be similar to the following example:
View Chart on Tableau Public:


View Cuisine Sales and Profit chart:
https://public.tableau.com/app/profile/jon6122/viz/CuisinesSalesandProfits-LittleLemon/CuisineSalesandProfits?publish=yes
![image](https://user-images.githubusercontent.com/98139941/235820299-43aeb501-8074-47b7-90f0-ab8044210022.png)


<h2>Task 5: Customer Sales DashBoard</h2>
In this final task, you need to create an interactive dashboard that combines the Bar chart called Customers sales and the Sales Bubble Chart. Once you click a bar, and roll over the related bubble, the name, sales and profit figures should be displayed in the Bubble chart as shown below.

View Customer Sales Dashboard:
https://public.tableau.com/app/profile/jon6122/viz/CustomerSalesDashBoard-LittleLemon/CustomerSalesDashBoard

Conclusion
By completing the above tasks, you have helped Little Lemon in understand their data, evaluate their sales and understand which customers they should take care of more.

