
C_POINTER:C301($ptr)


[Persons:3]lastname:3:="New last name"
SAVE RECORD:C53([Persons:3])
READ ONLY:C145([Persons:3])

[Address:4]city:3:="4D city"
SAVE RECORD:C53([Address:4])
READ ONLY:C145([Address:4])


refreshLog 
displayCachePersons2 
displayCacheAddress2 

  //$ptr:=OBJECT Get pointer(Object named;"ExplanationsORDAClassic")
  //$ptr->:=_TabLineCode{30}

  //$ptr:=OBJECT Get pointer(Object named;"ExplanationsORDAClassic2")
  //$ptr->:=_TabLineCode{20}

OBJECT SET ENABLED:C1123(*;"UpdateClassic";False:C215)
OBJECT SET ENABLED:C1123(*;"ReloadPerson";True:C214)

OBJECT SET RGB COLORS:C628(*;"lastNameClassic";0x47B3)
OBJECT SET FONT STYLE:C166(*;"lastNameClassic";Bold:K14:2)
OBJECT SET RGB COLORS:C628(*;"cityClassic";0x47B3)
OBJECT SET FONT STYLE:C166(*;"cityClassic";Bold:K14:2)

manageTexts 