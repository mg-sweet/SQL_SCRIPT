with CTE_OB as (
select * from [Sep_Data].[dbo].[OB_MDY]
union
select * from [Sep_Data].[dbo].[OB_NPW]
union 
select * from [Sep_Data].[dbo].[OB_REG]
union 
select * from [Sep_Data].[dbo].[OB_YGN]
)
select  
--Month([Date]) as Month
TRY_CONVERT(DATE,[Date]) AS Month
,[From City],
case 
when SUBSTRING([Customer Reference No#],1,1)='I' then 'I'
when SUBSTRING([Customer Reference No#],1,1)='E' then 'E'
when SUBSTRING([Customer Reference No#],1,2)='PU' then 'PUB'
when SUBSTRING([Customer Reference No#],1,2)='PT' then 'E'
when SUBSTRING([Customer Reference No#],1,1)='B' then 'BP'
when SUBSTRING([Customer Reference No#],1,2)='CC' then 'CC'
when SUBSTRING([Customer Reference No#],1,1) is NULL then 'I'
when SUBSTRING([Customer Reference No#],1,1)='C' then 'I'
end as Customer_Type ,count(*) as Total
from CTE_OB
group by [Date],[From City],[Customer Reference No#]