

requestOptimization(2)

refreshLog

displayCache(20; "Persons")

Form:C1466.learntAttributes:=Choose:C955(Form:C1466.selection.getRemoteContextAttributes()#""; Form:C1466.selection.getRemoteContextAttributes(); "No learnt attributes at the moment")

OBJECT SET ENABLED:C1123(*; "Explanations1"; False:C215)
OBJECT SET ENABLED:C1123(*; "Go2"; False:C215)
OBJECT SET ENABLED:C1123(*; "Explanations2"; True:C214)
OBJECT SET ENABLED:C1123(*; "ViewList"; True:C214)
OBJECT SET VISIBLE:C603(*; "Conclusion1@"; True:C214)

manageTexts