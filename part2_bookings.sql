USE airline_db;

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