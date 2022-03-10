//%attributes = {"invisible":true}


#DECLARE($x : Real; $y : Real)->$result : Object

var $column; $row : Integer
var $quotient : Real
var $remainder : Real

$result:=New object:C1471

$quotient:=$x\40
$remainder:=$x%40
$column:=$quotient

If ($remainder>=0)
	$column:=$column+1
End if 

$quotient:=$y\40
$remainder:=$y%40
$row:=$quotient

If ($remainder>=0)
	$row:=$row+1
End if 

$result.column:=$column
$result.row:=$row

