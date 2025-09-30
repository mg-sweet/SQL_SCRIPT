select cast ([To Delivery Date] as Date) as Delivery_Date,
[Branch],[Delivery Man],
cast([Completed Time] as Date) as Complete_Date,
[Status],count(*) as Total
from [JulyData].[dbo].[30 July Deli]
where [Status] = 'Completed' 
or [Status] ='Cancelled' or [Status] ='Reattempted' 
group by cast ([To Delivery Date] as Date),
[Branch],[Delivery Man],
[Status],cast([Completed Time] as Date) 
order by cast ([To Delivery Date] as Date) asc
