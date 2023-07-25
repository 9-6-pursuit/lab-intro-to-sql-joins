-- I chose topic 2, which involves working through SQL Zoo.
-- This topic allows me to practice writing SQL queries, performing
-- various operations, and utilizing JOINs.
DROP DATABASE IF EXISTS sqlzoo;

CREATE DATABASE sqlzoo;

\c sqlzoo

CREATE TABLE world (
    name TEXT PRIMARY KEY,
    continent TEXT,
    area FLOAT,
    population INTEGER,
    gdp FLOAT
);

INSERT INTO
    world (name, continent, area, population, gdp)
VALUES
    -- Asia
    ('Afghanistan', 'Asia', 652230, 25500100, 20343000000),
    ('Albania', 'Europe', 28748, 2831741, 12960000000),
    ('Algeria', 'Africa', 2381741, 37100000, 188681000000),
    ('Andorra', 'Europe', 468, 78115, 3712000000),
    ('Angola', 'Africa', 1246700, 20609294, 100990000000),
    ('India', 'Asia', 3287263, 1354051854, 2848073000000),
    ('China', 'Asia', 9596961, 1444216107, 14722915000000),
    ('Japan', 'Asia', 377975, 126476461, 5154470000000),
    (
        'South Korea',
        'Asia',
        100210,
        51269185,
        1789829000000
    ),
    ('Malaysia', 'Asia', 330803, 32365999, 364709000000),
    ('Thailand', 'Asia', 513120, 69037513, 505998000000),
    ('Vietnam', 'Asia', 331212, 97338579, 261921000000),
    (
        'Philippines',
        'Asia',
        300000,
        108116615,
        376795000000
    ),
    (
        'Indonesia',
        'Asia',
        1904569,
        276361783,
        1143156000000
    ),
    ('Pakistan', 'Asia', 881913, 225199937, 321792000000),
    (
        'Bangladesh',
        'Asia',
        147570,
        166303498,
        352819000000
    ),
    ('Iran', 'Asia', 1648195, 85034900, 466743000000),
    ('Iraq', 'Asia', 438317, 40372771, 235737000000),
    ('Turkey', 'Asia', 783562, 84339067, 754851000000),
    -- Africa
    ('Nigeria', 'Africa', 923768, 214028302, 510056000000),
    ('Egypt', 'Africa', 1002450, 91234496, 394281000000),
    (
        'Democratic Republic of the Congo',
        'Africa',
        2344858,
        101780263,
        484546000000
    ),
    ('Tanzania', 'Africa', 947300, 60012400, 61045400000),
    (
        'South Africa',
        'Africa',
        1214470,
        60482407,
        349001000000
    ),
    ('Kenya', 'Africa', 580367, 53771296, 95709300000),
    ('Morocco', 'Africa', 446550, 37056457, 122776000000),
    (
        'Ethiopia',
        'Africa',
        1104300,
        123349000,
        95752900000
    ),
    ('Somalia', 'Africa', 637657, 15893219, 6080000000),
    ('Mali', 'Africa', 1248574, 20250833, 45307000000),
    -- Europe
    (
        'United Kingdom',
        'Europe',
        243610,
        66488991,
        2865900000000
    ),
    ('Germany', 'Europe', 357114, 83019200, 3996756000000),
    ('France', 'Europe', 551695, 67413089, 2777530000000),
    ('Italy', 'Europe', 301340, 60461826, 2228814000000),
    ('Spain', 'Europe', 505992, 47076781, 1979290000000),
    ('Poland', 'Europe', 312685, 38104832, 633556000000),
    ('Ukraine', 'Europe', 603700, 43733762, 185600000000),
    ('Sweden', 'Europe', 450295, 10353451, 528290000000),
    ('Norway', 'Europe', 323808, 5468132, 403432000000),
    ('Denmark', 'Europe', 43094, 5822763, 342362000000),
    -- North America
    (
        'United States',
        'North America',
        9833517,
        331002651,
        21433225000000
    ),
    (
        'Canada',
        'North America',
        9984670,
        38005238,
        1730657000000
    ),
    (
        'Mexico',
        'North America',
        1964375,
        128932753,
        1217776000000
    ),
    -- South America
    (
        'Brazil',
        'South America',
        8515767,
        212559417,
        2061187000000
    ),
    (
        'Colombia',
        'South America',
        1141748,
        50882891,
        731460000000
    ),
    (
        'Argentina',
        'South America',
        2780400,
        45195774,
        449663000000
    ),
    -- Oceania
    (
        'Australia',
        'Oceania',
        7692024,
        25499884,
        1532225000000
    ),
    (
        'New Zealand',
        'Oceania',
        270467,
        4822233,
        206162000000
    );

-- Retrieve the population of France from the "world" table.
SELECT
    population
FROM
    world
WHERE
    name = 'France';

-- Retrieve the names and populations of countries with names 'Brazil', 'Russia', 'India', or 'China'.
SELECT
    name,
    population
FROM
    world
WHERE
    name IN ('Brazil', 'Russia', 'India', 'China');

-- Retrieve the names and areas of countries with areas between 250,000 and 300,000.
SELECT
    name,
    area
FROM
    world
WHERE
    area BETWEEN 250000 AND 300000;

-- Retrieve the names of countries that start with the letter 'F'.
SELECT
    name
FROM
    world
WHERE
    name LIKE 'F%';

-- Retrieve the names of countries that start with the letter 'T'.
SELECT
    name
FROM
    world
WHERE
    name LIKE 'T%';

-- Retrieve the names of countries that contain the letters 'ee' anywhere in their name.
SELECT
    name
FROM
    world
WHERE
    name LIKE '%ee%';

-- Retrieve the names of countries where the second letter is 'n', ordered by name.
SELECT
    name
FROM
    world
WHERE
    name LIKE '_n%'
ORDER BY
    name;

-- Retrieve the names of countries that start with the letters 'Cu'.
SELECT
    name
FROM
    world
WHERE
    name LIKE 'Cu%';

-- Retrieve the names, capitals, and continents of countries that contain the letter 'x' anywhere in their name.
SELECT
    name,
    continent
FROM
    world
WHERE
    name LIKE '%x%';

-- Retrieve the names of countries and concatenate 'town' to their name for countries that contain 'ina' anywhere in their name.
SELECT
    name,
    CONCAT(name, 'town')
FROM
    world
WHERE
    name LIKE '%ina%';

CREATE TABLE nobel (yr INTEGER, subject TEXT, winner TEXT);

INSERT INTO
    nobel (yr, subject, winner)
VALUES
    (1960, 'Chemistry', 'Willard F. Libby'),
    (1960, 'Literature', 'Saint-John Perse'),
    (1960, 'Medicine', 'Sir Frank Macfarlane Burnet'),
    (1960, 'Medicine', 'Peter Madawar'),
    (1961, 'Physics', 'Robert Hofstadter'),
    (1961, 'Physics', 'Rudolf Mössbauer'),
    (1961, 'Chemistry', 'Melvin Calvin'),
    (1961, 'Literature', 'Ivo Andric'),
    (1961, 'Peace', 'Dag Hammarskjöld'),
    (1961, 'Medicine', 'Georg von Békésy'),
    (1962, 'Physics', 'Lev Landau'),
    (1962, 'Physics', 'Emilio Segrè'),
    (1962, 'Chemistry', 'Max Perutz'),
    (1962, 'Chemistry', 'John Kendrew'),
    (1962, 'Literature', 'John Steinbeck'),
    (1962, 'Peace', 'Linus Pauling'),
    (1962, 'Medicine', 'Francis Crick'),
    (1962, 'Medicine', 'James Watson'),
    (1963, 'Physics', 'Eugene Wigner'),
    (1963, 'Physics', 'Maria Goeppert Mayer');

-- Retrieve the Nobel Prize winners for the year 1960.
SELECT
    yr,
    subject,
    winner
FROM
    nobel
WHERE
    yr = 1960;

-- Retrieve the Nobel Prize winners for the Physics category in the year 1960.
SELECT
    winner
FROM
    nobel
WHERE
    yr = 1960
    AND subject = 'Physics';

-- Retrieve all Nobel Prize winners for the years 1970 in the categories 'Cookery', 'Chemistry', and 'Literature'.
SELECT
    *
FROM
    nobel
WHERE
    yr = 1970
    AND subject IN ('Cookery', 'Chemistry', 'Literature');

-- Retrieve the names of countries whose population is greater than the population of Malaysia.
SELECT
    name
FROM
    world
WHERE
    population > (
        SELECT
            population
        FROM
            world
        WHERE
            name = 'Malaysia'
    );

-- Retrieve the name, population, and population percentage of each country in Europe compared to the population of Germany.
SELECT
    name,
    population,
    ROUND(
        (
            population * 1.0 / (
                SELECT
                    population
                FROM
                    world
                WHERE
                    name = 'Germany'
            )
        ) * 100,
        2
    ) AS population_percentage_of_Germany
FROM
    world
WHERE
    continent = 'Europe';

-- Retrieve the names of countries with populations greater than or equal to the population of any other country in the world.
SELECT
    name
FROM
    world x
WHERE
    population >= ALL (
        SELECT
            population
        FROM
            world y
        WHERE
            y.population > 0
    );

-- Retrieve the continents, names, and populations of countries that have the highest population within their respective continents.
SELECT
    continent,
    name,
    population
FROM
    world x
WHERE
    population >= ALL (
        SELECT
            population
        FROM
            world y
        WHERE
            y.continent = x.continent
            AND population > 0
    );

-- Retrieve the sum of all populations from the "world" table.
SELECT
    SUM(population)
FROM
    world;

CREATE TABLE countries_info (country_name TEXT PRIMARY KEY, official_language TEXT);

INSERT INTO
    countries_info (country_name, official_language)
VALUES
    ('Afghanistan', 'Pashto, Dari'),
    ('Albania', 'Albanian'),
    ('Algeria', 'Arabic'),
    ('Andorra', 'Catalan'),
    ('Angola', 'Portuguese'),
    ('Argentina', 'Spanish'),
    ('Australia', 'English'),
    ('Austria', 'German'),
    ('Bangladesh', 'Bengali'),
    ('Belgium', 'Dutch, French, German'),
    ('Brazil', 'Portuguese'),
    ('Canada', 'English, French'),
    ('China', 'Standard Chinese'),
    ('Egypt', 'Arabic'),
    ('France', 'French'),
    ('Germany', 'German'),
    ('India', 'Hindi, English'),
    ('Italy', 'Italian'),
    ('Japan', 'Japanese'),
    ('Mexico', 'Spanish');

-- Query: Show the country name, population, and official
-- language for each country in Asia.
SELECT
    w.name,
    w.population,
    ci.official_language
FROM
    world AS w
    JOIN countries_info AS ci ON w.name = ci.country_name
WHERE
    w.continent = 'Asia';

-- Query: Show the name of the countries along with their GDP
-- and official language, sorted by GDP in descending order.
SELECT
    w.name,
    w.gdp,
    ci.official_language
FROM
    world AS w
    JOIN countries_info AS ci ON w.name = ci.country_name
ORDER BY
    w.gdp DESC;

-- Query: Show the country name, area, and population for
-- all countries that have a GDP greater than 500 billion.
SELECT
    w.name,
    w.area,
    w.population
FROM
    world AS w
    JOIN countries_info AS ci ON w.name = ci.country_name
WHERE
    w.gdp > 500000000000;

-- Query: Show the country name, area, and official language for all
-- countries in Europe with a population greater than 50 million.
SELECT
    w.name,
    w.area,
    ci.official_language
FROM
    world AS w
    JOIN countries_info AS ci ON w.name = ci.country_name
WHERE
    w.continent = 'Europe'
    AND w.population > 50000000;