with cte as(
select * from bike_share_yr_0
union all
select * from bike_share_yr_1)


select 
	dteday,
	season,
	cte.yr,
	weekday,
	hr,
	rider_type,
	riders,
	price,
	COGS,
	riders*price as revenue,
	riders*price-COGS as profit
from cte
left join cost_table
on cte.yr = cost_table.yr