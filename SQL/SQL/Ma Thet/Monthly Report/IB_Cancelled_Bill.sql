with CTE_IB AS (
    SELECT * FROM June_2025.[dbo].[IB_MDY]
	where [Consignment Status]='Cancelled'
    UNION ALL
    SELECT * FROM June_2025.[dbo].[IB_NPW]
	where [Consignment Status]='Cancelled'
    UNION ALL
    SELECT * FROM June_2025.[dbo].[IB_REG]
	where [Consignment Status]='Cancelled'
    UNION ALL
    SELECT * FROM June_2025.[dbo].[IB_YGN]
	where [Consignment Status]='Cancelled'
)
select 'June' as Month,
[To City],[Consignment Status],count(*) as Total
from CTE_IB
group by [To City],[Consignment Status]
order by [To City] asc