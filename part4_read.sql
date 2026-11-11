USE airline_db;

-- shows passengers in Business or First class

SELECT passengers.name,
       passengers.destination,
       bookings.class_tier
FROM passengers
JOIN bookings
    ON passengers.passenger_id=bookings.passenger_id
WHERE bookings.class_tier IN ('Business' , 'First');
