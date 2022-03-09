


Form:C1466.ds.startRequestLog(1000)
Form:C1466.person:=Form:C1466.ds.Persons.get(1)

READ WRITE:C146([Persons:3])
READ WRITE:C146([Address:4])
QUERY:C277([Persons:3]; [Persons:3]ID:1=1)
RELATE ONE SELECTION:C349([Persons:3]; [Address:4])

Form:C1466.time3:=0

OBJECT SET VISIBLE:C603(*; "GetPersonTimer@"; True:C214)

refreshLog
displayCache(3; "Persons")
displayCacheAddress


OBJECT SET ENABLED:C1123(*; "GetPerson"; False:C215)
OBJECT SET ENABLED:C1123(*; "UpdateClassic"; True:C214)



manageTexts
