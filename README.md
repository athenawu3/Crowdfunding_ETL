# Crowdfunding ETL

## DataFrames

Our code for creating the following dataframes can be found in ETL_Mini_Project_AthenaW_OtyB_Final.

In this ETL mini project, we are revisiting 1000 sample projects from crowdfunding platforms. We are able to get information on their company name, date they joined, how much was pledged, the category/sub-category in which the project was listed, and other relevant details. Our goal is to analyze this data to identify trends, evaluate the success rates of different categories, and understand the impact of various factors on these projects. 

### Campaign DataFrame

We extracted and transformed the Resources/crowdfunding.xlsx Excel data to create an overall campaign DataFrame that has the following columns: cf_id, contact_id, company_name blurb, goal, pledged, outcome, backers_count, country, currency, launched_date, end_date, category_id, and subcategory_id. The resulting Campaign DataFrame can be found in Resources/campaign.csv.

### Category and Subcategory DataFrames

We split the category/sub-category column of the original crowdfunding dataset into two separate columns because the original column contained both values combined. By separating them, we can analyze and evaluate each aspect individually, which allows for more granular insights into how different categories and sub-categories influence project success. We created separate DataFrames for the categories as well as the sub-categories based on their unique values. The resulting DataFrames can be found in Resources/category.csv and Resources/subcategory.csv.

![category](https://github.com/athenawu3/Crowdfunding_ETL/blob/main/images/category.png)
![subcategory](https://github.com/athenawu3/Crowdfunding_ETL/blob/main/images/subcategory.png)

### Contacts DataFrame

We imported the Resources/contacts.xlsx file and iterated through the DataFrame, using a Python list comprehension (Option 1) to create a new DataFrame with the extracted Data. This DataFrame contains the following columns: contact_id, first_name, last_name, and email. It can be found in Resources/contacts.csv. 

### Crowdfunding Database

We sketched an ERD fo the four CSV files: campaign, contacts, category, and subcategory.

![ERD](https://github.com/athenawu3/Crowdfunding_ETL/blob/main/images/ERD.png)

We created the database schema in SQL. That query can be found in crowdfunding_db_schema.sql.

Lastly, we used the database schema to import CSV files to the corresponding SQL tables. We verified that each table was correctly created by running a SELECT statement for each. The results can be found below.

![Contacts Table](https://github.com/athenawu3/Crowdfunding_ETL/blob/main/images/contacts_table.png)
![Category Table](https://github.com/athenawu3/Crowdfunding_ETL/blob/main/images/category_table.png)
![Subcategory Table](https://github.com/athenawu3/Crowdfunding_ETL/blob/main/images/subcategory_table.png)
![Campaign Table](https://github.com/athenawu3/Crowdfunding_ETL/blob/main/images/campaign_table1.png)
![Campaign Table](https://github.com/athenawu3/Crowdfunding_ETL/blob/main/images/campaign_table2.png)

