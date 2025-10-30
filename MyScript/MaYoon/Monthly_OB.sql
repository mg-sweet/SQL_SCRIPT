with cte_OB as (
select * from [Sep_Data].[dbo].[OB_MDY]
union
select * from [Sep_Data].[dbo].[OB_NPW]
union 
select * from [Sep_Data].[dbo].[OB_REG]
union 
select * from [Sep_Data].[dbo].[OB_YGN]
)
--select MONTH([Date]) AS Month, [From City], COUNT(*) as Total
select 'Sep' as Month, [From City], COUNT(*) as Total 
from
cte_OB
Group by [From City] 
Order by [From City] asc

select top(10000)* from [Sep_Data].[dbo].[OB_YGN]
