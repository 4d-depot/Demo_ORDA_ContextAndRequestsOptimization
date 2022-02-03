//%attributes = {"invisible":true}


C_REAL:C285($1;$x;$2;$y)
C_LONGINT:C283($column;$row)
C_OBJECT:C1216($0;$result)

$x:=$1
$y:=$2

$result:=New object:C1471

$x:=$x
$y:=$y

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

$0:=$result