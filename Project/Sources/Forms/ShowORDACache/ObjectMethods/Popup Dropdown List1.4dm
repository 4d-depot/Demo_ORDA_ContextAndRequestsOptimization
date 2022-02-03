
C_LONGINT:C283($position)
C_TEXT:C284($dataClass)

Case of 
		
	: (Form event code:C388=On Data Change:K2:15)
		
		$position:=Position:C15(" dataclass";_dataClassList{_dataClassList})
		$dataClass:=Substring:C12(_dataClassList{_dataClassList};1;$position-1)
		displayCache (20;$dataClass)
		
End case 