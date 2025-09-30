select cast ([To Delivery Date] as Date) as Delivery_Date,
[Branch],[Delivery Man],
substring ([Sender/Internal Reference],1,2) as [Customer Type],
cast([Completed Time] as Date) as Complete_Date,
[Status],count(*) as Total
from [JulyData].[dbo].[29 July Deli]
where [Status] ='Completed' and [Delivery Man] is not NULL
or [Status] ='Cancelled' or [Status] ='Reattempted' 
group by cast ([To Delivery Date] as Date),
[Branch],[Delivery Man],
substring ([Sender/Internal Reference],1,2),
[Status],cast([Completed Time] as Date) 
order by cast ([To Delivery Date] as Date) asc
