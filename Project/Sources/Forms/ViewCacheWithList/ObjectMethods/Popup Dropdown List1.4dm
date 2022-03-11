
var $position : Integer
var $dataClass : Text

Case of 
		
	: (Form event code:C388=On Data Change:K2:15)
		
		$position:=Position:C15(" dataclass"; Form:C1466.dataClassList.currentValue)
		$dataClass:=Substring:C12(Form:C1466.dataClassList.currentValue; 1; $position-1)
		
		
		displayCache(20; $dataClass)
		
End case 