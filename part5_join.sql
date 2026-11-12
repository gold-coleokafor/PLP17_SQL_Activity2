USE airline_db;

-- ticket receipt: name, destination, tier and perks for each booking

SELECT passengers.name,
       passengers.destination,
       bookings.class_tier,
       bookings.lounge_pass_code,
       bookings.suite_number,
       bookings.chauffeur_service 
FROM passengers
INNER JOIN bookings
    ON passengers.passenger_id = bookings.passenger_id;
-- this is for all passengers if we need to print one at a time we could use the following
-- WHERE passengers.passenger_id = 1; (replace 1 with passengers id)--
