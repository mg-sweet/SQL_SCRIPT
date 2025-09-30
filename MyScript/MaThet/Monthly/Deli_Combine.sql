with CTE_Deli as(
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status] 
from 
[Sep 25].[dbo].[1 Sep Deli]
union all 
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from 
[Sep 25].[dbo].[2 Sep Deli]
union all 
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from 
[Sep 25].[dbo].[3 Sep Deli]
union all 
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from 
[Sep 25].[dbo].[4 Sep Deli]
union all 
select [To Delivery Date],[Waybill],
[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from 
[Sep 25].[dbo].[5 Sep Deli]
union all 
select [To Delivery Date],[Waybill],
[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from
[Sep 25].[dbo].[6 Sep Deli]
union all 
select [To Delivery Date],[Waybill],
[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from 
[Sep 25].[dbo].[7 Sep Deli]
union all 
select [To Delivery Date],[Waybill],
[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from 
[Sep 25].[dbo].[8 Sep Deli]
union all 
select [To Delivery Date],[Waybill],
[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from 
[Sep 25].[dbo].[9 Sep Deli]
union all 
select [To Delivery Date],[Waybill],
[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from
[Sep 25].[dbo].[10 Sep Deli]
)
select [To Delivery Date], Waybill AS [Waybill No#],Branch AS [Destination Branch],[Delivery Man] AS [Deliveryman],
CAST([Assigned Time] AS DATE) AS [Delivery assigned date],CAST([Completed Time] AS DATE) AS
[Delivery Completion Datetime],[Status] AS [Consignment Status]
from CTE_Deli
