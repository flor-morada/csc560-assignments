-- Q7
select day_type || '|' || period_start_time || '|' || season || '|' || line_id || '|' || station_name || '|' || total_offs
from rail_ridership 
    join time_periods on rail_ridership.time_period_id = time_periods.time_period_id 
    join stations on rail_ridership.station_id = stations.station_id
order by
    total_offs desc
limit 1;
