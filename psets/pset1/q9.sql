-- Q9
select station_name, routes.route_id, line_id, num_routes 
from (select stations.station_name, stations.station_id, count(*) as num_routes
        from station_orders 
            join stations on station_orders.station_id = stations.station_id 
        group by station_orders.station_id
        order by count(*) desc
        limit 1
    ) as t 
    join station_orders on t.station_id = station_orders.station_id
    join routes on station_orders.route_id = routes.route_id
order by 
    line_id asc,
    routes.route_id asc;