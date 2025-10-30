with CTE_Deli as(
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status] 
from 
	[Oct 25].[dbo].[1 Oct Deli]
union all 
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from 
	[Oct 25].[dbo].[2 Oct Deli]
union all 
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from 
	[Oct 25].[dbo].[3 Oct Deli]
union all 
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from 
	[Oct 25].[dbo].[4 Oct Deli]
union all 
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from 
	[Oct 25].[dbo].[5 Oct Deli]
union all 
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from
	[Oct 25].[dbo].[6 Oct Deli]
union all 
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from 
	[Oct 25].[dbo].[7 Oct Deli]
union all 
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from 
	[Oct 25].[dbo].[8 Oct Deli]
union all 
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from 
	[Oct 25].[dbo].[9 Oct Deli]
union all 
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from
	[Oct 25].[dbo].[10 Oct Deli]
)
select [To Delivery Date], Waybill AS [Waybill No#],Branch AS [Destination Branch],[Delivery Man] AS [Deliveryman],
CAST([Assigned Time] AS DATE) AS [Delivery assigned date],CAST([Completed Time] AS DATE) AS
[Delivery Completion Datetime],[Status] AS [Consignment Status]
from CTE_Deli
