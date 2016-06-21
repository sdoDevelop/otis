#tag Class
Protected Class mdComboBox
Inherits ComboBox
	#tag Event
		Sub KeyUp(Key As String)
		  dim c as Control
		  dim s1 as string
		  
		  
		  
		  
		  Select Case Asc( Key )
		  Case 13  'Carriage return
		    
		    'Save the value for this control
		    me.saveValue
		    
		    'Reload the section we are in
		    app.masterReload( parentSection )
		    
		    
		  End Select
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub LostFocus()
		  saveValue
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
		  
		  ps = otis.db.Prepare( theSQL )
		  
		  // Grab our field from the Database
		  theRecordSet = ps.SQLSelect
		  
		  // Catch any error
		  If otis.db.Error Then
		    logErrorMessage( 4, "DB", "Cannot load: " + otis.db.ErrorMessage )
		  End If
		  
		  // End our database transaction
		  otis.db.SQLExecute( "End Transaction;" )
		  
		  
		  // Put our value into a variable
		  theValue = theRecordSet.Field( mdfieldName ).StringValue
		  
		  // Format the value
		  theValue = formatMyValue( theValue, mdformat )
		  
		  // Set the Field to the value
		  me.Text = str( theValue ).ToText
		  
		  me.Enabled = True
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub saveValue()
		  dim theSQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim theValue as string
		  
		  
		  
		  
		  
		  // Get the value out
		  theValue = me.Text
		  
		  // Make sure our value is Formatted correctly
		  theValue = formatMyValue( theValue, mdformat )
		  me.Text = theValue
		  
		  // Format the value
		  theValue = formatMyValueDB( theValue, "", mdformat )
		  
		  // If the value is empty or the pkid is empty exit the script
		  If theValue = "" Or mdpkValue = "" Then
		    logErrorMessage( 3, "Could not save value", "pkid or value missing" )
		    Return
		  End If
		  
		  // Create our SQL
		  theSQL = "Update " + mdtableName + " Set " + mdfieldName + " = $1 Where " + mdpkFieldName + " = $2 ; "
		  
		  ps = otis.db.Prepare( theSQL )
		  
		  // Bind our values
		  ps.Bind( 0, theValue )
		  ps.Bind( 1, mdpkValue )
		  
		  // Executing
		  ps.SQLExecute
		  
		  // Catch errors
		  If otis.db.Error Then
		    logErrorMessage( 2, "Could not save value", otis.db.ErrorMessage )
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		mdFieldName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdFormat As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mdpkFieldName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdpkValue As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdQueue As Boolean
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


	#tag ViewBehavior
		#tag ViewProperty
			Name="AutoComplete"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			Type="Boolean"
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
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="20"
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
			Name="InitialValue"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="ListIndex"
			Visible=true
			Group="Appearance"
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
			Name="mdFieldName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mdFormat"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mdpkFieldName"
			Group="Behavior"
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
			Name="mdQueue"
			Group="Behavior"
			Type="Boolean"
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
