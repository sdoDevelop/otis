#tag Class
Protected Class sdoWindow
Inherits Window
	#tag Method, Flags = &h0
		Function findControlByName(name as string, optional returnControl as Boolean) As Variant
		  // Searches through all controls in the window to find the one with the name specified
		  // Returns type Control by default, optionally returns control index as integer
		  
		  dim c as Control
		  dim n1, n2 as integer
		  dim theReturn as Variant
		  
		  
		  'Loop through all the controls
		  For i1 as integer = 0 To me.ControlCount - 1
		    
		    'Set our variable c to the current control
		    c = me.Control( i1 )
		    
		    'Checking the name of the control
		    If name = c.Name Then
		      
		      'Grab the Index of the current control
		      n1 = i1
		      
		      'Exit the Loop
		      Exit
		      
		    End If
		    
		  Next
		  
		  'Check what kind of return we want
		  If returnControl Then  'Return a control
		    theReturn = c
		  Else  'Return an integer
		    theReturn = n1
		  End If
		  
		  Return theReturn
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setControlFocus(pControl as Control)
		  dim c as Control
		  
		  
		  c = pControl
		  
		  //  Find out what kind of control it is and set the focus
		  If c IsA mdTextField Then
		    mdTextField( c ).SetFocus
		  ElseIf c IsA mdTextArea Then
		    mdTextArea( c ).SetFocus
		  ElseIf c IsA mdComboBox Then
		    mdComboBox( c ).SetFocus
		  ElseIf c IsA mdLabel Then
		    mdLabel( c ).SetFocus
		  ElseIf c IsA mdCheckbox Then
		    mdCheckbox( c ).SetFocus
		  ElseIf c IsA mdListbox Then
		    mdListbox( c ).SetFocus
		  ElseIf c IsA TextField Then
		    TextField( c ).SetFocus
		  ElseIf c IsA TextArea Then
		    TextField( c ).SetFocus
		  ElseIf c IsA ComboBox Then
		    ComboBox( c ).SetFocus
		  ElseIf c IsA Label Then
		    Label( c ).SetFocus
		  ElseIf c IsA CheckBox Then
		    CheckBox( c ).SetFocus
		  ElseIf c IsA Listbox Then
		    Listbox( c ).SetFocus
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setControlFocus(controlIndex as integer)
		  dim c as Control
		  
		  
		  'Set c to the control
		  c = me.Control( controlIndex )
		  
		  setControlFocus( c )
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setControlFocus(controlName as String)
		  dim c as Control
		  
		  
		  c = me.findControlByName( controlName, True )
		  
		  setControlFocus( c )
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="BackColor"
			Visible=true
			Group="Background"
			InitialValue="&hFFFFFF"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Background"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CloseButton"
			Visible=true
			Group="Frame"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Composite"
			Group="OS X (Carbon)"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Frame"
			Visible=true
			Group="Frame"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Document"
				"1 - Movable Modal"
				"2 - Modal Dialog"
				"3 - Floating Window"
				"4 - Plain Box"
				"5 - Shadowed Box"
				"6 - Rounded Window"
				"7 - Global Floating Window"
				"8 - Sheet Window"
				"9 - Metal Window"
				"11 - Modeless Dialog"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullScreen"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullScreenButton"
			Visible=true
			Group="Frame"
			InitialValue="False"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasBackColor"
			Visible=true
			Group="Background"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Size"
			InitialValue="400"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImplicitInstance"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Interfaces"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LiveResize"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MacProcID"
			Group="OS X (Carbon)"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxHeight"
			Visible=true
			Group="Size"
			InitialValue="32000"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximizeButton"
			Visible=true
			Group="Frame"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxWidth"
			Visible=true
			Group="Size"
			InitialValue="32000"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MenuBar"
			Visible=true
			Group="Menus"
			Type="MenuBar"
			EditorType="MenuBar"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MenuBarVisible"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinHeight"
			Visible=true
			Group="Size"
			InitialValue="64"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimizeButton"
			Visible=true
			Group="Frame"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinWidth"
			Visible=true
			Group="Size"
			InitialValue="64"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Placement"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Parent Window"
				"2 - Main Screen"
				"3 - Parent Window Screen"
				"4 - Stagger"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Resizeable"
			Visible=true
			Group="Frame"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Visible=true
			Group="Frame"
			InitialValue="Untitled"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Size"
			InitialValue="600"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
