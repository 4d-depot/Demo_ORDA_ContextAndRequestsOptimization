
C_LONGINT:C283($ev)

C_REAL:C285($x;$y)
C_LONGINT:C283($z)

C_OBJECT:C1216($entry)


$ev:=Form event code:C388

Case of 
	: (($ev=On Mouse Move:K2:35) | ($ev=On Mouse Enter:K2:33))
		
		Form:C1466.hover:=Null:C1517
		
		If (Form:C1466.cacheInfoAddress.length#0)
			
			GET MOUSE:C468($x;$y;$z)
			
			$result:=cellCoordinates ($x-640;$y-580)
			
			If ($result.row<=Form:C1466.cacheInfoPersons.length)
				$entry:=Form:C1466.cacheInfoAddress[$result.row-1]["col"+String:C10($result.column-1)]
				
				If ($entry#Null:C1517)
					Form:C1466.hover:=New object:C1471
					Form:C1466.hover:=$entry.data
				End if 
			End if 
		End if 
		
	: ($ev=On Mouse Leave:K2:34)
		Form:C1466.hover:=Null:C1517
End case 

