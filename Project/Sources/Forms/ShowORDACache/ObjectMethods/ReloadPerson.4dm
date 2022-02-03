
C_POINTER:C301($ptr)


  //Form.ds.startRequestLog(100)

Form:C1466.person.reload()

OBJECT SET RGB COLORS:C628(*;"lastNameORDA";0x47B3)
OBJECT SET FONT STYLE:C166(*;"lastNameORDA";Bold:K14:2)

If (Form:C1466.cacheInfoAddress[0].col0.expired)
	OBJECT SET RGB COLORS:C628(*;"cityORDA";0x47B3)
	OBJECT SET FONT STYLE:C166(*;"cityORDA";Bold:K14:2)
End if 

refreshLog 
displayCachePersons2 
displayCacheAddress2 

  //Form.response:=Form.log[Form.log.length-1].response

OBJECT SET ENABLED:C1123(*;"ReloadPerson";False:C215)
OBJECT SET ENABLED:C1123(*;"ReloadAddress";True:C214)

  //$ptr:=OBJECT Get pointer(Object named;"ExplanationsORDAClassic")
  //$ptr->:=_TabLineCode{32}

  //Form.ds.stopRequestLog()

manageTexts 