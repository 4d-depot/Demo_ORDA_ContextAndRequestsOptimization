
C_POINTER:C301($ptr)


  //Form.ds.startRequestLog(100)

Form:C1466.person.address.reload()

OBJECT SET RGB COLORS:C628(*;"cityORDA";0x47B3)
OBJECT SET FONT STYLE:C166(*;"cityORDA";Bold:K14:2)

refreshLog 
displayCachePersons2 
displayCacheAddress2 

OBJECT SET ENABLED:C1123(*;"ReloadAddress";False:C215)

  //$ptr:=OBJECT Get pointer(Object named;"ExplanationsORDAClassic")
  //$ptr->:=_TabLineCode{34}

  //Form.ds.stopRequestLog()

manageTexts 
