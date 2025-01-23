-- Q4
-- Your query goes here.
select routes.route_id || '|' || direction || '|' || route_name || '|' || count(station_id) || '|' || sum(distance_from_last_station_miles)
    from routes join station_orders on routes.route_id=station_orders.route_id
    where line_id <> 'green'
    group by routes.route_id
    order by count(station_id) DESC, sum(distance_from_last_station_miles) DESC;