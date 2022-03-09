

var $e : cs:C1710.PersonsEntity
var $text : Text

Form:C1466.contextA:=New object:C1471("context"; "contextA")
Form:C1466.persons:=Form:C1466.ds.Persons.all(Form:C1466.contextA)

Form:C1466.list:=New collection:C1472
For each ($e; Form:C1466.persons)
	$text:=$e.firstname+" lives in "+($e.address.city)
	Form:C1466.list.push($text)
End for each 

If (Form:C1466.ds.getRemoteContextInfo("contextA")#Null:C1517)
	Form:C1466.contextAAtt:=Form:C1466.ds.getRemoteContextInfo("contextA").main
End if 

refreshLog

