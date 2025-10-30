WITH CTE_Deli AS (
-- Up to 25-Sep
SELECT * FROM [Sep 25].[dbo].[1 Sep Deli] UNION ALL SELECT * FROM [Sep 25].[dbo].[11 Sep Deli] UNION ALL
SELECT * FROM [Sep 25].[dbo].[2 Sep Deli] UNION ALL SELECT * FROM [Sep 25].[dbo].[12 Sep Deli] UNION ALL
SELECT * FROM [Sep 25].[dbo].[3 Sep Deli] UNION ALL SELECT * FROM [Sep 25].[dbo].[13 Sep Deli] UNION ALL
SELECT * FROM [Sep 25].[dbo].[4 Sep Deli] UNION ALL SELECT * FROM [Sep 25].[dbo].[14 Sep Deli] UNION ALL
SELECT * FROM [Sep 25].[dbo].[5 Sep Deli] UNION ALL SELECT * FROM [Sep 25].[dbo].[15 Sep Deli] UNION ALL
SELECT * FROM [Sep 25].[dbo].[6 Sep Deli] UNION ALL SELECT * FROM [Sep 25].[dbo].[16 Sep Deli] UNION ALL
SELECT * FROM [Sep 25].[dbo].[7 Sep Deli] UNION ALL SELECT * FROM [Sep 25].[dbo].[17 Sep Deli] UNION ALL
SELECT * FROM [Sep 25].[dbo].[8 Sep Deli] UNION ALL SELECT * FROM [Sep 25].[dbo].[18 Sep Deli] UNION ALL
SELECT * FROM [Sep 25].[dbo].[9 Sep Deli] UNION ALL SELECT * FROM [Sep 25].[dbo].[19 Sep Deli] UNION ALL
SELECT * FROM [Sep 25].[dbo].[10 Sep Deli] UNION ALL SELECT * FROM [Sep 25].[dbo].[20 Sep Deli] UNION ALL
SELECT * FROM [Sep 25].[dbo].[21 Sep Deli] UNION ALL SELECT * FROM [Sep 25].[dbo].[24 Sep Deli] UNION ALL
SELECT * FROM [Sep 25].[dbo].[22 Sep Deli] UNION ALL SELECT * FROM [Sep 25].[dbo].[25 Sep Deli] UNION ALL --
SELECT * FROM [Sep 25].[dbo].[23 Sep Deli] UNION ALL SELECT * FROM [Sep 25].[dbo].[26 Sep Deli] UNION ALL
SELECT * FROM [Sep 25].[dbo].[27 Sep Deli] UNION ALL SELECT * FROM [Sep 25].[dbo].[28 Sep Deli] UNION ALL
SELECT * FROM [Sep 25].[dbo].[29 Sep Deli] UNION ALL SELECT * FROM [Sep 25].[dbo].[30 Sep Deli]
)
SELECT 
	'Sep' as Month
	,Branch
	--,[Delivery Man]
	,Status
	,COUNT(*) AS TOTAL_Completed
	FROM
	CTE_Deli
	where Status = 'Completed'
	
	--OR
	--[Delivery Man] = 'LaMinKhantTTN'
	--OR
	--[Delivery Man] = 'LaMinKhant‌TTN'
	
	group by Status, Branch