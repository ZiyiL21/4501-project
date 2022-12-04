# 4501-project
### Project Group 8   
UNIs:[zz2991,zl3226]

## Project Overview
This project uses several libraries to import, clean, sample, store and visualize data. 

There are three major sources of NYC data used: 1. Uber Rides; 2. Yellow Taxi Rides; 3. Weather Data. The project maily analyses the above three data source from Jan 2009 to Jun 2015 and provides the related summaries in a single Jupyter Notebbok.

## Introduction of Provided Files
### ***IEOR 4501-final project-group 8.ipynb***  
The source code of the project including all required functions, downloaded and cleaned datapoints, SQL queries, and visualizational outputs.
   
### ***schema.sql***   
The source SQL file we used to store 4 required tables of cleaned data: "taxi_trips", "uber_trips", "hourly_weather", and "daily_weather".

### ***queries(folder)***   
The source folder includes six sql files for the QUERY results of Part Three from the source code.    
__Name of sql files for each query:__      
QUERY_1: "popular_hours_of_taxi.sql"   
QUERY_2: "popular_days_of_uber.sql"   
QUERY_3: "95_percentile_of_hired_trips.sql"   
QUERY_4: "top_ten_days_of_hired_trips.sql"   
QUERY_5: "10_windiest_days.sql"   
QUERY_6: "trips_precipitation_windspeed.sql"   

### ***requirements.txt***   
The txt document includes all the packages used for this project. Those packages will also be imported or installed at the beginning of the source code file.


### ***.gitignore***   
The file includes all the types of source data files that were used for this project for downloading the data. However, when processing the data, those types of documents will not be committed so the git should ignore.
