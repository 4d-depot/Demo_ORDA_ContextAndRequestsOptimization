

C_OBJECT:C1216($obj)
C_BOOLEAN:C305($queryFound)



Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		LISTBOX SET ROWS HEIGHT:C835(*;"LBRequests5";50;lk pixels:K53:22)
		
		For each ($obj;Form:C1466.log) Until ($queryFound)
			If (Position:C15("query";$obj.url)#0)
				$queryFound:=True:C214
			End if 
		End for each 
		
		If ($queryFound)
			LISTBOX SET ROWS HEIGHT:C835(*;"LBRequests5";80;lk pixels:K53:22)
		End if 
		
End case 

