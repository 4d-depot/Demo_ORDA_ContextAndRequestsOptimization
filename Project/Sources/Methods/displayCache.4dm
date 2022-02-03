//%attributes = {"invisible":true}
C_COLLECTION:C1488($entries;$cacheInfo)
C_LONGINT:C283($colPos;$rowPos;$key)
C_OBJECT:C1216($row;$entry;$cache)

C_LONGINT:C283($1;$colNumbers)
C_TEXT:C284($2;$dataclass)

$colNumbers:=$1
$dataclass:=$2


$cache:=Form:C1466.ds[$dataclass].getRemoteCache()


$entries:=$cache.entries
$cacheInfo:=New collection:C1472
$colPos:=0

  //MS
Form:C1466.numberOfRecords:=0

For each ($entry;$entries)
	
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
	
	  //MS
	Form:C1466.numberOfRecords:=Form:C1466.numberOfRecords+1
	
	
End for each 

Form:C1466.cacheInfo:=$cacheInfo
