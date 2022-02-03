//%attributes = {"invisible":true}

C_TEXT:C284($1;$url;$result;$0)

$url:=$1

  //%7B {
  //%22 “
  //%5B [
  //%7D }
  //%5D ]

$result:=Replace string:C233($url;"%7B";"{")
$result:=Replace string:C233($result;"%22";"\"")
$result:=Replace string:C233($result;"%5B";"[")
$result:=Replace string:C233($result;"%7D";"}")
$result:=Replace string:C233($result;"%5D";"]")

$0:=$result