#tag Class
Protected Class otisPostgreSQL
Inherits postgreSQLDatabase
	#tag Method, Flags = &h0
		Sub log_current_error()
		  dim n as integer
		  dim err as ind_error
		  
		  err.time = new Date
		  err.facility = "otisSQLite"
		  err. error_code = ErrorCode
		  err.message = ErrorMessage
		  
		  n = error_log.Ubound + 1
		  
		  error_log(n) = err
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub log_error(err as ind_error)
		  dim n as integer
		  
		  n = error_log.Ubound + 1
		  
		  error_log(n) = err
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		#tag Note
			each error gets an array element
			
		#tag EndNote
		error_log() As ind_error
	#tag EndProperty


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
