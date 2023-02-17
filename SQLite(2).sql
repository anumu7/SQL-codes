1) all columns for all American cities in the CITY table with populations larger than 
100000. The CountryCode for America is USA.
>>solution
SELECT *
FROM city
WHERE population > 100000 AND countrycode = 'USA';

2) Query the NAME field for all American cities 
in the CITY table with populations larger than 120000.
The CountryCode for America is USA.
>>solution
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000;

3) Query all columns (attributes) for every row in the CITY table
>>solution
SELECT *
FROM city;

4) Query all columns for a city in CITY with the ID 1661.
>>soltion
SELECT *
FROM city
WHERE ID = 1661;

5) Query all attributes of every Japanese city in the CITY table. 
The COUNTRYCODE for Japan is JPN.
>>solution
SELECT *
FROM city
WHERE countrycode = 'JPN';

6) Query the names of all the Japanese cities in the CITY table. 
The COUNTRYCODE for Japan is JPN.
>>solution
SELECT name
FROM city
WHERE countrycode = 'JPN';

7) Query a list of CITY and STATE from the STATION table.
>>solution
SELECT city, state
FROM station;

8) Query a list of CITY names from STATION for cities that have an even ID number.
Print the results in any order, but exclude duplicates from the answer.
>>solution
SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID, 2) = 0

9) Find the difference between the total number of CITY entries in the table and the number
of distinct CITY entries in the TABLE
>>solutions
SELECT COUNT(city)-COUNT(DISTINCT city) 
FROM station;
10) Query the two cities in STATION with the shortest and longest CITY names, 
as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, 
choose the one that comes first when ordered alphabetically.
>>solution 
SELECT city, LENGTH(city), FROM station, ORDER BY LENGTH(city) ASC, city LIMIT 1;
SELECT city, LENGTH(city), FROM station, ORDER BY LENGTH(city) DESC, city LIMIT 1;

11) the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
Your result cannot contain duplicates.
>>solution
SELECT DISTINCT city
FROM station
WHERE city REGEXP'^[aeiouAEIOU]'
ORDER BY city;

12) Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. 
Your result cannot contain duplicates
>>solution
SELECT DISTINCT city
FROM station
WHERE city REGEXP'[aeiouAEIOU]$'
ORDER BY city ASC;

13) Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u)
as both their first and last characters.Your result cannot contain duplicates.
 >>solution
SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[aeiouAEIOU].*[aeiouAEIOU]$'
ORDER BY city ASC;


14) Query the list of CITY names from STATION that do not start with vowels.
Your result cannot contain duplicates.
>>solution
SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT REGEXP '^[aeiouAEIOU]'
ORDER BY CITY;
15) Query the list of CITY names from STATION that do not end with vowels.
  Your result cannot contain duplicates.
  >>solution
  SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '[aeiouAEIOU]$'
ORDER BY CITY ASC;

16) Query the list of CITY names from STATION that either do not start with vowels 
or do not end with vowels.Your result cannot contain duplicates.
>>solution
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[aeiouAEIOU].*[aeiouAEIOU]$';

17) Query the list of CITY names from STATION that do not start with vowels
and do not end with vowels.Your result cannot contain duplicates
>>solution
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[aeiouAEIOU]' AND CITY  NOT REGEXP '[aeiouAEIOU]$';

18) Query the Name of any student in STUDENTS who scored higher than  
75 Marks.Order your output by the last three characters of each name.
If two or more students both have names ending in the same last three characters
(i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
>>solution
SELECT name 
FROM STUDENTS 
WHERE marks > 75 
ORDER BY RIGHT(name, 3), id ASC;

19) Write a query that prints a list of employee names (i.e.: the name attribute) 
from the Employee table in alphabetical order
>>solution
SELECT name
FROM EMPLOYEE
ORDER BY name ASC;

20) Write a query that prints a list of employee names (i.e.: the name attribute)
for employees in Employee having a salary greater than  per month who have been employees 
for less than  months.Sort your result by ascending employee_id
>>SOLUTION
SELECT NAME 
FROM EMPLOYEE
WHERE SALARY > 2000 AND MONTHS < 10;


