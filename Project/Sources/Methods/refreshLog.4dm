//%attributes = {"invisible":true}

C_LONGINT:C283($number)
C_OBJECT:C1216($obj;$request)
C_COLLECTION:C1488($log)

Form:C1466.log:=New collection:C1472

$number:=Form:C1466.ds.getRequestLog().length

$log:=Form:C1466.ds.getRequestLog().orderBy("startTime desc")

For each ($obj;$log)
	
	If (Position:C15("release";$obj.url)=0)
		$request:=New object:C1471
		$request.response:=$obj.response.body
		$request.url:=convertURLCharacters ($obj.url)
		$request.startTime:=$obj.startTime
		$request.number:=$number
		$number:=$number-1
		Form:C1466.log.push($request)
	End if 
	
End for each 

Form:C1466.log:=Form:C1466.log.orderBy("number")

