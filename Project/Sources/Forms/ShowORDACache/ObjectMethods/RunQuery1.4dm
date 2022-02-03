

C_POINTER:C301($ptr)


settings1:=New object:C1471("context";"context1")
Form:C1466.list1:=Form:C1466.ds.Persons.query("gender = 'M'";settings1)
Form:C1466.time1:=0

displayCache (20;"Persons")

OBJECT SET VISIBLE:C603(*;"Context1@";True:C214)

  //$ptr:=OBJECT Get pointer(Object named;"ExplanationsORDACache")
  //$ptr->:=_TabLineCode{28}

manageTexts 