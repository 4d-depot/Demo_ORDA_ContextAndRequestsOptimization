//%attributes = {"invisible":true}

#DECLARE($colNumbers : Integer; $dataclass : Text)

var $cacheInfo : Collection
var $colPos; $rowPos; $key : Integer
var $row; $entry; $cache : Object

$cache:=Form:C1466.ds[$dataclass].getRemoteCache()
$cacheInfo:=New collection:C1472

Form:C1466.numberOfRecords:=0

For each ($entry; $cache.entries)
	$key:=Num:C11($entry.key)-1
	$rowPos:=Int:C8($key/$colNumbers)
	$colPos:=$key%$colNumbers
	
	If ($rowPos>=$cacheInfo.length)
		$row:=New object:C1471
		$cacheInfo[$rowPos]:=$row
	Else 
		$row:=$cacheInfo[$rowPos]
		If ($row=Null:C1517)
			$row:=New object:C1471
			$cacheInfo[$rowPos]:=$row
		End if 
	End if 
	$row["col"+String:C10($colPos)]:=$entry
	
	Form:C1466.numberOfRecords:=Form:C1466.numberOfRecords+1
End for each 

Form:C1466.cacheInfo:=$cacheInfo
