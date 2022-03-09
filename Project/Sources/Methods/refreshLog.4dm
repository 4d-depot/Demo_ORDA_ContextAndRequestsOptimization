//%attributes = {"invisible":true}

var $log : Collection
var $number : Integer
var $obj; $request : Object

Form:C1466.log:=New collection:C1472()

$log:=Form:C1466.ds.getRequestLog().reverse().filter("removeRelease")
$number:=1

For each ($obj; $log)
	$request:=New object:C1471
	$request.number:=$number
	$request.url:=convertURLCharacters($obj.url)
	$request.response:=$obj.response.body
	$number:=$number+1
	Form:C1466.log.push($request)
End for each 

Form:C1466.log:=Form:C1466.log.orderBy("number")

