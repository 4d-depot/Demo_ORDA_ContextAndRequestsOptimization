//%attributes = {"invisible":true}


#DECLARE()->$result : Object

var $paint; $data : Object
var $cell : Text

$result:=New object:C1471
$result.cell:=New object:C1471


For each ($cell; This:C1470)
	$data:=This:C1470[$cell].data
	If ($data#Null:C1517)
		If (This:C1470[$cell].expired)
			$paint:=Form:C1466.expiredColor
		Else 
			If ($data.firstname=Null:C1517)
				If ($data.lastname#Null:C1517)
					$paint:=Form:C1466.context2Color
				Else 
					$paint:=Null:C1517
				End if 
			Else 
				If ($data.lastname#Null:C1517)
					$paint:=Form:C1466.context1and2Color
				Else 
					$paint:=Form:C1466.context1Color
				End if 
			End if 
		End if 
		
		If ($paint#Null:C1517)
			$result.cell[$cell]:=$paint
		End if 
	End if 
End for each 



