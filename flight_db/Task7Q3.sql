-- Query 3
SELECT airports.*, flights.*
FROM flights JOIN airports
  ON flights.origin = airports.faa;