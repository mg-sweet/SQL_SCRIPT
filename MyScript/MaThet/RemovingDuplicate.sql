with RankedRows as(
select [To Delivery Date],[Waybill] ,[Completed Time],[Status],[Delivery Man],
ROW_NUMBER() over (
partition by [Waybill] 
order by  
case when [Status]='Completed' then 1 else 2 end ,
[Waybill] asc) as RN
from [Sep 25].[dbo].[29 Sep Deli]
)
DELETE FROM RankedRows
where RN>1
--select *
--from
--RankedRows
--where RN>1