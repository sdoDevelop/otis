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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
