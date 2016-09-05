#tag Module
Protected Module errario
	#tag Method, Flags = &h21
		Private Sub alert_user()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub go(alert as boolean, time as date, facility as string, error_code as integer, message as string)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub go(time as date, facility as string, error_code as integer, message as string)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub go(err as ind_error)
		  // Accepts an error and manages the shit out of it
		  // overloaded
		  //      - one eccepts type ind_error
		  //      - one accepts the parameters ( time, facility, error_code, message )
		  //      - one accepsts just ( message )
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub go(msg as String)
		  // Accepts an error and manages the shit out of it
		  // overloaded
		  //      - one eccepts type ind_error
		  //      - one accepts the parameters ( time, facility, error_code, message )
		  //      - one accepsts just ( message )
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub log_error()
		  
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
End Module
#tag EndModule
