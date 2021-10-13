-- Query 1
SELECT * 
FROM flights
WHERE destination LIKE "%f%";

-- Query 2
SELECT *
FROM flights
WHERE destination = "DFW" AND duration > 200;

-- Query 3
SELECT airports.*, flights.*
FROM flights JOIN airports
  ON flights.origin = airports.faa;