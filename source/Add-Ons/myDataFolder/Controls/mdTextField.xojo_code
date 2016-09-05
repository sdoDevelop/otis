#tag Class
Protected Class mdTextField
Inherits TextField
	#tag Event
		Sub KeyUp(Key As String)
		  dim c as Control
		  dim s1 as string
		  dim controlName as string
		  
		  
		  
		  
		  Select Case Asc( Key )
		  Case 13  'Carriage return
		    
		    If searchField = True Then  'This is a searchField
		      
		      'Grab the text value
		      s1 = me.Text
		      
		      If searchListboxName <> "" Then
		        
		        'Set c to the searchListbox 
		        c = me.sdoWindow.findControlByName( searchListboxName, True )
		        
		        'Check to make sure c is an mdListbox
		        If c IsA mdListbox Then
		          
		          'Search the Listbox
		          mdListbox( c ).searchMe( s1 )
		          
		        End If
		        
		      End If
		      
		    Else
		      
		      'Get the name of the currently highlighted control
		      controlName = sdoWindow.Focus.Name
		      
		      'Save the value for this control
		      me.saveValue
		      
		      'Reload the section we are in
		      app.masterReload( parentSection )
		      
		      'Set focus to previously focused control
		      me.sdoWindow.setControlFocus( controlName )
		      
		      'Move Down the tab order
		      'me.sdoWindow.FocusNext
		      
		      
		    End If
		    
		    
		  End Select
		  
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub LostFocus()
		  
		  If Not Otis.db.block_access Then
		    saveValue
		  Else
		    logErrorMessage( 1, "DBase", "Access to Database is blocked at this time" )
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  // Initialize the control
		  
		  
		  'Check if the window is an sdoWindow
		  If me.Window IsA sdoWindow Then
		    
		    'Set the sdoWindow variable to the window
		    me.sdoWindow = sdoWindow( me.Window )
		    
		  End If
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub loadFromDB()
		  dim theSQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim theRecordSet as RecordSet
		  
		  dim theValue as Variant
		  
		  
		  
		  
		  // Generate our sql to grab this indiviual field from the database
		  theSQL = "Select " + mdfieldName + " From " + mdtableName + " Where " + mdpkFieldName + " = '" + mdpkValue + "' ;"
		  
		  // Start our database transaction
		  otis.db.SQLExecute( "Begin Transaction;" )
		  
		  otis_local.db.prepareU( theSQL )
		  
		  // Grab our field from the Database
		  theRecordSet = otis_local.db.SQLSelectU
		  
		  // Catch any error
		  If otis.db.Error Then
		    logErrorMessage( 4, "DB", "Cannot load: " + otis.db.ErrorMessage )
		  End If
		  
		  // End our database transaction
		  otis.db.SQLExecute( "End Transaction;" )
		  
		  
		  // Put our value into a variable
		  If theRecordSet.Field( mdFieldName ) <> Nil Then
		    theValue = theRecordSet.Field( mdfieldName ).StringValue
		    
		    // Format the value
		    theValue = formatMyValue( theValue, mdformat )
		    
		    // Set the Field to the value
		    me.Text = str( theValue ).ToText
		    
		  Else
		    If mdFormat = 11 Or mdFormat = 12 Then
		      
		      theValue = ""
		      
		      me.Text = str( theValue )
		      
		    End If
		    
		  End If
		  
		  
		  
		  
		  me.Enabled = True
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub saveValue()
		  dim theSQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim theValue as string
		  dim aValue as Variant
		  dim s1 as string
		  
		  
		  // Get the value out
		  theValue = me.Text
		  
		  If me.Text <> "" Then
		    
		    // Format the value
		    theValue = formatMyValueDB( theValue, "", mdformat )
		    
		    // Make sure our value is Formatted correctly
		    s1 = formatMyValue( theValue, mdformat )
		    me.Text = s1
		    
		  End If
		  
		  // If the pkid is empty exit the script
		  If mdpkValue = "" Then
		    logErrorMessage( 1, "Could not save value", "pkid or value missing" )
		    Return
		  End If
		  
		  // Create our SQL
		  If me.Text <> "" Then
		    theSQL = "Update " + mdtableName + " Set " + mdfieldName + " = $1 Where " + mdpkFieldName + " = $2 ; "
		    
		    otis_local.db.prepareU( theSQL )
		    
		    // Bind our values
		    ps.Bind( 0, theValue )
		    ps.Bind( 1, mdpkValue )
		    
		  ElseIf me.Text = "" Then
		    
		    theSQL = "Update " + mdtableName + " Set " + mdfieldName + " = Null Where " + mdpkFieldName + " = $1 ; "
		    
		    otis_local.db.prepareU( theSQL )
		    
		    // Bind our values
		    ps.Bind( 0, mdpkValue )
		    
		  End If
		  
		  // Executing
		  ps.SQLExecute
		  
		  // Catch errors
		  If otis.db.Error Then
		    Break
		    'logErrorMessage( 3, "Could not save value", otis.db.ErrorMessage )
		    MsgBox( otis.db.errorMessage )
		  Else
		    RaiseEvent Saved 
		  End If
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Saved()
	#tag EndHook


	#tag Note, Name = Format Values
		
		0 = nothing
		1 = dollar
		2 = percent
		11 = time
		12 = date
		13 = sqldatetime
		
	#tag EndNote


	#tag Property, Flags = &h0
		mdFieldName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdFormat As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mdpkFieldName As String = "pkid"
	#tag EndProperty

	#tag Property, Flags = &h0
		mdpkValue As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdTableName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		parentSection As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sdoWindow As sdoWindow
	#tag EndProperty

	#tag Property, Flags = &h0
		searchField As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		searchListboxName As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alignment"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Left"
				"2 - Center"
				"3 - Right"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutomaticallyCheckSpelling"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackColor"
			Visible=true
			Group="Appearance"
			InitialValue="&hFFFFFF"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Border"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CueText"
			Visible=true
			Group="Initial State"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataField"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataSource"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataSource"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Format"
			Visible=true
			Group="Appearance"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="22"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LimitText"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mask"
			Visible=true
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mdFieldName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mdFormat"
			Visible=true
			Group="Appearance"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mdpkFieldName"
			Group="Behavior"
			InitialValue="pkid"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mdpkValue"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mdTableName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="parentSection"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Password"
			Visible=true
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReadOnly"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="searchField"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="searchListboxName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Visible=true
			Group="Initial State"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Appearance"
			InitialValue="&h000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextFont"
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSize"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextUnit"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="FontUnits"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Pixel"
				"2 - Point"
				"3 - Inch"
				"4 - Millimeter"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="80"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
