select [Date]
	,[Waybill No]
	--,[Sender/Internal Reference]
    ,[From City]
    ,[Branch]
    ,[To City]
    ,[To City/Short Code]
    ,[Service Type]
    ,[Status]
from 
	[Oct 25].[dbo].[27 Oct OB]
where
	[From City]
	in (
	'Mottama','Mudon','Mawlamyine','Thanbyuzayat','Chaungzone','Paung',
	'Bilin','Ye','Kyaikkaw','Kyaikto','Thaton','Kyaikkhami',
	'Kyaikmaraw','Zinkyaik','Thein Za Yat',
	'Hlaingbwe','Hpa-An','Myawaddy','Myaingkalay','Dawei','Kawthoung','Myeik'
	)