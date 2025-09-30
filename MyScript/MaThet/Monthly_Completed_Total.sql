WITH CTE_DELI AS (
	SELECT * FROM [Aug_Data].[dbo].[IB_REG]
	where [Consignment Status]='completed'
	UNION ALL
	SELECT * FROM [Aug_Data].[dbo].[IB_MDY]
	where [Consignment Status]='completed'
	UNION ALL
	SELECT * FROM [Aug_Data].[dbo].[IB_NPW]
	where [Consignment Status]='completed'
	UNION ALL
	SELECT * FROM [Aug_Data].[dbo].[IB_YGN]
	where [Consignment Status]='completed'
	)
select 
	--[To City]
	'August' as Month,
	[Destination Branch]
	,[Deliveryman]
	,[Consignment Status]
	,Count(*) as Total
from
CTE_DELI
where
[Consignment Status] = 'Completed'
AND
[Destination Branch] NOT LIKE 'YGN-%'
GROUP BY 
	[Deliveryman]
	,[Destination Branch]
	,[Consignment Status]
	,[To City]
	--ORDER BY [To City]