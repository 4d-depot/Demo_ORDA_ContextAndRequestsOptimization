
//C_LONGINT($ev)

//C_REAL($x; $y)
//C_LONGINT($z)

//C_OBJECT($hover; $entry)


//$ev:=Form event code

//Case of 
//: (($ev=On Mouse Move) | ($ev=On Mouse Enter))

//Form.hover:=Null

//If (Form.cacheInfo#Null)

//GET MOUSE($x; $y; $z)

//$result:=cellCoordinates($x-40; $y-60)

//If ($result.row<=Form.cacheInfo.length)
//$entry:=Form.cacheInfo[$result.row-1]["col"+String($result.column-1)]

//If ($entry#Null)
//$hover:=New object
//$hover.key:=$entry.key
//$hover.gender:=$entry.data.gender
//$hover.children:=$entry.data.children
//$hover.firstname:=$entry.data.firstname
//$hover.lastname:=$entry.data.lastname
//Form.hover:=$hover
//End if 
//End if 
//End if 

//: ($ev=On Mouse Leave)
//Form.hover:=Null
//End case 

getDataHovered(40; 60)