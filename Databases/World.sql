USE World;
-- 1
SELECT COUNT(Name) 
FROM city 
WHERE CountryCode = "USA";

-- 2
SELECT population, LifeExpectancy 
FROM country 
WHERE name = "Argentina";

-- 3
SELECT Name, LifeExpectancy 
FROM country 
WHERE lifeexpectancy is not null 
ORDER BY LifeExpectancy LIMIT 1;


-- 4
SELECT ci.Name, co.Name
FROM city AS ci
JOIN country as co
ON ci.id = co.capital
WHERE ci.countryCode = "ESP";


-- 5
SELECT cl.Language
FROM countrylanguage AS cl
JOIN country as co
ON cl.countryCode = co.code
WHERE co.region = "Southeast Asia";

select c.name, ctl.language, c.region 
from country c
JOIN COUNTRYLANGUAGE ctl
ON ctl.countrycode = c.Code and c.Region like "%Southeast%"

-- 6
SELECT * FROM city WHERE name like 'F%';

-- 7
SELECT COUNT(c.Name) 
FROM city As c 
JOIN country As co 
ON c.countrycode = co.code
WHERE co.Name = "China";



-- 8
SELECT population FROM country

-- 9
SELECT COUNT(Name) FROM country ORDER BY Name ASC


-- 10
SELECT Name, population
FROM country ORDER BY population ASC LIMIT 10;

-- 11
SELECT Name, Population 
FROM city WHERE CountryCode = "JPN" 
ORDER BY Population DESC Limit 5;

-- 12
SELECT Name, Code
From country 
WHERE Headofstate LIKE "Elisabeth II%"  ORDER BY Name;


-- 13
SELECT Name, Population/SurfaceArea AS Ratio 
FROM Country 
Where population is NOT NULL AND population > 0
ORDER BY Ratio ASC LIMIT 10;

-- 14
SELECT DISTINCT Language FROM countrylanguage;

-- 15
SELECT Name, GNP FROM country ORDER BY GNP DESC LIMIT 10;
-- 16
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 10;

-- 17
SELECT *
FROM countrylanguage 
WHERE language ="FRENCH" AND percentage > 50


-- 18
SELECT Name Country_Name, LifeExpectancy 
FROM country 
WHERE LifeExpectancy IS NOT NULL
ORDER BY LifeExpectancy asc 
LIMIT 1
 

-- 19
SELECT governmentForm , count(governmentForm) FROM country
GROUP BY governmentForm
ORDER BY count(governmentForm) DESC
LIMIT 1

-- 20
SELECT COUNT(*)
FROM country
WHERE IndepYear >= "1970"













