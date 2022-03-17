select * from olympics_country

select * from country_height

SELECT country_height.country, olympics_country.total_count, country_height.average_height_cm
FROM olympics_country
INNER JOIN country_height
ON olympics_country.country = country_height.country
ORDER BY olympics_country.total_count desc;