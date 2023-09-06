# SQL Joins

### Choose Your Own Learning

Rate your comfort and choose the matching activity

| Rating |                    1                     |                                                                                                               What you should work on                                                                                                               |
| :----: | :--------------------------------------: | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: |
|   4    | I feel amazing! Give me more challenges! | [Football/Futball/Soccer Data](https://github.com/jokecamp/FootballData/tree/master/openFootballData) Download and join the many tables to create info on historical data, like which players are on what teams? Who scored what goal in what game? |
|   3    |                              |                                                                                     Go back to the bonus challenges in the lecture markdowns and solve each one                                                                                     |
|   2    |                              |                                                                                                 [Work your way through SQL Zoo](https://sqlzoo.net)                                                                                                 |
|   1    |                              |                                                                                                [Work your way through SQL Bolt](https://sqlbolt.com)                                                                              

### In Canvas, answer the following questions:

- Which resource did you choose to use?
I chose resource 1 SQL, or Structured Query Language, is a language designed to allow both technical and non-technical users query, manipulate, and transform data from a relational database. And due to its simplicity, SQL databases provide safe and scalable storage for millions of websites and mobile applications.

- What are three things you learned during this lab?

1. SELECT statements - which are often colloquially refered to as queries. A query in itself is just a statement which declares what data we are looking for, where to find it in the database, and optionally, how to transform it before it is returned. It has a specific syntax though, which is what we are going to learn in the following exercises.

2. Filtering - In order to filter certain results from being returned, we need to use a WHERE clause in the query. The clause is applied to each row of data by checking specific column values to determine whether it should be included in the results or not.

3. Queries and Constraints - When writing WHERE clauses with columns containing text data, SQL supports a number of useful operators to do things like case-insensitive string comparison and wildcard pattern matching. We show a few common text-data specific operators below: