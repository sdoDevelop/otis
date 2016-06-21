#tag Class
Protected Class mdCheckbox
Inherits Checkbox
	#tag Event
		Sub Action()
		  saveValue
		End Sub
	#tag EndEvent

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
		  dim theDatabaseField as DatabaseField
		  dim theValue as Boolean
		  
		  
		  
		  // Build our SQL statement
		  theSQL = "Select " + mdfieldName + " From " + mdTableName + " Where " + mdpkFieldName + " = $1 ;"
		  
		  // Prepare statement
		  ps = otis.db.Prepare( theSQL )
		  
		  // Bind our values
		  ps.Bind( 0, mdpkValue )
		  
		  // Execute our select
		  theRecordSet = ps.SQLSelect
		  
		  // Grab our Value
		  theValue = theRecordSet.Field( mdfieldName ).BooleanValue
		  
		  // Set the field
		  me.Value = theValue
		  
		  
		  me.Enabled = True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub saveValue()
		  dim theSQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim theValue as Boolean
		  
		  
		  // Prepare our sql
		  theSQL = "Update " + mdTableName + " Set " + mdfieldName + " = $1 Where " + mdpkFieldName + " = $2 ; "
		  ps = otis.db.Prepare( theSQL )
		  ps.Bind( 0, theValue )
		  ps.Bind( 1, mdpkValue )
		  
		  // Execute then check for errors
		  ps.SQLExecute
		  
		  If otis.db.Error Then
		    logErrorMessage( 4, "Could not save value", otis.db.ErrorMessage )
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		mdfieldName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		mdpkFieldName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		mdpkValue As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdTableName As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected parentSection As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sdoWindow As sdoWindow
	#tag EndProperty


	#tag ViewBehavior
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
			Name="Caption"
			Visible=true
			Group="Appearance"
			InitialValue="Untitled"
			Type="String"
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
			Name="InitialParent"
			Type="String"
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
			Name="mdfieldName"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mdpkFieldName"
			Group="Behavior"
			Type="string"
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
			Name="State"
			Visible=true
			Group="Initial State"
			InitialValue="0"
			Type="CheckedStates"
			EditorType="Enum"
			#tag EnumValues
				"0 - Unchecked"
				"1 - Checked"
				"2 - Indeterminate"
			#tag EndEnumValues
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
			Name="Value"
			Group="Initial State"
			InitialValue="False"
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
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
