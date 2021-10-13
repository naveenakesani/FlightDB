-- Query 1: Count passengers per flight
SELECT f.id, f.origin, f.destination, f.airlinecarrier, count(distinct p.passengerid) as Num_Of_Passengers
FROM passengers p JOIN flights f ON p.flightid = f.id
GROUP BY f.id, f.origin, f.destination, f.airlinecarrier
ORDER BY 1;

--Query 2: Count flights per carrier
SELECT a.*, count(DISTINCT f.id) as Num_Of_Flights
FROM airlines a JOIN flights f ON a.carrier = f.airlinecarrier
GROUP BY a.carrier
ORDER BY 1;

-- Query 3: Top-k airports in terms of flight count
SELECT b.faa, b.name, b.tzone, count(f.origin) as Num_Of_Flights
FROM airports b JOIN flights f ON b.faa = f.origin
GROUP BY b.faa
ORDER BY 4 DESC
LIMIT 3;

-- Query 4: Count flights per airport
SELECT b.*, count(f.origin) as Num_Of_Flights
FROM airports b JOIN flights f ON b.faa = f.origin
GROUP BY b.faa
ORDER BY 1;

-- Query 5: Get the passengers along with their flights; each flight comes with the faa of both departure and arrival airports
SELECT p.passengerid, p.fullname, f.id, f.origin, f.destination
FROM passengers p JOIN flights f ON p.flightid = f.id
ORDER BY 1;

-- Query 6: Get the passengers along with their flights; each flight comes with the name of both departure and arrival airports
SELECT p.passengerid, p.fullname, f.id, f.origin, b.name, f.destination, b2.name
FROM passengers p JOIN flights f ON p.flightid = f.id
JOIN  airports b ON b.faa = f.origin
JOIN airports b2 ON b2.faa = f.destination
GROUP BY p.passengerid, p.fullname, f.id, f.origin, b.name, f.destination, b2.name
ORDER BY 1;

-- Query 7: Get the passengers with the duration of their flights
SELECT p.passengerid, p.fullname, f.id as flight_id, f.origin, f.destination, f.duration as duration_minutes
FROM passengers p JOIN flights f ON p.flightid = f.id
ORDER BY 1;