-- Q5
select station_name || '|' || season || '|' || avg(number_service_days)
from rail_ridership join stations on rail_ridership.station_id = stations.station_id
group by station_name, season
order by 
    avg(number_service_days) desc,
    season asc,
    station_name asc;
