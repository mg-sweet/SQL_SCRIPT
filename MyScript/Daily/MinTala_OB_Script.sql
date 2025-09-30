select  [Date]
	,[Waybill No]
    ,[From City]
    ,[Branch]
    ,[To City]
    ,[To City/Short Code]
    ,[Service Type]
    ,[Status]
	FROM [Sep 25].[dbo].[29 Sep OB]
	WHERE
	[From City] IN (
	'Taungoo','Yedashay','Bago','Zigon','Waw','Hpayargyi','Daik-U',
	'Gyobingauk','Pyay','InnTaKaw','Monyo','Nyaunglebin','Phyu',
	'Okpho','Shwedaung','Lower Minhla','Okeshitpin','Letpadan',
	'Tharyarwaddy','Thonese','Nattalin','Yae Ni','Paungde','Pyuntasa','Shwegyin',
	'Sitkwin','Kaytumaddy','Zeyawaddy','Paukkhaung','Paungtale','Penwegon',
	'Thanatpin','Innma','KyaukTaGa','Oktwin','Padaung','Oaethaekone',
	'Tharkaya','Thegon','Swar','Kawa','Kanyutkwin','MyoHla'
	)
	OR
	[Branch] LIKE 'NPW-%'