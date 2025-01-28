-- Q6
-- Your query goes here.
select station_name || '|' || cast(max(cnt) as real) from 
    (select station_name, sum(gated_entries) as cnt
    from stations join gated_station_entries on stations.station_id=gated_station_entries.station_id
    where service_date like '2021-06%' or service_date like '2021-07%' or service_date like '2021-08%'
    group by stations.station_id);