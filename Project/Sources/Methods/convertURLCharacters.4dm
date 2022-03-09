//%attributes = {"invisible":true}

#DECLARE($url : Text)->$result : Text

$result:=Replace string:C233($url; "%7B"; "{")
$result:=Replace string:C233($result; "%22"; "\"")
$result:=Replace string:C233($result; "%5B"; "[")
$result:=Replace string:C233($result; "%7D"; "}")
$result:=Replace string:C233($result; "%5D"; "]")

