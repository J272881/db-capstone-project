# db-capstone-project (Project Walkthrough)

<h1> Exercise 3.1: Set up the Tableau Workspace for data analysis</h1>
<h3>Scenario </h3>
Little Lemon have an Excel sheet file with thousands of records of data on orders made between 2019 and 2023. They want to analyze the sales data to examine how they can increase their profits. They need you to help them to prepare the existing data before they start analyzing it.   


<h3> Task 1: Filtering </h3> 
In this first task, I connected to Little Lemon data stored in the Excel Sheet called LittleLemonDB. Then filter data in the data source page and select the United States as the country.

Steps for completing this task:

 <br> 1.)Open Tableau. In the Connection Pane select Excel, then navigate to the data source.</br>

  <br>2.)In the data source page, select Filter Tab.</br>

<br>![image](https://user-images.githubusercontent.com/98139941/235809053-38c828e5-0c73-43fa-a323-b9d6a5d069d0.png)</br>


<h2> Task 2: Splitting Column </h2>
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
![image](https://user-images.githubusercontent.com/98139941/235823006-e85da419-0ec5-4d99-b432-b0928c9de3fd.png)

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

