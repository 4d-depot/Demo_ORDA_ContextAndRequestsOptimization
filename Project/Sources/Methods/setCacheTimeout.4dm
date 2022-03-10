//%attributes = {"invisible":true}


var $cacheTimeout120; $cacheTimeout180; $cacheTimeout30; $cacheTimeout3600 : Object


$cacheTimeout120:=New object:C1471("timeout"; 120)
$cacheTimeout180:=New object:C1471("timeout"; 180)
$cacheTimeout30:=New object:C1471("timeout"; 30)
$cacheTimeout3600:=New object:C1471("timeout"; 3600)


Case of 
	: (FORM Get current page:C276=5)
		Form:C1466.ds.Persons.setRemoteCacheSettings($cacheTimeout30)
		
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