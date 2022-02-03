
C_LONGINT:C283($col;$row;$win)
C_OBJECT:C1216($requestData)


Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		LISTBOX GET CELL POSITION:C971(*;"LBRequests1";$col;$row)
		
		$requestData:=Form:C1466.log[$row-1]
		
		$win:=Open form window:C675("ViewResponse";Plain form window:K39:10;Horizontally centered:K39:1;Vertically centered:K39:4)
		
		DIALOG:C40("ViewResponse";$requestData)
		
		CLOSE WINDOW:C154
		
End case 