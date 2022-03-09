//%attributes = {}


#DECLARE($left : Integer; $top : Integer)

var $ev : Integer

var $x; $y : Real
var $z : Integer

var $entry; $result : Object

$ev:=Form event code:C388

Case of 
	: (($ev=On Mouse Move:K2:35) | ($ev=On Mouse Enter:K2:33))
		
		Form:C1466.hover:=Null:C1517
		
		If (Form:C1466.cacheInfo.length#0)
			
			GET MOUSE:C468($x; $y; $z)
			
			$result:=cellCoordinates($x-$left; $y-$top)
			
			If ($result.row<=Form:C1466.cacheInfo.length)
				$entry:=Form:C1466.cacheInfo[$result.row-1]["col"+String:C10($result.column-1)]
				
				If ($entry#Null:C1517)
					Form:C1466.hover:=$entry.data
				End if 
			End if 
		End if 
		
	: ($ev=On Mouse Leave:K2:34)
		Form:C1466.hover:=Null:C1517
End case 

