CREATE TABLE airports (
faa text primary key,
name text not null,
tzone text not null
);
CREATE TABLE airlines (
carrier text primary key,
name text not null
);
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
-- CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE passengers (
passengerid integer primary key autoincrement,
fullname text not null,
flightid integer not null,
carrier text not null,
foreign key (flightid) references flights(id),
foreign key (carrier) references airlines(carrier)
);
