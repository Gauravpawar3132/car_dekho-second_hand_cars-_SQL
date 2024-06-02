create database car_dekho;
use car_dekho;

select * from car_dekho;
-- find out totalcount
SELECT 
    COUNT(*)
FROM
    car_dekho;

-- find out the count in 2023
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year = 2023;

-- how many cars available  in 2020,2021,2023
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year IN (2020 , 2021, 2022)
GROUP BY year;

select count(*) from car_dekho where year=2020; 

select count(*) from car_dekho where year=2021; 

select count(*) from car_dekho where year=2022; 

-- find total count by each year
SELECT 
    year, COUNT(*)
FROM
    car_dekho
GROUP BY year;

-- find out how many  diesel car in 2020
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year = 2020 AND fuel = 'Diesel';

-- find out how many  petrol car in 2020
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year = 2020 AND fuel = 'Petrol';

-- list of all fuel cars as per years
SELECT 
    year, fuel, COUNT(*)
FROM
    car_dekho
WHERE
    fuel IN ('Diesel' , 'Petrol', 'CNG')
GROUP BY year , fuel;

-- find year that having count more than 100 
SELECT 
    year, COUNT(*)
FROM
    car_dekho
GROUP BY year
HAVING COUNT(*) > 100;

 -- find year that having count less than 50 
SELECT 
    year, COUNT(*)
FROM
    car_dekho
GROUP BY year
HAVING COUNT(*) < 50;

-- how many cars in 2015 to 2023
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year BETWEEN 2015 AND 2023;

-- find all car detains between 2015 to 2023
SELECT 
    *
FROM
    car_dekho
WHERE
    year BETWEEN 2015 AND 2023;