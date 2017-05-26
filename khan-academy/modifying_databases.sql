-- Solution SQL for the project from the Modifying databases with SQL course ("App impersonator")
COPY world 
FROM '../data/world.sql'
-- Query to find population per square mile
SELECT DISTINCT country.name AS "Country Name", 
  country.continent AS "Continent", 
  country.population AS "Total Population", 
  round(country.surfacearea::DECIMAL, 2) AS "Square Miles",
  round (country.population / country.surfacearea::DECIMAL, 2) AS "Population Per Mile" 
  FROM countrylanguage
JOIN country ON countrylanguage.countrycode = country.code
JOIN city ON city.countrycode = country.code;
--- query result at '../data/queryresults.csv'