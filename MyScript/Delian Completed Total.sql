with CTE_Table as (
SELECT * FROM Jun_Data.[dbo].[IB_MDY]
WHERE [Consignment Status]='Completed'
UNION 
SELECT * FROM Jun_Data.[dbo].[IB_NPW]
WHERE [Consignment Status]='Completed'
UNION 
SELECT * FROM Jun_Data.[dbo].[IB_REG]
WHERE [Consignment Status]='Completed'
UNION 
SELECT * FROM Jun_Data.[dbo].[IB_YGN]
WHERE [Consignment Status]='Completed'
)
SELECT 'Jun' as Month,[Destination Branch],[Deliveryman],
[Consignment Status],count(*) as Total
FROM CTE_Table
WHERE [Destination Branch] like 'KKW'
GROUP BY [Destination Branch],[Deliveryman],[Consignment Status]
ORDER BY [Destination Branch] asc



with CTE_Table as (
SELECT * FROM July_Data.[dbo].[IB_MDY]
WHERE [Consignment Status]='Completed'
UNION 
SELECT * FROM July_Data.[dbo].[IB_NPW]
WHERE [Consignment Status]='Completed'
UNION 
SELECT * FROM July_Data.[dbo].[IB_REG]
WHERE [Consignment Status]='Completed'
UNION 
SELECT * FROM July_Data.[dbo].[IB_YGN]
WHERE [Consignment Status]='Completed'
)
SELECT 'July' as Month,[Destination Branch],[Deliveryman],
[Consignment Status],count(*) as Total
FROM CTE_Table
WHERE [Destination Branch] like 'KKW'
GROUP BY [Destination Branch],[Deliveryman],[Consignment Status]
ORDER BY [Destination Branch] asc



with CTE_Table as (
SELECT * FROM Aug_Data.[dbo].[IB_MDY]
WHERE [Consignment Status]='Completed'
UNION 
SELECT * FROM Aug_Data.[dbo].[IB_NPW]
WHERE [Consignment Status]='Completed'
UNION 
SELECT * FROM Aug_Data.[dbo].[IB_REG]
WHERE [Consignment Status]='Completed'
UNION 
SELECT * FROM Aug_Data.[dbo].[IB_YGN]
WHERE [Consignment Status]='Completed'
)
SELECT 'August' as Month,[Destination Branch],[Deliveryman],
[Consignment Status],count(*) as Total
FROM CTE_Table
WHERE [Destination Branch] like 'KKW'
GROUP BY [Destination Branch],[Deliveryman],[Consignment Status]
ORDER BY [Destination Branch] asc