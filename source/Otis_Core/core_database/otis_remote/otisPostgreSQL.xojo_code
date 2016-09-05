#tag Class
Protected Class otisPostgreSQL
Inherits postgreSQLDatabase
	#tag Method, Flags = &h0
		Function connectU(username as string, password as string) As Boolean
		  me.UserName = username
		  me.Password = password
		  me.Host = "45.32.72.207"
		  me.Port = 5432
		  me.DatabaseName = "otis_data"
		  
		  If Not me.Connect Then
		    log_current_error
		    Return False
		  Else
		    Return True
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub log_current_error()
		  dim err as ind_error
		  
		  err.time = new Date
		  err.facility = "otisSQLite"
		  err. error_code = ErrorCode
		  err.message = ErrorMessage
		  
		  errario.go(err)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub log_error(err as ind_error)
		  errario.go(err)
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
