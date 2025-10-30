select  [Date]
	,[Waybill No]
	--,[Sender/Internal Reference]
    ,[From City]
    ,[Branch]
    ,[To City]
    ,[To City/Short Code]
    ,[Service Type]
    ,[Status]
	FROM [Oct 25].[dbo].[28 Oct OB]
	WHERE
	[From City] IN (
	'Taungoo','Yedashay','Bago','Zigon','Waw','Hpayargyi','Daik-U',
	'Gyobingauk','Pyay','InnTaKaw','Monyo','Nyaunglebin','Phyu',
	'Okpho','Shwedaung','Lower Minhla','Okeshitpin','Letpadan',
	'Tharyarwaddy','Thonese','Nattalin','Yae Ni','Paungde','Pyuntasa','Shwegyin',
	'Sitkwin','Kaytumaddy','Zeyawaddy','Paukkhaung','Paungtale','Penwegon',
	'Thanatpin','Innma','KyaukTaGa','Oktwin','Padaung','Oaethaekone',
	'Tharkaya','Thegon','Swar','Kawa','Kanyutkwin','MyoHla'
	,'Naypyidaw'
	)
	--OR
	--[Branch] LIKE 'NPW-%'
	