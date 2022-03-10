//%attributes = {"invisible":true}


var $person : cs:C1710.PersonsEntity
var $address : cs:C1710.AddressEntity
var $status : Object


$person:=Form:C1466.ds.Persons.get(1)
$person.lastname:="Peter"
$status:=$person.save()

$address:=$person.address
$address.city:="Perry Point"
$status:=$address.save()