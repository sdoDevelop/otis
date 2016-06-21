#tag Class
Protected Class sdoWindow
Inherits Window
	#tag Method, Flags = &h0
		Function findControlByName(name as string, optional returnInt as Boolean) As Variant
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
		  If returnInt Then  'Return an integer
		    theReturn = n1
		  Else  'Return a control
		    theReturn = c
		  End If
		  
		  Return theReturn
		End Function
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
