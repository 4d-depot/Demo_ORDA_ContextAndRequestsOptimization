//%attributes = {"invisible":true}


#DECLARE($colSuffix : Text)->$result : Object

var $data : Object
var $cell : Text

$result:=New object:C1471
$result.cell:=New object:C1471

For each ($cell; This:C1470)
	$data:=This:C1470[$cell].data
	$result.cell[$cell+$colSuffix]:=Form:C1466.neutral
	
	If ($data#Null:C1517)
		If (This:C1470[$cell].expired)
			$result.cell[$cell+$colSuffix].fill:=Form:C1466.expiredColor.fill  // Light grey
		Else 
			$result.cell[$cell+$colSuffix].fill:=Form:C1466.blank.fill  // Blank
		End if 
		
		
		If (($data.firstname#Null:C1517) & ($data.lastname#Null:C1517) & ($data.age#Null:C1517) & ($data.gender#Null:C1517) & ($data.children#Null:C1517))
			$result.cell[$cell+$colSuffix].fontWeight:=Form:C1466.bold.fontWeight
		End if 
		
		If (($data.city#Null:C1517) & ($data.zipCode#Null:C1517))
			$result.cell[$cell+$colSuffix].fontWeight:=Form:C1466.bold.fontWeight
		End if 
		
		
	End if 
	
End for each 

