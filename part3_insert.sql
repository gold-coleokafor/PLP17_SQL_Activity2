USE airline_db;

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

