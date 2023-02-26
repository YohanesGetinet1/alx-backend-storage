-- SQL script that ranks country origins of bands,
-- ordered by the number of (non-unique) fans

select origin, sum(nb_fans) as total_fans from metal_bands
group by origin order by total_fans;