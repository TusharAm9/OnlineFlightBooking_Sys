create database shibaji_chatrapati_airport;
use shibaji_chatrapati_airport;
drop database shibaji_chatrapati_airport;

-- Airline in india
create table airport(
AirportID int primary key,
AirportName varchar(50)
);

insert into airport(AirportID,AirportName) values
(1,'Shibaji Chatrapati Airport'),
(2,'Delhi '),
(3,'Netaji Subhas Airport'),
(4,'Mumbai') ,
(5,'Kazi Najrul Airport'),
(6,'Delhi'),
(7,'Gujrat'),
(8,'Andal'),
(9,'Kalikat');

-- Flight Details
Create table FlightDetails(
FlightID int primary key,
AirlineName varchar(70),
DepartureAirport varchar(70),
ArrivalAirport varchar(70),
DepartureTime time,
ArrivalTime time,
TicketPrice varchar(20)
);

INSERT INTO FlightDetails (FlightID, AirlineName, DepartureAirport, ArrivalAirport, DepartureTime, ArrivalTime, TicketPrice) VALUES
(20, 'JetAirways', 'Delhi', 'Netaji Subhas Airport', '13:00:00', '14:30:00', '5500'),
(21, 'SpiceJet', 'Delhi', 'Netaji Subhas Airport', '06:00:00', '08:30:00', '6000'),
(19, 'JetAirways', 'Netaji Subhas Airport', 'Mumbai', '10:00:00', '12:15:00', '3500'),
(18, 'IndiGo', 'Netaji Subhas Airport', 'Mumbai', '10:00:00', '12:15:00', '4000'),
(17, 'Air India', 'Netaji Subhas Airport', 'Mumbai', '10:00:00', '12:15:00', '4200'),
(16, 'Air India', 'Netaji Subhas Airport', 'Delhi', '10:00:00', '12:15:00', '5200'),
(15, 'JetAirways', 'Andal', 'Kalikat', '07:30:00', '8:30:00', '3500'),
(14, 'JetAirways', 'Netaji Subhas Airport', 'Gujrat', '06:30:00', '8:30:00', '3500'),
(13, 'IndiGo', 'Netaji Subhas Airport', 'Gujrat', '06:00:00', '8:30:00', '3500'),
(12, 'Air India', 'Kazi Najrul Airport', 'Mumbai', '09:30:00', '13:00:00', '4500'),
(10, 'AirIndia ', 'Mumbai', 'Kazi Najrul Airport', '09:30:00', '13:00:00', '4500'),
(9, 'JetAirways', 'Delhi', 'Netaji Subhas Airport', '13:00:00', '14:30:00', '4800'),
(1, 'Air India', 'Shibaji Chatrapati Airport', 'Delhi', '08:00:00', '10:30:00', '5000'),
(2, 'IndiGo', 'Delhi', 'Netaji Subhas Airport', '12:00:00', '14:30:00', '4500'),
(3, 'SpiceJet', 'Mumbai', 'Kazi Najrul Airport', '10:30:00', '13:00:00', '5500'),
(4, 'GoAir', 'Delhi', 'Gujrat', '09:00:00', '11:30:00', '4800'),
(5, 'Vistara', 'Andal', 'Kalikat', '11:30:00', '14:00:00', '6000'),
(6, 'AirAsia', 'Shibaji Chatrapati Airport', 'Mumbai', '07:30:00', '09:45:00', '4800'),
(7, 'GoAir', 'Netaji Subhas Airport', 'Delhi', '10:00:00', '12:15:00', '5200'),
(8, 'IndiGo', 'Delhi', 'Mumbai', '13:00:00', '15:15:00', '5500');


-- Passengers Details
create table passengers(
passengerName varchar(50),
gender varchar(10),
FlightID int,
DepartureAirport varchar(50),
ArrivalAirport varchar(50)
);
insert into passengers(passengerName,gender,FlightID,DepartureAirport,ArrivalAirport) values
('Tanisha','F', 12, 'Kazi Najrul Airport','Mumbai'),
('Meghna','F', 12, 'Kazi Najrul Airport','Mumbai'),
('Rasmi','F', 12, 'Kazi Najrul Airport','Mumbai'),
('Tushar','M', 9, 'Delhi','Netaji Subhas Airport'),
('Thagesh','M', 10, 'Mumbai','Kazi Najrul Airport'),
('Keya','F', 9, 'Delhi','Netaji Subhas Airport'),
('Ramanna','M', 10, 'Mumbai','Kazi Najrul Airport'),
('Manjit','M', 9, 'Delhi','Netaji Subhas Airport'),
('Moulina','F', 10, 'Mumbai','Kazi Najrul Airport'),
('Taniya','F', 9, 'Delhi','Netaji Subhas Airport');

-- Dehli to netaji flights
drop table flights;
CREATE TABLE flights (
    flight_id int ,
    departure_time TIME,
    DepartureAirport VARCHAR(50),
    ArrivalAirport VARCHAR(50),
    tickets_booked INT
);

INSERT INTO flights (flight_id, departure_time, DepartureAirport, ArrivalAirport, tickets_booked) 
VALUES 
(21, '07:30:00', 'Netaji Subhas Airport', 'Delhi', 100),
(2,  '07:30:00', 'Netaji Subhas Airport', 'Delhi', 150),
(22,  '07:30:00', 'Netaji Subhas Airport', 'Delhi', 120);

-- Kolkata to Mumbai
CREATE TABLE Flights_MK (
    FlightID INT PRIMARY KEY,
    AirlineName VARCHAR(50),
    departure_date DATE,
    departure_city VARCHAR(50),
    arrival_city VARCHAR(50),
    seats_available INT
);
INSERT INTO Flights_MK (FlightID, AirlineName, departure_date, departure_city, arrival_city, seats_available) VALUES
(1, 'Air India', '2023-03-26', 'Mumbai', 'Kolkata', 15),
(2, 'Air India', '2023-03-26', 'Mumbai', 'Kolkata', 20),
(3, 'Air India', '2023-03-26', 'Mumbai', 'Kolkata', 100),
(4, 'Air India', '2023-03-26', 'Mumbai', 'Kolkata', 80),
(5, 'Air India', '2023-03-27', 'Mumbai', 'Kolkata', 50),
(6, 'Air India', '2023-03-26', 'Delhi', 'Kolkata', 55);


-- 1.List the flights company managed by Shibaji Chatrapati Airport.
SELECT DISTINCT AirlineName
FROM FlightDetails
WHERE DepartureAirport = 'Shibaji Chatrapati Airport';

-- 2. Lis the Airports in India
select AirportName From airport;

-- 3.List the passengers who are travelling by Jet Air ways for Delhi from Netaji Subhas Airport.
 SELECT p.passengerName
FROM passengers p
JOIN FlightDetails f ON p.FlightID = f.FlightID
WHERE f.AirlineName = 'JetAirways' AND f.ArrivalAirport = 'Netaji Subhas Airport' AND f.DepartureAirport = 'Delhi';

-- 4.List the female passengers who are travelling by Air India towards Mumbai from Kazi Najrul Airport.
SELECT p.passengerName,gender
FROM passengers p
JOIN FlightDetails f ON p.FlightID = f.FlightID
WHERE f.AirlineName = 'Air India' AND f.ArrivalAirport = 'Mumbai' AND f.DepartureAirport = 'Kazi Najrul Airport' AND p.gender = 'F';

-- 5. Name the flight service by which the maximum ticket booking for Delhi from Netaji Airport at 7:30 am.
SELECT *
FROM flights 
WHERE DepartureAirport = 'Netaji Subhas Airport' 
AND ArrivalAirport = 'Delhi' 
AND departure_time = '07:30:00' 
ORDER BY tickets_booked DESC 
LIMIT 1;

--  6.List the availability of the flight from Kolkata to Gujrat in between 5:00 am to 7:00 am.
SELECT *
FROM FlightDetails
WHERE DepartureAirport = 'Netaji Subhas Airport'
AND ArrivalAirport = 'Gujrat'
AND DepartureTime >= '05:00:00'
AND DepartureTime <= '07:00:00';

-- 7.List the availability of flights from Andal to Kalikat on Sunday.
SELECT *
FROM FlightDetails
WHERE DepartureAirport = 'Andal'
AND ArrivalAirport = 'Kalikat'
AND DAYNAME(DepartureTime) = 'Sunday';

-- 8.Find the fare of economy class for Delhi from Kolkata by Air India. 
SELECT TicketPrice
FROM FlightDetails
WHERE DepartureAirport = 'Netaji Subhas Airport'
AND ArrivalAirport = 'Delhi'
AND AirlineName = 'Air India';
-- 9. Count the sit availabilit in Air India on Sunday 26/03/23 fro Mumbai from Kolkata.
SELECT SUM(seats_available) AS available_seats
FROM Flights_MK
WHERE AirlineName = 'Air India'
AND departure_date = '2023-03-26'
AND departure_city = 'Mumbai'
AND arrival_city = 'Kolkata';

-- 10. Show that there is no Flight service from Andal to Gujrat.
SELECT COUNT(*) AS FlightCount
FROM FlightDetails
WHERE DepartureAirport = 'Andal'
AND ArrivalAirport = 'Gujrat';

-- 11.List the charges of different flights on Sunday for Mumbai from Netaji Subhas Airport.
SELECT DISTINCT AirlineName,TicketPrice
FROM FlightDetails
WHERE DepartureAirport = 'Netaji Subhas Airport'
AND ArrivalAirport = 'Mumbai';
