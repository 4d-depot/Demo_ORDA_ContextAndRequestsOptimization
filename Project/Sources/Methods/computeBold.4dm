//%attributes = {"invisible":true}

#DECLARE()->$result : Object


var $data : Object
var $cell : Text
var $position : Integer
var $dataClass : Text

$result:=New object:C1471
$result.cell:=New object:C1471

For each ($cell; This:C1470)
	$data:=This:C1470[$cell].data
	$position:=Position:C15(" dataclass"; _dataClassList{_dataClassList})
	$dataClass:=Substring:C12(_dataClassList{_dataClassList}; 1; $position-1)
	
	Case of 
		: (Current form name:C1298="ViewCache")
			If ($data.age#Null:C1517)
				$result.cell[$cell+"_4"]:=Form:C1466.bold
			End if 
			
			
		: ((Current form name:C1298="ViewCacheWithList") & ($dataClass="Persons"))  // Cache Persons dataclass
			If ($data.children#Null:C1517)
				$result.cell[$cell+"_5"]:=Form:C1466.bold
			End if 
			
		: ((Current form name:C1298="ViewCacheWithList") & ($dataClass="Address"))  // Cache Address dataclass
			If (($data.zipCode#Null:C1517) & ($data.city#Null:C1517))
				$result.cell[$cell+"_5"]:=Form:C1466.bold
			End if 
			
	End case 
	
End for each 

