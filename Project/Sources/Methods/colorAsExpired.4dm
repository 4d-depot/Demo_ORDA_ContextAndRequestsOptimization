//%attributes = {"invisible":true}
$0:=New object:C1471
$0.cell:=New object:C1471
C_OBJECT:C1216($paint;$0;$data)
C_TEXT:C284($cell;$1;$colSuffix)

$colSuffix:=$1


For each ($cell;This:C1470)
	
	$data:=This:C1470[$cell].data
	
	$0.cell[$cell+$colSuffix]:=Form:C1466.neutral
	
	If ($data#Null:C1517)
		If (This:C1470[$cell].expired)
			$0.cell[$cell+$colSuffix].fill:="#C0C0C0"  // Light grey
		Else 
			$0.cell[$cell+$colSuffix].fill:="#FFFFFF"  // Blank
		End if 
		
		
		If (($data.firstname#Null:C1517) & ($data.lastname#Null:C1517) & ($data.age#Null:C1517) & ($data.gender#Null:C1517) & ($data.children#Null:C1517))
			$0.cell[$cell+$colSuffix].fontWeight:="bold"
		End if 
		
		If (($data.city#Null:C1517) & ($data.zipCode#Null:C1517))
			$0.cell[$cell+$colSuffix].fontWeight:="bold"
		End if 
		
		
	End if 
	
End for each 

