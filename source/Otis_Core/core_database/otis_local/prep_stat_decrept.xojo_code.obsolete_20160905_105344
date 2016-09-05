#tag Class
Protected Class prep_stat_decrept
Inherits SQLitePreparedStatement
	#tag Method, Flags = &h0
		Sub sqlExecuteU(ParamArray params As Variant)
		  dim err as ind_error
		  
		  
		  // Execute the SQL
		  me.sqlExecute
		  
		  // Check for errors
		  If otis_local.db.Error Then
		    err.time = new Date
		    err.facility = "otis_local.prep_stat.sqlExecuteU"
		    err.error_code = otis_local.db.ErrorCode
		    err.message = otis_local.db.ErrorMessage
		    otis_local.db.log_error( err )
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function sqlSelectU(ParamArray params As Variant) As RecordSet
		  dim rs as RecordSet
		  
		  rs = me.sqlSelect
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
