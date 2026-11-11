USE airline_db;

-- shows passengers in Business or First class

SELECT passengers.name,
       passengers.destination,
       bookings.tier
FROM passengers
JOIN bookings
    ON passengers.passenger_id=bookings.passenger_id
WHERE bookings.tier IN ('Business' , 'First');
