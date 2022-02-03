//%attributes = {"invisible":true}


C_OBJECT:C1216($cacheTimeout90;$cacheTimeout210;$cacheTimeout3600)


$cacheTimeout120:=New object:C1471("timeout";120)
$cacheTimeout180:=New object:C1471("timeout";180)
$cacheTimeout3600:=New object:C1471("timeout";3600)


Case of 
	: (FORM Get current page:C276=6)
		Form:C1466.ds.Persons.setRemoteCacheSettings($cacheTimeout120)
		Form:C1466.ds.Address.setRemoteCacheSettings($cacheTimeout120)
		
	: (FORM Get current page:C276=7)
		Form:C1466.ds.Persons.setRemoteCacheSettings($cacheTimeout180)
		Form:C1466.ds.Address.setRemoteCacheSettings($cacheTimeout180)
		
	Else 
		Form:C1466.ds.Persons.setRemoteCacheSettings($cacheTimeout3600)
		Form:C1466.ds.Address.setRemoteCacheSettings($cacheTimeout3600)
		
End case 