#ETL Project

We were attempting to look at country height and olympic medal count for future analysis to see if there is any correlation. 


## EXTRACT

This  project uses 2 sources of data which were .csv files. Imported using pandas:

* [Kaggle](https://www.kaggle.com/majyhain/height-of-male-and-female-by-country-2022)
Height of Male and Female by Country 2022
	- Rank [By avg. height]
	- Country Name
	- Male Height in Cm
	- Female Height in Cm
	- Male Height in Ft
	- Female Height in Ft

* [Olympics](https://olympics.com/beijing-2022/olympic-games/en/results/all-sports/medal-standings.htm)
Tokyo 2021 dataset	
	- Rank
	- Team/NOC
	- Gold Medal
	- Silver Medal
	- Bronze Medal
	- Total
	- Rank by Total
	- NOCCode

## TRANSFORM

The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).

1. Check the data and observe formats for later processing e.g. Olympic Medal Count = INT, Height = FLOAT, Country = VARCHAR.
2. Observe required columns and remove obselete ones.
3. Rename column headers for uniformity e.g. Country insteda of Team/NOC in olympic data.
4. Consolidate data and create an "Average_Height_Cm" column that used the female and male data.
5. Set index as country for both datasets.
6. Replace country values in olympic data that did not corresepond so they can be joined e.g. "United States of America" to "United States" so both datasets match.
7. Drop duplicate values and NAN values.

The datasets now have two country columns with the same values. 
The country_height dataset has a new column called "average_height_cm". 
Both indexes for each dataset is "country" and the values align. 
There are no null or NAN values present. 
The column names are more relevant with no spaces so SQL can interpret them.


## LOAD

* Postgres (relational database) was used as we all have more experience and the two datasets are similar data compoistion, VARCHAR country values we could join on.

* ERD schema created to map out relationship. -> "ERD Design.png" in GitHub


* SQL query used to create relevant table in SQL Postgres

* Using python to connect to local postgresql database and load in the relevant tables.

* Tables combined using a inner join, combining on the country name [note to delete current data from tables to avoid duplication]. Kept fields:
	- Country
	- Total Medals
	- Average Height

* SQL query and export to csv


NOTE: change password in jupyter notebook for personal device