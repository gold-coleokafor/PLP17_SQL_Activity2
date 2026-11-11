CREATE DATABASE IF NOT EXISTS airline_db;
USE airline_db;

CREATE TABLE IF NOT EXISTS passengers (
    passenger_id     INT PRIMARY KEY,
    name             VARCHAR(100) NOT NULL,
    current_location VARCHAR(100),
    destination      VARCHAR(100),
    travel_date      VARCHAR(20)
);