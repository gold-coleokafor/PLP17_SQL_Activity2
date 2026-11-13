# PLP17 - Airline Booking Database (SQL Activity 2)
 
A small relational database for an airline passenger booking system, built in MySQL. It translates the OOP "passenger booking system" into two linked tables and demonstrates the core SQL operations: Create, Read, Join, Update and Delete.
 
## Database
 
**Database name:** `airline_db`
 
| Table | Columns |
|---|---|
| `passengers` | passenger_id (PK), name, current_location, destination, travel_date |
| `bookings` | booking_id (PK), passenger_id (FK), class_tier (Economy/Business/First), seat_preference, lounge_pass_code, suite_number, chauffeur_service |
 
Each booking is linked to a passenger through `passenger_id`.
 
## Files
 
- `PLP17_SQL_Activity2.sql`: the final combined file (run this one).
- `part1_database_passengers.sql` to `part6_update_and_delete.sql`: each member's individual part.
## How to run
 
1. Open `PLP17_SQL_Activity2.sql` in VS Code (with MySQL connected).
2. Select everything (`Ctrl+A`) and run it (`Ctrl+Enter`).
3. The file can be run more than once without errors.
## What the file does
 
1. Creates the database and the `passengers` table.
2. Creates the `bookings` table with a foreign key to `passengers`.
3. Inserts 3 passengers, one in each class (Economy, Business, First).
4. **Read:** selects passengers booked in Business or First class.
5. **Join:** an `INNER JOIN` that shows a ticket receipt (name, destination, tier and perks).
6. **Update and Delete:** changes a passenger's destination and a booking's seat preference, then deletes a booking and a passenger without breaking constraints.
## Team
 
| Member | Part |
|---|---|
| Gold Adaobi Cole-Okafor | Part 1: Database and `passengers` table |
| Nyamesomfo Ama Osei-Nimako | Part 2: `bookings` table |
| Leslie Gaju Ntihemuka | Part 3: Insert data |
| Cecilia Ndawi | Part 4: Read query |
| Semakula Benjamin Kwagala | Part 5: Join query |
| Irumva Laurette | Part 6: Update and Delete |
 
## Video
 
https://drive.google.com/file/d/1MSPuEa0NsHdEzfoGMjH9Yp0ta-vJdN9u/view?usp=drive_link 
