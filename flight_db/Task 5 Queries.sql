-- Update 1
UPDATE airports 
Set tzone = "America/Chicago"
WHERE tzone LIKE "American/Chicago";

SELECT tzone 
FROM airports 
WHERE tzone = "American/Chicago";

-- Update 2
UPDATE flights 
SET origin = "BQK", destination = "BQK" 
WHERE origin LIKE "BQN" OR destination LIKE "BQN";

SELECT origin, destination 
FROM flights 
WHERE origin = "BQN" OR destination = "BQN";

-- Query 3
SELECT count(*) AS Num_of_Records 
FROM airlines;

Select * 
FROM airlines;

-- Query 4:
 SELECT COUNT(faa) AS Number_of_FAA 
 FROM airports;

SELECT * 
FROM airports;

-- Query 5
SELECT * 
FROM airports
WHERE tzone = "America/Chicago";

-- Query 6
SELECT * 
FROM flights 
WHERE origin = "JFK";