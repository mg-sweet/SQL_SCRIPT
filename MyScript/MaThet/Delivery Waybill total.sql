select cast ([To Delivery Date] as Date) as Delivery_Date,
[Branch],[Delivery Man],
cast([Completed Time] as Date) as Complete_Date,
[Status],count(*) as Total
from [August].[dbo].[30 Aug Deli]
where [Status] = 'Completed' 
--or [Status] ='Cancelled' or [Status] ='Reattempted' 
group by cast ([To Delivery Date] as Date),
[Branch],[Delivery Man],
[Status],cast([Completed Time] as Date) 
order by cast ([To Delivery Date] as Date) asc

SELECT 
	--*
	[Waybill]
	,[Status]
FROM
	[Sep 25].[dbo].[29 Sep Deli]
WHERE 
--(
[Status] = 'Completed'
OR [Status] = 'Cancelled'
AND 
--[Branch] NOT LIKE ('NPW-%')
--AND
--[Branch] NOT LIKE ('MDY-%')
--AND
[Branch] NOT LIKE ('YGN-%')



select cast ([To Delivery Date] as Date) as Delivery_Date,
[Branch],[Delivery Man],
cast([Completed Time] as Date) as Complete_Date,
[Status],count(*) as Total
from [Sep 25].[dbo].[29 Sep Deli]
where [Status] = 'Completed' 
and
[Branch] like 'YGN-%'
group by cast ([To Delivery Date] as Date),
[Branch],[Delivery Man],
[Status],cast([Completed Time] as Date) 
order by cast ([To Delivery Date] as Date) asc
