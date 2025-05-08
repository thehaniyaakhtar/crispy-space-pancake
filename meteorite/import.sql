CREATE TABLE temp_meteorites (
    name TEXT,
    id INTEGER,
    nametype TEXT,
    class TEXT,
    mass TEXT,
    discovery TEXT,
    year TEXT,
    lat TEXT,
    long TEXT
);

.import --csv --skip 1 meteorites.csv temp_meteorites

CREATE TABLE meteorites (
    id INTEGER PRIMARY KEY,
    name TEXT,
    class TEXT,
    mass REAL,
    discovery TEXT,
    year INTEGER,
    lat REAL,
    long REAL
);

INSERT INTO meteorites (id, name, class, mass, discovery, year, lat, long)
SELECT
    ROW_NUMBER() OVER (ORDER BY
        CASE WHEN year = '' THEN NULL ELSE CAST(year AS REAL) END,
        name
    ) AS id,
    name,
    class,
    CASE WHEN mass = '' THEN NULL ELSE ROUND(CAST(mass AS REAL), 2) END,
    discovery,
    CASE WHEN year = '' THEN NULL ELSE CAST(year AS INTEGER) END,
    CASE WHEN lat = '' THEN NULL ELSE ROUND(CAST(lat AS REAL), 2) END,
    CASE WHEN long = '' THEN NULL ELSE ROUND(CAST(long AS REAL), 2) END
FROM temp_meteorites
WHERE nametype != 'Relict';
