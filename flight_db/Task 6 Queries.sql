-- Insert record into airports TABLE
INSERT INTO airports
(faa, name, tzone)
VALUES 
("AMS", "AMS-Amsterdam Airport Schiphol", "Central European Summer Time");

Select * from airports where faa = "AMS";

-- Insert record into flights TABLE
INSERT INTO flights 
(origin, destination, duration) 
VALUES 
("ORD", "AMS", 530);

Select * from flights where destination = "AMS";

-- Query 1
SELECT airports.*, flights.*
FROM flights JOIN airports
  ON flights.destination = airports.faa
WHERE destination = "ORD";
