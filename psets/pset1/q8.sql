-- Q8
-- Your query goes here.
select station_name || '|' || total_ons from
    stations join rail_ridership on stations.station_id = rail_ridership.station_id
    where line_id = 'orange' and season = 'Fall 2018' and time_period_id = 'time_period_01' and direction = 0
    and total_ons > (select avg(total_ons) from rail_ridership
    where line_id = 'orange' and season = 'Fall 2018' and time_period_id = 'time_period_01' and direction = 0)
    order by total_ons DESC, station_name;
