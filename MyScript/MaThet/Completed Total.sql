WITH CTE_Complete as (
SELECT * FROM Jun_Data.[dbo].[IB_MDY]
WHERE [Consignment Status] = 'completed'
UNION ALL
SELECT * FROM Jun_Data.[dbo].[IB_NPW]
WHERE [Consignment Status] = 'completed'
UNION ALL
SELECT * FROM Jun_Data.[dbo].[IB_YGN]
WHERE [Consignment Status] = 'completed'
UNION ALL
SELECT * FROM Jun_Data.[dbo].[IB_REG]
WHERE [Consignment Status] = 'completed'
)
SELECT [Destination Branch], [Consignment Status], COUNT(*) AS TOTAL
FROM
CTE_Complete
GROUP BY [Destination Branch], [Consignment Status]
