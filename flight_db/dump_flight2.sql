PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE airports (
faa text primary key,
name text not null,
tzone text not null
);
INSERT INTO airports VALUES('DFW','Dallas Fort Worth Intl','America/Chicago');
INSERT INTO airports VALUES('BQK','Brunswick Golden Isles','American/New_York');
INSERT INTO airports VALUES('EWR','Newark Liberty Intl','America/New_York');
INSERT INTO airports VALUES('FLL','Fort Lauderdale Hollywood Intl','America/New_York');
INSERT INTO airports VALUES('IAH','George Bush Intercontinental','America/Chicago');
INSERT INTO airports VALUES('JFK','John F Kennedy Intl','America/New_York');
INSERT INTO airports VALUES('LGA','La Guardia','America/New_York');
INSERT INTO airports VALUES('MIA','Miami Intl','America/New_York');
INSERT INTO airports VALUES('ORD','Chicago Ohare Intl','America/Chicago');
INSERT INTO airports VALUES('SEA','Seattle-Tacoma International Airport','America/Pacific');
CREATE TABLE airlines (
carrier text primary key,
name text not null
);
INSERT INTO airlines VALUES('9E','Endeavor Air Inc.');
INSERT INTO airlines VALUES('AA','American Airlines Inc.');
INSERT INTO airlines VALUES('AS','Alaska Airlines Inc.');
INSERT INTO airlines VALUES('B6','JetBlue Airways');
INSERT INTO airlines VALUES('DL','Delta Air Lines Inc.');
INSERT INTO airlines VALUES('EV','ExpressJet Airlines Inc.');
INSERT INTO airlines VALUES('F9','Frontier Airlines Inc.');
INSERT INTO airlines VALUES('FL','AirTran Airways Corporation');
INSERT INTO airlines VALUES('HA','Hawaiian Airlines Inc.');
INSERT INTO airlines VALUES('MQ','Envoy Air');
INSERT INTO airlines VALUES('OO','SkyWest Airlines Inc.');
INSERT INTO airlines VALUES('UA','United Air Lines Inc.');
INSERT INTO airlines VALUES('US','US Airways Inc.');
INSERT INTO airlines VALUES('VX','Virgin America');
INSERT INTO airlines VALUES('WN','Southwest Airlines Co.');
INSERT INTO airlines VALUES('YV','Mesa Airlines Inc.');
CREATE TABLE flights (
id integer primary key autoincrement,
origin text not null,
destination text not null,
duration integer not null,
airlinecarrier text not null,
foreign key (airlinecarrier) references airlines(carrier),
foreign key (origin) references airports(faa),
foreign key (destination) references airports(faa)
);
INSERT INTO flights VALUES(1,'DFW','ORD',165,'EV');
INSERT INTO flights VALUES(2,'EWR','IAH',227,'AS');
INSERT INTO flights VALUES(3,'JFK','MIA',160,'EV');
INSERT INTO flights VALUES(4,'JFK','BQK',300,'HA');
INSERT INTO flights VALUES(5,'EWR','ORD',150,'MQ');
INSERT INTO flights VALUES(6,'EWR','FLL',158,'US');
INSERT INTO flights VALUES(7,'LGA','DFW',257,'MQ');
INSERT INTO flights VALUES(8,'JFK','ORD',430,'AA');
INSERT INTO flights VALUES(9,'LGA','ORG',225,'AA');
INSERT INTO flights VALUES(10,'SEA','DFW',420,'MQ');
CREATE TABLE passengers (
passengerid integer primary key autoincrement,
fullname text not null,
flightid integer not null,
carrier text not null,
foreign key (flightid) references flights(id),
foreign key (carrier) references airlines(carrier)
);
INSERT INTO passengers VALUES(1,'Adrianna Duncan',3,'EV');
INSERT INTO passengers VALUES(2,'Annie Wilson',5,'MQ');
INSERT INTO passengers VALUES(3,'Ethan Ward',6,'US');
INSERT INTO passengers VALUES(4,'Liam Court',9,'AA');
INSERT INTO passengers VALUES(5,'Naomi Clark',8,'AA');
INSERT INTO passengers VALUES(6,'Jen Clarkson',1,'EV');
INSERT INTO passengers VALUES(7,'Harry Wilson',7,'FL');
INSERT INTO passengers VALUES(8,'Ozzie Cardoza',10,'MQ');
INSERT INTO passengers VALUES(9,'Erin Silver',4,'HA');
INSERT INTO passengers VALUES(10,'Ivy Sullivan',3,'EV');
INSERT INTO passengers VALUES(11,'Javier Luna',5,'VX');
INSERT INTO passengers VALUES(12,'Ty Collins',6,'US');
INSERT INTO passengers VALUES(13,'Teddy Montgomery',8,'AA');
INSERT INTO passengers VALUES(14,'Navid Shirazi',7,'MQ');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('flights',10);
INSERT INTO sqlite_sequence VALUES('passengers',14);
COMMIT;
