CREATE TABLE meteorites_temp(name TEXT, id INTEGER, nametype TEXT, class TEXT, mass REAL, discovery TEXT, year INTEGER, lat REAL, long REAL, PRIMARY KEY ('id));
.import --csv --skip 1 meteorites.csv meteorites_temp

UPDATE meteorites_temp SET mass = NULL WHERE mass = 0;
UPDATE meteorites_temp SET lat = NULL WHERE lat = 0;
UPDATE meteorites_temp SET long = NULL WHERE long = 0;
UPDATE meteorites_temp SET year = NULL WHERE year = 0 OR year LIKE '';

UPDATE meteorites_temp SET year = NULL WHERE year = 0;