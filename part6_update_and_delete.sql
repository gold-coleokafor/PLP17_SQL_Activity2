USE airline_db;

-- Update a passenger's destination and travel date.
UPDATE passengers
SET destination = 'Dar es Salaam',
    travel_date = '2026-12-15'
WHERE passenger_id = 1;

-- Update a booking's class and seat preference.
UPDATE bookings
SET class_tier = 'Business',
    seat_preference = 'Aisle'
WHERE booking_id = 1;

-- Delete one booking.
DELETE FROM bookings
WHERE booking_id = 2;

-- Delete a passenger. Their booking, if any.
DELETE FROM passengers
WHERE passenger_id = 3;