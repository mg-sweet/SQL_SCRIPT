select
	[Date]
	,[Waybill No]
	,[From City]
	,[To City]
	,[Status]
from
	[Sep 25].[dbo].[29 Sep OB]
where
	[From City]
	in (
	'Mottama','Mudon','Mawlamyine','Thanbyuzayat','Chaungzone','Paung',
	'Bilin','Ye','Kyaikkaw','Kyaikto','Thaton','Kyaikkhami',
	'Kyaikmaraw','Zinkyaik','Thein Za Yat',
	'Hlaingbwe','Hpa-An','Myawaddy','Myaingkalay','Dawei','Kawthoung','Myeik'
	)
