//%attributes = {}

#DECLARE($obj : Object)

If (Position:C15("$release"; $obj.value.url)=0)
	$obj.result:=True:C214
End if 