

# sql baseball app
[Visit the app!](https://my-bb-app.herokuapp.com/)

A repository with two mySQL scripts used to create and query from an AWS RDS on baseball players. The queried player data then is visualized with Python library Plotly.

## create_db_tables.sql

This script loads locally stored .csvs to the external MySQL database. The dataset is a set of relational .csvs by [sean lahman] (https://www.seanlahman.com/baseball-archive/statistics/). These were downloaded locally, then stored in a MySQl database established in AWS's relational data service.

## player_query.sql

This sql script interfaces with the AWS RDS when the player is called. Here it is presented as an SQL script, but in implementation, this code is nested in a Python script using PyMySQL. 
