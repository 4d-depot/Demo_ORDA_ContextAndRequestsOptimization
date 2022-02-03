//%attributes = {"invisible":true}

  //C_TEXT($text)
  //C_COLLECTION($coll)
  //C_OBJECT($addresses;$persons)


  //TRUNCATE TABLE([Persons])
  //SET DATABASE PARAMETER([Persons];Table sequence number;0)
  //$status:=ds.Persons.all().drop()


  //TRUNCATE TABLE([Address])
  //SET DATABASE PARAMETER([Address];Table sequence number;0)
  //$status:=ds.Address.all().drop()



  //$text:=Document to text(Get 4D folder(Current resources folder)+"adresses.txt")
  //$coll:=JSON Parse($text)
  //$addresses:=ds.Address.fromCollection($coll)

  //$text:=Document to text(Get 4D folder(Current resources folder)+"persons.txt")
  //$coll:=JSON Parse($text)
  //$persons:=ds.Persons.fromCollection($coll)

C_OBJECT:C1216($person;$address;$status)

$person:=Form:C1466.ds.Persons.get(1)
$person.lastname:="Peter"
$status:=$person.save()

$address:=$person.address
$address.city:="Perry Point"
$status:=$address.save()