select [Date]
      ,[Waybill No]
      ,[From City]
      ,[To City]
	  ,[Status]
from
[Sep 25].[dbo].[29 Sep OB]
WHERE
[From City] in (
-- MDY Region
'Anesakhan','Bagan','Han Myint Mo','Kume','Kyaukpadaung','Kyaukse',
'Madaya','Mahlaing','Meiktila','Mogok','Myingyan','Myitthar','Natoegyi',
'Nyaung-U','Pyawbwe','Pyin Oo Lwin','Sintgaing','Tada-U','Tatkon',
'TaungTha','Thazi','Wundwin','Yamethin',

-- SHN Region
'Aungpan','Hopong','PinLaung','Yatsauk','Ayetharyar','Nyaungshwe','Shwenyaung','Taunggyi',
'Tachileik','Kengtung','Kalaw','Lashio','Loilem','Hehoe','Pindaya','Ywangan','Loilem','Ywangan',


'Myitkyina'
)