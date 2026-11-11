-- ============================================
-- Airline Booking Database (airline_db)
-- ============================================

-- PART 1: Create the database and the passengers table
CREATE DATABASE IF NOT EXISTS airline_db;
USE airline_db;

CREATE TABLE IF NOT EXISTS passengers (
    passenger_id     INT PRIMARY KEY,
    name             VARCHAR(100) NOT NULL,
    current_location VARCHAR(100),
    destination      VARCHAR(100),
    travel_date      VARCHAR(20)
);

-- PART 2: Create the bookings table
CREATE TABLE IF NOT EXISTS bookings (
    booking_id        INT PRIMARY KEY,
    passenger_id      INT NOT NULL,
    class_tier        ENUM('Economy', 'Business', 'First') NOT NULL,
    seat_preference   VARCHAR(50),
    lounge_pass_code  VARCHAR(50),
    suite_number      VARCHAR(20),
    chauffeur_service BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id)
        ON DELETE CASCADE
);

-- PART 3: Insert data
-- Clear old rows first so this file can be run again without duplicate errors
DELETE FROM bookings;
DELETE FROM passengers;

-- Passengers first (bookings depend on them)
INSERT INTO passengers (passenger_id, name, current_location, destination, travel_date)
VALUES (1, 'Alice Uwase', 'Kigali', 'Nairobi', '2026-12-01');

INSERT INTO passengers (passenger_id, name, current_location, destination, travel_date)
VALUES (2, 'Brian Mugisha', 'Kigali', 'Dubai', '2026-12-05');

INSERT INTO passengers (passenger_id, name, current_location, destination, travel_date)
VALUES (3, 'Clara Ishimwe', 'Kigali', 'London', '2026-12-10');

-- Then bookings
INSERT INTO bookings (booking_id, passenger_id, class_tier, seat_preference)
VALUES (1, 1, 'Economy', 'Window');

INSERT INTO bookings (booking_id, passenger_id, class_tier, seat_preference, lounge_pass_code)
VALUES (2, 2, 'Business', 'Aisle', 'LNG-2001');

INSERT INTO bookings (booking_id, passenger_id, class_tier, seat_preference, lounge_pass_code, suite_number, chauffeur_service)
VALUES (3, 3, 'First', 'Suite', 'LNG-3001', 'S-12', TRUE);

-- PART 4: Read - passengers booked in Business or First class
SELECT passengers.name,
       passengers.destination,
       bookings.class_tier
FROM passengers
JOIN bookings
    ON passengers.passenger_id = bookings.passenger_id
WHERE bookings.class_tier IN ('Business', 'First');

-- PART 5: Join - ticket receipt (name, destination, tier and perks)
SELECT passengers.name,
       passengers.destination,
       bookings.class_tier,
       bookings.lounge_pass_code,
       bookings.suite_number,
       bookings.chauffeur_service
FROM passengers
INNER JOIN bookings
    ON passengers.passenger_id = bookings.passenger_id;
-- For one passenger only, add: WHERE passengers.passenger_id = 1;

-- PART 6: Update and Delete
-- Update a passenger's destination and travel date
UPDATE passengers
SET destination = 'Dar es Salaam',
    travel_date = '2026-12-15'
WHERE passenger_id = 1;

-- Update a booking's class and seat preference
UPDATE bookings
SET class_tier = 'Business',
    seat_preference = 'Aisle'
WHERE booking_id = 1;

-- Delete one booking
DELETE FROM bookings
WHERE booking_id = 2;

-- Delete a passenger (their booking, if any, is removed too because of ON DELETE CASCADE)
DELETE FROM passengers
WHERE passenger_id = 3;