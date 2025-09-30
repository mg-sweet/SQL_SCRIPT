with CTE_OB as(
select * from June_2025.[dbo].[OB_MDY]
union
select * from June_2025.[dbo].[OB_NPW]
union 
select * from June_2025.[dbo].[OB_REG]
union 
select * from June_2025.[dbo].[OB_YGN]
)
select Month([Date]) as Month,[From City],count(*) as Total
from CTE_OB
group by Month([Date]),[From City]
order by [From City] asc