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
foreign key (origin) references airports(faa),
foreign key (destination) references airports(faa)
);
-- CREATE TABLE sqlite_sequence(name,seq);
