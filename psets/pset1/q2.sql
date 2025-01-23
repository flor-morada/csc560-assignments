-- Q2
-- Your query goes here.
select line_id, direction_desc, a.station_name, b.station_name
from (routes join stations as a on (first_station_id=a.station_id)) join stations as b on (last_station_id=b.station_id)
order by line_id, direction_desc, a.station_name, b.station_name;
