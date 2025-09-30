with cte_IB as (
select [Date],[Waybill No#], [Consignment Status]  from [Aug_Data].[dbo].[IB_MDY]
union all
select [Date],[Waybill No#], [Consignment Status]  from [Aug_Data].[dbo].IB_NPW
union all
select [Date],[Waybill No#], [Consignment Status]  from [Aug_Data].[dbo].IB_REG
union all
select [Date],[Waybill No#], [Consignment Status]  from [Aug_Data].[dbo].IB_YGN
)
select 
	DATE
	,cte_IB.[Waybill No#]
	,[Consignment status]
	from cte_IB
where 
	--Date = '2025-08-01' 
	[Waybill No#] = 'MDY17771176MYA'
	OR 
	[Waybill No#] like '%MDY17771176MYA%'
	OR
	[Waybill No#] = 'AAQ618560'


with cte_ob as (
select [Date],[Waybill No#]  from [Aug_Data].[dbo].[OB_MDY]
union all
select [Date],[Waybill No#] from [Aug_Data].[dbo].[OB_NPW]
union all
select [Date],[Waybill No#]  from [Aug_Data].[dbo].OB_REG
union all
select [Date],[Waybill No#]  from [Aug_Data].[dbo].OB_YGN
) 
select 
	Date
	,cte_ob.[Waybill No#]
	from cte_ob
where 
Date = '2025-08-01'