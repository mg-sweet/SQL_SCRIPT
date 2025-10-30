WITH CTE_Complete as (
SELECT * FROM July_Data_25.[dbo].[IB_MDY]
WHERE [Consignment Status] = 'completed'
UNION ALL
SELECT * FROM July_Data_25.[dbo].[IB_NPW]
WHERE [Consignment Status] = 'completed'
UNION ALL
SELECT * FROM July_Data_25.[dbo].[IB_YGN]
WHERE [Consignment Status] = 'completed'
UNION ALL
SELECT * FROM July_Data_25.[dbo].[IB_REG]
WHERE [Consignment Status] = 'completed'
)
SELECT 'July' as Month, [Destination Branch], [Consignment Status], COUNT(*) AS TOTAL
FROM
CTE_Complete
GROUP BY [Destination Branch], [Consignment Status]