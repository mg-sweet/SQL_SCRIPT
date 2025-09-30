with CTE_Deli as(
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status] 
from Deli_Data.[dbo].['July1-Deli$']
union all 
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from Deli_Data.[dbo].['July2-Deli$']
union all 
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from Deli_Data.[dbo].[July3_Deli$]
union all 
select [To Delivery Date],[Waybill],[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from Deli_Data.[dbo].['July4-Deli$']
union all 
select [To Delivery Date],[Waybill],
[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from Deli_Data.[dbo].['July5-Deli$']
union all 
select [To Delivery Date],[Waybill],
[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from Deli_Data.[dbo].['July6-Deli$']
union all 
select [To Delivery Date],[Waybill],
[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from Deli_Data.[dbo].['July7-Deli$']
union all 
select [To Delivery Date],[Waybill],
[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from Deli_Data.[dbo].['July8-Deli$']
union all 
select [To Delivery Date],[Waybill],
[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from Deli_Data.[dbo].['July9-Deli$']
union all 
select [To Delivery Date],[Waybill],
[Branch],[Delivery Man],
[Assigned Time],[Completed Time],[Status]
from Deli_Data.[dbo].['July10-Deli$']
)
select [To Delivery Date], Waybill AS [Waybill No#],Branch AS [Destination Branch],[Delivery Man] AS [Deliveryman],
CAST([Assigned Time] AS DATE) AS [Delivery assigned date],CAST([Completed Time] AS DATE) AS
[Delivery Completion Datetime],[Status] AS [Consignment Status]
from CTE_Deli
