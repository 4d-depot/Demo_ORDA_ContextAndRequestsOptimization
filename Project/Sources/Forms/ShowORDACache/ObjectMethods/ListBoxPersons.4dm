

Case of 
	: (Form event code:C388=On Selection Change:K2:29)
		
		Form:C1466.pos:=Form:C1466.currentPos
		
		If (Shift down:C543)
			// BAD PRACTICE
			Form:C1466.currentPerson:=Form:C1466.persons[Form:C1466.pos-1]
		Else 
			//GOOD PRACTICE - Let Form.currentPerson working
		End if 
		
		OBJECT SET ENABLED:C1123(*; "Previous"; Form:C1466.currentPerson#Null:C1517)
		OBJECT SET ENABLED:C1123(*; "Next"; Form:C1466.currentPerson#Null:C1517)
		
End case 