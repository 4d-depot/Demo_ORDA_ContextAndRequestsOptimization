

C_POINTER:C301($ptr)

settings2:=New object:C1471("context";"context2")
Form:C1466.list2:=Form:C1466.ds.Persons.query("children = 0";settings2)
Form:C1466.time2:=0

displayCache (20;"Persons")

OBJECT SET VISIBLE:C603(*;"Context2@";True:C214)

  //$ptr:=OBJECT Get pointer(Object named;"ExplanationsORDACache")
  //$ptr->:=_TabLineCode{28}

manageTexts 