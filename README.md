

# sql baseball app
#### [Visit the app!](https://my-bb-app.herokuapp.com/)

A repository with two mySQL scripts used to create and query from an AWS RDS on baseball players. The queried player data then is visualized with Python library Plotly.

## What's the app?

Enter the first and last name of any MLB player up to the 2021 season and the three simple visulizations are presented. In the backend a MySQL database is quired, to which the Python app creates the visualizations. The Python application code isn't shared here as the focus is MySQL.

#### A Diagram Demonstrating How the Application Works

![A Diagram Demonstrating How the Application Works](https://github.com/ethanjones-git/sql_baseball/blob/main/image/diagram.png?raw=true 'Diagram')


## create_db_tables.sql

This script loads locally stored .csvs to the external MySQL database. The dataset is a set of relational .csvs by [sean lahman](https://www.seanlahman.com/baseball-archive/statistics/). These were downloaded locally, then stored in a MySQl database established in AWS's relational data service.

## player_query.sql

This sql script interfaces with the AWS RDS when the player is called. Here it is presented as an SQL script, but in implementation, this code is nested in a Python script using PyMySQL. 

