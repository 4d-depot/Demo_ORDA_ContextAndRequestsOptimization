
var $settings : Object


Case of 
	: (Form event code:C388=On Load:K2:1)
		
		ARRAY TEXT:C222(_Descriptions; 0)
		ARRAY TEXT:C222(_TabLineCode; 0)
		ARRAY TEXT:C222(_TabTitles; 0)
		
		READ ONLY:C145([INFOS:2])
		
		QUERY:C277([INFOS:2]; [INFOS:2]pageNumber:2; "<="; 9)
		ORDER BY:C49([INFOS:2]; [INFOS:2]pageNumber:2; >)
		SELECTION TO ARRAY:C260([INFOS:2]Description:4; _Descriptions)
		
		QUERY:C277([INFOS:2]; [INFOS:2]pageNumber:2; "<="; 9)
		ORDER BY:C49([INFOS:2]; [INFOS:2]pageNumber:2; >)
		SELECTION TO ARRAY:C260([INFOS:2]TabTitle:3; _TabTitles)
		
		QUERY:C277([INFOS:2]; [INFOS:2]pageNumber:2; ">="; 10)
		ORDER BY:C49([INFOS:2]; [INFOS:2]pageNumber:2; >)
		SELECTION TO ARRAY:C260([INFOS:2]Description:4; _TabLineCode)
		
		$settings:=New object:C1471("hostname"; "127.0.0.1:8043")
		
		Case of 
			: (Application type:C494=4D Local mode:K5:1)
				Form:C1466.ds:=Open datastore:C1452($settings; "remoteds")
				
			: (Application type:C494=4D Remote mode:K5:5)
				Form:C1466.ds:=ds:C1482
		End case 
		
		//For ViewData form
		Form:C1466.metaHighAge:=New object:C1471
		Form:C1466.metaHighAge.fill:="#FB8C5B"
		Form:C1466.metaHighAge.fontWeight:="bold"
		
		importData
		
		OBJECT SET FONT SIZE:C165(*; "Go@"; 16)
		OBJECT SET FONT SIZE:C165(*; "View@"; 16)
		OBJECT SET FONT SIZE:C165(*; "Run@"; 16)
		OBJECT SET FONT SIZE:C165(*; "ClearLog"; 16)
		OBJECT SET FONT SIZE:C165(*; "ListBoxConfig"; 16)
		OBJECT SET FONT SIZE:C165(*; "Next"; 16)
		OBJECT SET FONT SIZE:C165(*; "Previous"; 16)
		
		//Page 1 and 5 (ListBox)
		Form:C1466.persons:=Form:C1466.ds.Persons.all()
		
		//Page 3 to view cache
		Form:C1466.dataClassList:=New object:C1471()
		Form:C1466.dataClassList.values:=New collection:C1472()
		Form:C1466.dataClassList.values.push("Persons dataclass")
		Form:C1466.dataClassList.values.push("Address dataclass")
		
		
		Form:C1466.context1Color:=New object:C1471("fill"; "#ff8080")  //Red - Context 1
		Form:C1466.context2Color:=New object:C1471("fill"; "#99ccff")  //Blue - Context 2 
		Form:C1466.context1and2Color:=New object:C1471("fill"; "#AA80FF")  // Purple
		Form:C1466.expiredColor:=New object:C1471("fill"; "#C0C0C0")  // Light grey
		Form:C1466.blank:=New object:C1471("fill"; "#FFFFFF")  // Blank
		Form:C1466.bold:=New object:C1471("fontWeight"; "bold")  // Bold
		Form:C1466.neutral:=New object:C1471
		
		//Page 7 (ORDA and classic 4D)
		READ ONLY:C145([Persons:3])
		READ ONLY:C145([Address:4])
		
		SET TIMER:C645(1*60)
		
		Form:C1466.ds.startRequestLog(1000)
		
		manageTexts
		RW
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		clearCache
		setCacheTimeout
		
		Form:C1466.ds.clearAllRemoteContexts()
		Form:C1466.ds.startRequestLog(1000)
		
		//Pages 2 - 3 - 4 - 5 - 7
		Form:C1466.log:=New collection:C1472
		
		//Pages 2 - 3
		Form:C1466.learntAttributes:=""
		Form:C1466.list:=New collection:C1472
		
		//Pages 2 - 3 - 6 - 7
		Form:C1466.cacheInfo:=Null:C1517
		
		//Page 6
		Form:C1466.hover:=Null:C1517
		
		//Page 1
		If (FORM Get current page:C276=1)
			Form:C1466.persons:=Form:C1466.ds.Persons.all()
		End if 
		
		//Page 2
		OBJECT SET ENABLED:C1123(*; "Go1"; True:C214)
		OBJECT SET ENABLED:C1123(*; "Go2"; False:C215)
		OBJECT SET ENABLED:C1123(*; "ViewList"; False:C215)
		
		//Page 3
		OBJECT SET ENABLED:C1123(*; "Go3"; True:C214)
		OBJECT SET ENABLED:C1123(*; "ViewList2"; False:C215)
		
		//Page 3
		Form:C1466.dataClassList.currentValue:="Persons dataclass"
		Form:C1466.dataClassList.index:=0
		
		//Page 4
		Form:C1466.contextAAtt:=""
		
		//Page 5
		Form:C1466.contextLB_list:=""
		Form:C1466.contextLB_detail:=""
		
		If (FORM Get current page:C276=5)
			Form:C1466.persons:=Form:C1466.ds.Persons.all(New object:C1471("context"; "listbox"))
			Form:C1466.currentPerson:=Null:C1517
			OBJECT SET ENABLED:C1123(*; "Previous"; Form:C1466.currentPerson#Null:C1517)
			OBJECT SET ENABLED:C1123(*; "Next"; Form:C1466.currentPerson#Null:C1517)
		End if 
		
		//Page 6
		Form:C1466.time1:=0
		Form:C1466.time2:=0
		Form:C1466.list1:=Null:C1517
		Form:C1466.list2:=Null:C1517
		Form:C1466.context1Att:=Null:C1517
		Form:C1466.context2Att:=Null:C1517
		OBJECT SET VISIBLE:C603(*; "Context1@"; False:C215)
		OBJECT SET VISIBLE:C603(*; "Context2@"; False:C215)
		
		//Page 7
		Form:C1466.time3:=0
		Form:C1466.person:=Null:C1517
		
		If (FORM Get current page:C276=7)
			Form:C1466.ds.startRequestLog(1000)
			
			UNLOAD RECORD:C212([Persons:3])
			REDUCE SELECTION:C351([Persons:3]; 0)
			UNLOAD RECORD:C212([Address:4])
			REDUCE SELECTION:C351([Address:4]; 0)
			
			importData
			clearCache
			
			OBJECT SET ENABLED:C1123(*; "GetPerson"; True:C214)
			OBJECT SET ENABLED:C1123(*; "UpdateClassic"; False:C215)
			OBJECT SET ENABLED:C1123(*; "ReloadPerson"; False:C215)
			
			OBJECT SET RGB COLORS:C628(*; "lastNameClassic"; Foreground color:K23:1)
			OBJECT SET RGB COLORS:C628(*; "cityClassic"; Foreground color:K23:1)
			OBJECT SET RGB COLORS:C628(*; "lastNameORDA"; Foreground color:K23:1)
			OBJECT SET RGB COLORS:C628(*; "cityORDA"; Foreground color:K23:1)
			
			OBJECT SET FONT STYLE:C166(*; "lastNameClassic"; Plain:K14:1)
			OBJECT SET FONT STYLE:C166(*; "cityClassic"; Plain:K14:1)
			OBJECT SET FONT STYLE:C166(*; "lastNameORDA"; Plain:K14:1)
			OBJECT SET FONT STYLE:C166(*; "cityORDA"; Plain:K14:1)
			
			OBJECT SET VISIBLE:C603(*; "GetPersonTimer@"; False:C215)
		End if 
		
		manageTexts
		
	: (Form event code:C388=On Timer:K2:25)
		
		Case of 
			: (FORM Get current page:C276=5)
				If (Form:C1466.persons#Null:C1517)
					Form:C1466.contextLB_list:=Form:C1466.persons.getRemoteContextAttributes()
				Else 
					Form:C1466.contextLB_list:=""
				End if 
				
				If (Form:C1466.currentPerson#Null:C1517)
					Form:C1466.contextLB_detail:=Form:C1466.currentPerson.getRemoteContextAttributes()
				Else 
					Form:C1466.contextLB_detail:=""
				End if 
				
			: (FORM Get current page:C276=6)
				Form:C1466.time1:=Form:C1466.time1+1
				Form:C1466.time2:=Form:C1466.time2+1
				displayCache(20; "Persons")
				
				If (Form:C1466.list1#Null:C1517)
					Form:C1466.context1Att:=Form:C1466.list1.getRemoteContextAttributes()
				End if 
				If (Form:C1466.list2#Null:C1517)
					Form:C1466.context2Att:=Form:C1466.list2.getRemoteContextAttributes()
				End if 
				
				
			: (FORM Get current page:C276=7)
				Form:C1466.time3:=Form:C1466.time3+1
				displayCache(3; "Persons")
				displayCacheAddress
				
		End case 
		
		
End case 