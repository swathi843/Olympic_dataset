**Olympics Data Pipeline Project**

**Technologies Used:**

Programming Language: Python, SQL

Cloud Platform: Microsoft Azure

Data Ingestion: Azure Data Factory (ADF)

Storage: Azure Data Lake Storage Gen2 (ADLS Gen2)

Processing Framework: Apache Spark (PySpark via Azure Databricks)

Analytics Engine: Azure Synapse Analytics

Data Visualization: Power BI

Version Control: GitHub

**Features & Workflow:**

Ingests Olympic dataset (CSV) from GitHub into ADLS Gen2 using ADF

Processes raw data in Azure Databricks using PySpark:

Cleans and transforms coach and medalist datasets

Parses nested JSON-like columns

Performs aggregations and joins for deeper analysis

Loads transformed data into Synapse SQL for advanced queries

**Calculates key metrics:**

Total coaches by gender and country

Medal counts by country and athlete gender

Most common sports by country

Builds interactive dashboards in Power BI:

Gender distribution of coaches

Medal trends across disciplines and countries

**Data Insights & Analytics:**

Understands gender representation across Olympic coaching staff

Analyzes medal trends with respect to country and sport

Enables stakeholder-ready visualizations using Power BI

