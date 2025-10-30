	with CTE_IB as(
	SELECT * FROM [Sep_Data].[dbo].[IB_MDY]
    UNION all
    SELECT * FROM [Sep_Data].[dbo].[IB_NPW]
	UNION all
    SELECT * FROM [Sep_Data].[dbo].[IB_YGN]
    UNION all
    SELECT * FROM [Sep_Data].[dbo].[IB_REG])
select Month([Date]) as Month,[To City],
case 
when SUBSTRING([Customer Reference No#],1,1)='I' then 'I'
when SUBSTRING([Customer Reference No#],1,1)='E' then 'E'
when SUBSTRING([Customer Reference No#],1,2)='PU' then 'PUB'
when SUBSTRING([Customer Reference No#],1,2)='PT' then 'E'
when SUBSTRING([Customer Reference No#],1,1)='B' then 'BP'
when SUBSTRING([Customer Reference No#],1,2)='CC' then 'CC'
when SUBSTRING([Customer Reference No#],1,1) is NULL then 'I'
when SUBSTRING([Customer Reference No#],1,1)='C' then 'I'
end as Customer_Type,count(distinct [Waybill No#]) as Total
from CTE_IB
Group by Month([Date]),[To City],[Customer Reference No#]
order by [To City] asc