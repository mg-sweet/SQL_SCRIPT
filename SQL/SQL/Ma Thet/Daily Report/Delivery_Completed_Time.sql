select cast ([To Delivery Date] as Date) as Delivery_Date, [Waybill],
[Branch],[Delivery Man],[Completed Time],Status,
case 
when cast ([Completed Time] as time)<'17:00:00' then 'Before 5 PM'
when cast ([Completed Time] as time) between '17:00:00' and '19:00:00' then 'Between 5 PM & 7 PM'
when cast ([Completed Time] as time)>'19:00:00' then 'After 7 PM'
end as Completed_Status
,count(*) as Total
from [29 July Deli]
where [Status] = 'completed' 
or [Status] ='Cancelled' or [Status] ='Reattempted' and Branch not like 'YGN%'
group by cast ([To Delivery Date] as Date),[Waybill],
[Branch],[Delivery Man],[Completed Time],
[Status],cast([Completed Time] as Date), cast ([Completed Time] as time)
order by cast ([To Delivery Date] as Date) asc

