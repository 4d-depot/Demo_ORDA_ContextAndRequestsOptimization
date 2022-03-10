//%attributes = {"invisible":true}

#DECLARE($step : Integer)

var $e : cs:C1710.PersonsEntity


Case of 
		
	: ($step=1)
		Form:C1466.ds.startRequestLog(1000)
		Form:C1466.selection:=Form:C1466.ds.Persons.all()
		
	: ($step=2)
		Form:C1466.list:=New collection:C1472
		For each ($e; Form:C1466.selection)
			Form:C1466.list.push($e.firstname+" "+$e.lastname)
		End for each 
		
End case 