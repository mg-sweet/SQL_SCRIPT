with CTE_IB as(
select * from Aug_Data.[dbo].[IB_MDY]
union
select * from Aug_Data.[dbo].[IB_REG]
union 
select * from Aug_Data.[dbo].[IB_YGN]
union 
select * from Aug_Data.[dbo].[IB_NPW]
)
select 'May' as Month,[Destination Branch],Deliveryman,
[Consignment Status],count(*) as Total
from CTE_IB
where [Consignment Status]='Completed' and [Destination Branch] not like 'YGN%'
and Deliveryman like '%Office%' or Deliveryman like '%Counter%'or [Deliveryman] like '%-%'
group by [Destination Branch],Deliveryman,
[Consignment Status]
order by [Destination Branch] asc 