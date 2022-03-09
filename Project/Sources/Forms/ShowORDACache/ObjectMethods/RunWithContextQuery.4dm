
var $e : cs:C1710.PersonsEntity
var $text : Text


Form:C1466.persons:=Form:C1466.ds.Persons.query("age >= 20"; Form:C1466.contextA)

Form:C1466.list:=New collection:C1472
For each ($e; Form:C1466.persons)
	$text:=$e.firstname+" is young and lives in "+($e.address.city)
	Form:C1466.list.push($text)
End for each 

If (Form:C1466.ds.getRemoteContextInfo("contextA")#Null:C1517)
	Form:C1466.contextAAtt:=Form:C1466.ds.getRemoteContextInfo("contextA").main
End if 

refreshLog

