//%attributes = {"invisible":true}

C_LONGINT:C283($1;$step)
C_OBJECT:C1216($e)


$step:=$1

Case of 
		
	: ($step=1)
		Form:C1466.ds.startRequestLog(1000)
		Form:C1466.selection:=Form:C1466.ds.Persons.all()
		Form:C1466.ds.stopRequestLog()
		
		
	: ($step=2)
		Form:C1466.ds.startRequestLog()
		
		Form:C1466.list:=New collection:C1472
		For each ($e;Form:C1466.selection)
			Form:C1466.list.push($e.firstname+" "+$e.lastname)
		End for each 
		
		Form:C1466.ds.stopRequestLog()
		
End case 