WITH CTE_Combine as (
--select [Date],[Waybill No#],[Customer Reference No#],[Customer],[Pickupman],[Origin Branch] from [Aug_Data].[dbo].[IB_MDY]
--union all
--select [Date],[Waybill No#],[Customer Reference No#],[Customer],[Pickupman],[Origin Branch] from [Aug_Data].[dbo].[IB_NPW]
--union all
--select [Date],[Waybill No#],[Customer Reference No#],[Customer],[Pickupman],[Origin Branch] from [Aug_Data].[dbo].[IB_REG]
--union all
--select [Date],[Waybill No#],[Customer Reference No#],[Customer],[Pickupman],[Origin Branch] from [Aug_Data].[dbo].[IB_YGN]
--union all
select [Date],[Waybill No#],[Customer Reference No#],[Customer],[Pickupman],[Origin Branch] from [Aug_Data].[dbo].[OB_MDY]
union all
select [Date],[Waybill No#],[Customer Reference No#],[Customer],[Pickupman],[Origin Branch] from [Aug_Data].[dbo].[OB_NPW]
union all
select [Date],[Waybill No#],[Customer Reference No#],[Customer],[Pickupman],[Origin Branch] from [Aug_Data].[dbo].[OB_YGN]
union all
select [Date],[Waybill No#],[Customer Reference No#],[Customer],[Pickupman],[Origin Branch] from [Aug_Data].[dbo].[OB_REG]

)

SELECT top(1000)
	[Date]
	--,[Waybill No#]
	,[Customer Reference No#]
	,[CTE_Combine].[Origin Branch]
	,[Pickupman] 
	,case 
	when SUBSTRING([Customer Reference No#],1,1)='I' then 'I'
	when SUBSTRING([Customer Reference No#],1,1)='E' then 'E'
	when SUBSTRING([Customer Reference No#],1,2)='PU' then 'PUB'
	when SUBSTRING([Customer Reference No#],1,2)='PT' then 'E'
	when SUBSTRING([Customer Reference No#],1,1)='B' then 'BP'
	when SUBSTRING([Customer Reference No#],1,2)='CC' then 'CC'
	when SUBSTRING([Customer Reference No#],1,1) is NULL then 'I'
	when SUBSTRING([Customer Reference No#],1,1)='C' then 'I'
	end as Customer_Type ,count(*) as Total
		
	FROM
	CTE_Combine
	where Pickupman <> 'null'
	--and
	--[Customer Reference No#] = 'E2371651'
	--AND
	--[Pickupman] = 'TheingiMyatLinNOKA'
	group by [Date],[Customer Reference No#],[Pickupman], [Origin Branch]