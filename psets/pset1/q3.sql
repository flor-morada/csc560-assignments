-- Q3
select season || '|' || line_id || '|' || direction || '|' || total_ons
from rail_ridership
where
    time_period_id = 'time_period_06'
    and station_id = (
        select station_id from stations
        where station_name = 'Kendall/MIT'
    )
order by
    season asc,
    direction asc;