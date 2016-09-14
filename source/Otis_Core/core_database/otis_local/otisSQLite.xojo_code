#tag Class
Protected Class otisSQLite
Inherits SQLiteDatabase
	#tag Method, Flags = &h0
		Sub bindU(position as integer, Value as Variant)
		  dim finish as Boolean
		  dim s1, s2, sql as string
		  dim n1, i1 as integer
		  
		  i1 = position
		  
		  s1 = "$" + str( i1 + 1 ) 
		  s2 = Replace( current_sql, s1, value )
		  If s2 <> current_sql Then
		    current_sql = s2
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub bindU(values() As Variant)
		  dim finish as Boolean
		  dim s1, s2, sql as string
		  dim n1 as integer
		  
		  
		  
		  // adjust current_sql
		  For i1 as integer = 0 To values.Ubound
		    
		    s1 = "$" + str( i1 + 1 ) 
		    s2 = Replace( current_sql, s1, values(i1) )
		    If s2 <> current_sql Then
		      current_sql = s2
		    End If
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub connection_operations()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function connectU() As Boolean
		  Dim f As FolderItem
		  f = New FolderItem("otis.sqlite")
		  
		  
		  me.DatabaseFile = f
		  If otis_local.db.CreateDatabaseFile Then
		    // proceed with database operations...
		    Return True
		  Else
		    MsgBox("Database not created. Error: " + db.ErrorMessage)
		    Return False
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub connect_db()
		  
		  me.DatabaseFile = resource_stor.db_folder.Child( "otis.sqlite" )
		  dbFile = me.DatabaseFile
		  
		  // Connect if it already exists
		  If dbFile <> Nil And dbFile.Exists Then
		    connectU
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsConnected() As Boolean
		  If App.DB Is Nil Then
		    mIsConnected = False
		  End If
		  
		  Return mIsConnected
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub log_current_error()
		  dim n as integer
		  dim err as ind_error
		  
		  err.time = new Date
		  err.facility = "otisSQLite"
		  err. error_code = ErrorCode
		  err.message = ErrorMessage
		  
		  errario.go(err)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub log_error(time as Date, facility as string, error_code as integer, message as string)
		  dim err as ind_error
		  
		  err.time = time
		  err.facility = facility
		  err. error_code = error_code
		  err.message = message
		  
		  errario.go(err)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub log_error(err as ind_error)
		  errario.go(err)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub offline_sql_log(statement as String)
		  dim pq as SQLitePreparedStatement
		  dim sql as string
		  dim date_ as new date
		  
		  
		  sql = "Insert Into sql_log ( creation_ts, username_, sql_statment ) Values( $1, $2, $3 ) ; "
		  pq = me.Prepare( sql )
		  pq.Bind( 0, date_.SQLDateTime )
		  pq.Bind( 1, ".." )
		  pq.Bind( 2, statement )
		  pq.SQLExecute
		  If me.Error Then
		    log_current_error
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub prepareU(statement As String)
		  
		  
		  
		  ps = me.Prepare( statement )
		  
		  // save to current_sql
		  current_sql = statement
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SQLExecuteU()
		  dim s1 as string
		  
		  // Execute the statement
		  ps.SQLExecute
		  
		  // Check for errors
		  If me.Error Then
		    log_current_error
		    Return
		  End If
		  
		  // Check if this is a select statment...shouldn't be since this is SQLExecute...
		  s1 = Left( current_sql, 7 ) 
		  If InStr( s1, "Select" ) > 0 Then
		    // it is a select statement, which we don't need to do anything else
		    Return
		  End If
		  
		  // Check if we are online
		  If online_status Then
		    
		    // we are online
		    // Update the server
		    otis_remote.rut.add_querry( current_sql )
		    
		    
		  Else
		    
		    // we are offline
		    // log the sql statemtent
		    offline_sql_log( current_sql )
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SQLSelectU() As RecordSet
		  dim s1 as string
		  dim rs as RecordSet
		  
		  // Execute the statement
		  rs = otis_local.db.SQLSelectU
		  
		  // Check for errors
		  If me.Error Then
		    log_current_error
		    Return rs
		  End If
		  
		  // Check if this is a select statment
		  s1 = Left( current_sql, 7 ) 
		  If InStr( s1, "Select" ) > 0 Then
		    // it is a select statement, which we don't need to do anything else
		    Return rs
		  Else
		    // since its not a select statment we can update the server
		    
		    // Check if we are online
		    If online_status Then
		      
		      // we are online
		      // Update the server
		      otis_remote.rut.add_querry( current_sql )
		      
		    Else
		      
		      // we are offline
		      // log the sql statemtent
		      offline_sql_log( current_sql )
		      
		    End If
		    
		  End If
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SQLSelectU(statment as String) As RecordSet
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		current_sql As String
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			each error gets an array element
		#tag EndNote
		error_log() As ind_error
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Online = true
			Offline = false
		#tag EndNote
		online_status As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ps As SQLitePreparedStatement
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="current_sql"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DatabaseFile"
			Visible=true
			Type="FolderItem"
			EditorType="FolderItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugMode"
			Visible=true
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EncryptionKey"
			Visible=true
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LoadExtensions"
			Visible=true
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultiUser"
			Visible=true
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="online_status"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShortColumnNames"
			Visible=true
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThreadYieldInterval"
			Visible=true
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Timeout"
			Visible=true
			Type="Double"
			EditorType="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
