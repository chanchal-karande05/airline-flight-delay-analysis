CREATE DATABASE Airline_analysis
USE Airline_analysis


-- Data Exploration
SELECT * FROM flights;
SELECT * FROM airlines;
SELECT * FROM airports;


-- Detect Missing Delay Data
SELECT COUNT(*) AS total_null
FROM flights
WHERE ARRIVAL_DELAY IS NULL;


-- Dataset Size Validation
SELECT COUNT(*) AS total_rows FROM flights;


-- Data Cleaning
DELETE FROM flights WHERE ARRIVAL_DELAY IS NULL;


-- Validate Data Cleaning
SELECT * FROM flights WHERE ARRIVAL_DELAY IS NULL;

-- Verify Airline Mapping
SELECT TOP 10 a.AIRLINE,f.AIRLINE from airlines a JOIN flights f ON a.IATA_CODE =  f.AIRLINE;



--1]Total flights per airline.

SELECT a.AIRLINE,COUNT(*) AS Total_flights FROM flights f JOIN airlines a ON f.AIRLINE = a.IATA_CODE GROUP BY a.AIRLINE 
ORDER BY Total_flights DESC; 
--Insight :- The above analysis identifies airlines that operate the largest number of flights.


-- 2]Busiest Airports

SELECT ORIGIN_AIRPORT,COUNT(*) AS total_departures FROM flights
GROUP BY ORIGIN_AIRPORT
ORDER BY total_departures DESC;
--Insight :- This query identifies airports with the highest number of departing flights


-- 3]Most Popular Routes

SELECT TOP 5 ORIGIN_AIRPORT,DESTINATION_AIRPORT,COUNT(*) AS route_counts FROM flights 
GROUP BY ORIGIN_AIRPORT,DESTINATION_AIRPORT 
ORDER BY route_counts DESC;
--Insight :- The above analysis reveals the most frequently traveled flight routes.


-- 4]Average Delay by Airline

SELECT a.AIRLINE , AVG(f.ARRIVAL_DELAY) as Average_Delay 
FROM flights f JOIN airlines a ON f.AIRLINE = a.IATA_CODE
GROUP BY a.AIRLINE
ORDER BY Average_Delay DESC;
--Insight :- The above query measures the average arrival delay for each airline.


-- 5]Airports with Highest Delays

SELECT ORIGIN_AIRPORT,AVG(ARRIVAL_DELAY) as Highest_Delays
FROM flights 
GROUP BY ORIGIN_AIRPORT
ORDER BY Highest_Delays DESC;
-- Insight :- The above query identifies airports where flights experience the largest average delays.


-- 6]Longest Routes

SELECT TOP 10 ORIGIN_AIRPORT , DESTINATION_AIRPORT , AVG(DISTANCE) AS average_distance FROM flights
GROUP BY ORIGIN_AIRPORT,DESTINATION_AIRPORT
ORDER BY average_distance DESC;
--Insight :- The above query identifies the longest flight routes in the dataset.


-- 7]Monthly Delay Trends

SELECT MONTH,AVG(ARRIVAL_DELAY) as Avg_Delay FROM flights
GROUP BY MONTH
ORDER BY MONTH ;
--Insight :- The above query reveals seasonal patterns in flight delays.


-- 8]Rank Airlines by Delay

SELECT a.AIRLINE , AVG(f.ARRIVAL_DELAY) AS AVG_DELAY,
RANK() OVER(ORDER BY AVG(f.ARRIVAL_DELAY) DESC) as delay_rank
FROM flights f JOIN airlines a ON f.AIRLINE = a.IATA_CODE
GROUP BY a.AIRLINE;
--Insight :- The above query ranks airlines based on their average delay performance.


-- 9]Hub Airport Detection

SELECT TOP 5 ORIGIN_AIRPORT,COUNT(*) AS flights 
FROM flights
GROUP BY ORIGIN_AIRPORT
ORDER BY flights DESC;
--Insight :- The above query identifies the top hub airports based on flight departures.
