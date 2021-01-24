
/*
HackerRank_Weather Observation Station 5

Query the two cities in STATION with the shortest and logest CITY names, as well as their respective
lengths (i.e.: number of characters in the name). If you there is more than one smallest or largest city,
choose the one that comes first when ordered alphabetically

*/


select  concat(CITY,' ',length(CITY)) 
from STATION 
where length(CITY)=(select min(length(CITY))
                 from STATION 
                 order by length(CITY) desc) 
order by CITY limit 1;
select  concat(CITY,' ',length(CITY)) 
from STATION 
where length(CITY)=(select max(length(CITY))
                 from STATION 
                 order by length(CITY) desc) 
order by CITY;


