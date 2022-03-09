//%attributes = {}


var $withURL : Collection

LISTBOX SET ROWS HEIGHT:C835(*; "LBRequests5"; 50; lk pixels:K53:22)

$withURL:=Form:C1466.log.query("url = :1"; "@filter@")

If ($withURL.length#0)
	LISTBOX SET ROWS HEIGHT:C835(*; "LBRequests5"; 80; lk pixels:K53:22)
End if 