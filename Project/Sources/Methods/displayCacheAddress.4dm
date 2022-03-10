//%attributes = {"invisible":true}



var $entries; $cacheInfo : Collection
var $colPos; $rowPos; $key : Integer
var $row; $entry; $cache : Object

$cache:=Form:C1466.ds.Address.getRemoteCache()
$entries:=$cache.entries
$cacheInfo:=New collection:C1472

For each ($entry; $entries)
	$key:=Num:C11($entry.key)-1
	$rowPos:=Int:C8($key/3)
	$colPos:=$key%3
	
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
	
	
End for each 

Form:C1466.cacheInfoAddress:=$cacheInfo
