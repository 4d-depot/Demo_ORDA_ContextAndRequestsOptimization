//%attributes = {}

var $ps; $win : Integer
var $options : Object
var $cr : Text


Case of 
		
	: (Count parameters:C259=0)
		
		If (Application version:C493<"1650")  // V16R5 is the first version which allows point notation
			ALERT:C41("Sorry, this \"How do I\" (HDI) example must be used with a newer version of 4D (v17 and above)"; "Quit")
			QUIT 4D:C291
		Else 
			$ps:=New process:C317(Current method name:C684; 0; Current method name:C684; 0)
		End if 
		
		
	: (Count parameters:C259>=1)
		
		$cr:=Char:C90(Carriage return:K15:38)
		
		If (Shift down:C543)  //  for debug purpose only
			$win:=Open form window:C675("HDI"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
		Else 
			$win:=Open form window:C675("HDI"; Pop up form window:K39:11; Horizontally centered:K39:1; Vertically centered:K39:4)
		End if 
		
		$options:=New object:C1471
		$options.title:="Optimization and cache demo"
		$options.blog:="blog.4d.com"
		$options.info:="ORDA vs C/S ans REST server"
		$options.minimumVersion:="1950"  // 1650 means 16R5   1601 means 16.1 (do not use !)
		$options.license:=Null:C1517  // NO LICENSE NEEDED
		DIALOG:C40("HDI"; $options)
		CLOSE WINDOW:C154
		
		
		If ($options.quit=True:C214)
			QUIT 4D:C291
		Else 
			$win:=Open form window:C675("ShowORDACache"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
			DIALOG:C40("ShowORDACache")
			CLOSE WINDOW:C154
		End if 
		
End case 

