
C_OBJECT:C1216($ev)

C_REAL:C285($x;$y)
C_LONGINT:C283($z;$col;$row)

C_OBJECT:C1216($entry)


$ev:=FORM Event:C1606

Case of 
		
	: (($ev.code=On Mouse Move:K2:35) | ($ev.code=On Mouse Enter:K2:33))
		
		Form:C1466.hover:=Null:C1517
		
		If (Form:C1466.cacheInfo#Null:C1517)
			
			GET MOUSE:C468($x;$y;$z)
			
			  //LISTBOX GET CELL POSITION(*;$ev.objectName;$x;$y;$col;$row)
			  //$result:=New object()
			  //$result.row:=$row
			  //$result.column:=$col
			
			$result:=cellCoordinates ($x-60;$y-340)
			
			If ($result.row<=Form:C1466.cacheInfo.length)
				$entry:=Form:C1466.cacheInfo[$result.row-1]["col"+String:C10($result.column-1)]
				
				If ($entry#Null:C1517)
					Form:C1466.hover:=$entry.data
				End if 
			End if 
		End if 
		
	: ($ev.code=On Mouse Leave:K2:34)
		Form:C1466.hover:=Null:C1517
End case 