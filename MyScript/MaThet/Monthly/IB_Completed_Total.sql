with CTE_IB AS (
    SELECT * FROM [Sep_Data].[dbo].[IB_MDY]
	where [Consignment Status]='completed'
    UNION ALL
    SELECT * FROM [Sep_Data].[dbo].[IB_NPW]
	where [Consignment Status]='completed'
    UNION ALL
    SELECT * FROM [Sep_Data].[dbo].[IB_YGN]
	where [Consignment Status]='completed'
    UNION ALL
    SELECT * FROM [Sep_Data].[dbo].[IB_REG]
	where [Consignment Status]='completed'
)
select 'Sep' as Month,
[Deliveryman],
[To City],[Consignment Status],count(*) as Total
from CTE_IB
--where
--[To City]= 'Mawlamyine'
--and
--[Destination Branch] = 'MLM'
group by [To City],[Consignment Status],[Deliveryman]
order by [To City] asc