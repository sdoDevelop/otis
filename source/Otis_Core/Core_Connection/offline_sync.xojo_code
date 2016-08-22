#tag Module
Protected Module offline_sync
	#tag Method, Flags = &h21
		Private Function check_db_version() As Boolean
		  dim rs_remote, rs_local as RecordSet
		  dim sql_remote, sql_local as string
		  dim ps_remote, ps_local as PostgreSQLPreparedStatement
		  dim n1, n2, n3, n4 as integer
		  dim s1, s2, s3, s4 as string
		  dim version_mismatch as Boolean
		  
		  
		  sql_remote = "Select * From info_schema.dbinfo ; "
		  sql_local = sql_remote
		  
		  // Pull the info from each databse
		  ps_remote = remote_db.Prepare( sql_remote )
		  ps_local = local_db.Prepare( sql_local )
		  
		  rs_remote = ps_remote.SQLSelect
		  rs_local = ps_local.SQLSelect
		  
		  If remote_db.Error Then
		    logErrorMessage( 3, "offline_sync", "could not pull remote_db version" )
		  End If
		  If local_db.Error Then
		    logErrorMessage( 3, "offline_sync", "could not pull local_db version" )
		    If not remote_db.Error Then
		      version_mismatch = True
		      Exit
		    End If
		  End If
		  
		  // Compare Versions
		  For i1 as integer = 1 To 3
		    
		    Select Case i1
		    Case 1
		      s1 = "major_version"
		    Case 2
		      s1 = "minor_version"
		    Case 3 
		      s1 = "build_version"
		    End Select
		    
		    
		    n1 = rs_remote.Field( s1 ).IntegerValue
		    n2 = rs_local.Field( s1 ).IntegerValue
		    
		    If n1 > n2 Then
		      version_mismatch = True
		    End If
		    
		    If version_mismatch Then
		      Exit
		    End If
		    
		  Next
		  
		  Return version_mismatch
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function connect_databases(db_name as string) As Boolean
		  
		  // Local Connection
		  local_db = New otis.sdoPostgreSQLDatabase
		  local_db.UserName = "transferscout"
		  local_db.Password = "that would be logical"
		  local_db.Host = "localhost"
		  local_db.Port = 5432
		  local_db.DatabaseName = db_name
		  
		  
		  // Remote connection
		  remote_db = New otis.sdoPostgreSQLDatabase
		  remote_db.UserName = "transferscout"
		  remote_db.Password = "that would be logical"
		  remote_db.Host = "45.32.72.207"
		  remote_db.Port = 5432
		  remote_db.DatabaseName = db_name
		  
		  If local_db.Connect Then
		  Else
		    logErrorMessage( 3, "LocalDBase", local_db.ErrorMessage )
		    Return False
		  End If
		  
		  If local_db.Connect Then
		  Else
		    logErrorMessage( 3, "RemoteDBase", local_db.ErrorMessage )
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub master()
		  
		  
		  
		  
		  // Connect to databases
		  If Not connect_databases( "postgress" ) Then
		    logErrorMessage( 4, "DBase", "Could not connect, check error log" )
		  End If
		  
		  // Check the version of the local database
		  If check_db_version Then  'there is a version mismatch
		    update_database
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub update_database()
		  dim rs_remote, rs_local as RecordSet
		  dim sql_remote, sql_local as string
		  dim ps_remote, ps_local as PostgreSQLPreparedStatement
		  dim n1, n2, n3, n4 as integer
		  dim s1, s2, s3, s4 as string
		  dim sql_statements() as string
		  
		  
		  sql_remote = "Select * From db_creation ; "
		  ps_remote = remote_db.Prepare( sql_remote )
		  rs_remote = ps_remote.SQLSelect
		  If remote_db.Error Then
		    logErrorMessage( 3, "offline_sync", "could not pull creation scripts" )
		  End If
		  
		  // Loop through each record
		  For i1 as integer = 1 To rs_remote.RecordCount
		    
		    // Pull the current script into a string
		    s1 = rs_remote.Field( "script_contents" )
		    
		    // Split that string into seperate statements
		    sql_statements() = Split( s1, ";" )
		    
		    For i2 as integer = 0 To sql_statements.Ubound
		      
		      ps_local = local_db.Prepare( sql_statements( i2 ) )
		      ps_local.SQLExecute
		      If local_db.Error Then
		        logErrorMessage( 3, "offline_sync", local_db.ErrorMessage )
		      End If
		      
		    Next
		    
		    If rs_remote.Field( "switch_db" ) = "yes" Then
		      If Not connect_databases( "otis_main" ) Then
		        logErrorMessage( 4, "offline_sync", "could not connect to databases"
		      End If
		    End If
		    
		    
		  Next
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private local_db As PostgreSQLDatabase
	#tag EndProperty

	#tag Property, Flags = &h21
		Private remote_db As PostgreSQLDatabase
	#tag EndProperty


End Module
#tag EndModule
