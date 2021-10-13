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
INSERT INTO airports VALUES('AMS','AMS-Amsterdam Airport Schiphol','Central European Summer Time');
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
foreign key (origin) references airports(faa),
foreign key (destination) references airports(faa)
);
INSERT INTO flights VALUES(1,'DFW','ORD',165);
INSERT INTO flights VALUES(2,'EWR','IAH',227);
INSERT INTO flights VALUES(3,'JFK','MIA',160);
INSERT INTO flights VALUES(4,'JFK','BQK',300);
INSERT INTO flights VALUES(5,'EWR','ORD',150);
INSERT INTO flights VALUES(6,'EWR','FLL',158);
INSERT INTO flights VALUES(7,'LGA','DFW',257);
INSERT INTO flights VALUES(8,'ORD','AMS',530);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('flights',8);
COMMIT;
