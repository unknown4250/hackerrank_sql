SELECT SUM(CITY.POPULATION)
FROM CITY 
JOIN COUNTRY ON CITY.COUNTRYCODE=COUNTRY.CODE AND CONTINENT='Asia';
