

var $text; $dataClass : Text
var $e : cs:C1710.PersonsEntity
var $position : Integer


Form:C1466.ds.startRequestLog(1000)
Form:C1466.selection:=Form:C1466.ds.Persons.all()
Form:C1466.list:=New collection:C1472

For each ($e; Form:C1466.selection)
	$text:=$e.firstname+" is "+String:C10($e.age)
	
	If ($e.age>=80)
		$text:=$text+" and lives in "+$e.address.city
	End if 
	
	Form:C1466.list.push($text)
End for each 

Form:C1466.ds.stopRequestLog()

refreshLog

$position:=Position:C15(" dataclass"; _dataClassList{_dataClassList})
$dataClass:=Substring:C12(_dataClassList{_dataClassList}; 1; $position-1)
displayCache(20; $dataClass)

Form:C1466.learntAttributes:=Choose:C955(Form:C1466.selection.getRemoteContextAttributes()#""; Form:C1466.selection.getRemoteContextAttributes(); "No learnt attributes at the moment")

OBJECT SET ENABLED:C1123(*; "ViewList2"; True:C214)
OBJECT SET ENABLED:C1123(*; "Go3"; False:C215)

manageTexts