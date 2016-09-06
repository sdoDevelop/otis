#tag Class
Protected Class App
Inherits Application
	#tag Event
		Function CancelClose() As Boolean
		  // You've determined that you need to cancel the
		  
		  // close, so...
		  
		  
		  
		  'Kaju.CancelUpdate
		  
		  
		  'Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  
		  // Open the Login Window
		  dim theLoginWindow as new Window_Login
		  theLoginWindow.myOpen
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function create_stack() As String()
		  dim s1() as String
		  
		  try
		    Raise new RuntimeException
		  catch r as RuntimeException
		    s1() = r.Stack
		  End Try
		  
		  Return s1()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub dbLoad()
		  
		  otis.db = New otis.sdoPostgreSQLDatabase
		  db.UserName = "serveradmin"
		  db.Password = "3agle5f0rL!fe"
		  db.Host = "192.168.10.201"
		  db.Port = 5432
		  db.DatabaseName = "otismain"
		  
		  
		  If otis_local.db.connectU Then
		    //app.MsgBoxAlert_2015( "Alert", "Connected to DB", "OK" )
		  Else
		    app.MsgBoxAlert( "Alert", "Cannot connect to server", "OK" )
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub masterReload(section as string)
		  // This method acts as a master reload script
		  // It takes a section as a parameter and calls the appropriate method to reload that section
		  
		  
		  
		  If section = "all" Then
		    
		    
		    
		  ElseIf section = "ei" Then
		    
		    EIPL.controls_load( False )
		    
		  ElseIf section = "pl" Then
		    
		    EIPL.controls_load( False )
		    
		  ElseIf section = "event" Then
		    
		    
		    
		  ElseIf section = "inventory" Then
		    
		  ElseIf section = "" Then
		    
		    
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MsgBoxAlert(theTitle as text, theMessage as text, button1Text as text)
		  #IF TargetDesktop OR TargetWeb OR TargetConsole THEN
		    
		    MsgBox ( theTitle + ": " + theMessage )
		    
		  #ELSEIF TargetiOS THEN
		    
		    dim theMsgBox as new iOSMessageBox
		    theMsgBox.Title = theTitle
		    theMsgBox.Message = theMessage
		    Dim buttons() As Text
		    buttons.Append( button1Text )
		    theMsgBox.Buttons = buttons
		    theMsgBox.Show
		    
		  #ENDIF
		End Sub
	#tag EndMethod


	#tag Note, Name = Shortcut modifiers
		
		Control is for navigation
		Shift alters a command up down, left right, future past 
		option alone
		option in combination copys
		command is the main base modifier
	#tag EndNote


	#tag Property, Flags = &h21
		Private been_Run As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		logged_in As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		UpdateInitiater As Kaju.UpdateInitiater
	#tag EndProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="logged_in"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
