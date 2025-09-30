with CTE_OB as(
select * from [Jun_Data].[dbo].[IB_MDY]
union
select * from [Jun_Data].[dbo].[IB_NPW]
union 
select * from [Jun_Data].[dbo].[IB_REG]
union 
select * from [Jun_Data].[dbo].[IB_YGN]
)
select Month([Date]) as Month,[To City],count(*) as Total
from CTE_OB
group by Month([Date]),[To City]
order by [To City] asc