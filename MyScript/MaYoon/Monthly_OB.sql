with cte_OB as (
select * from [Aug_Data].[dbo].[OB_MDY]
union
select * from [Aug_Data].[dbo].[OB_NPW]
union 
select * from [Aug_Data].[dbo].[OB_REG]
union 
select * from [Aug_Data].[dbo].[OB_YGN]
)
select MONTH([Date]) AS Month, [From City], COUNT(*) as Total 
from
cte_OB
Group by MONTH([Date]), [From City] 
Order by [From City] asc
