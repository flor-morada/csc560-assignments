-- Q10
-- Your query goes here.
select station_name || '|' || line_name || '|' || max(bypass) from
    (select station_name, line_name, (cast(sum(average_flow) as real)-(sum(average_ons)+sum(average_offs)))/cast(sum(average_flow) as real) as bypass from
    rail_ridership join stations on stations.station_id = rail_ridership.station_id join lines on rail_ridership.line_id = lines.line_id
    where season = 'Fall 2019'
    group by rail_ridership.line_id, rail_ridership.station_id)
    group by line_name
    order by line_name ASC;