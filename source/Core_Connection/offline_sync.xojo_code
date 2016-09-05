#tag Module
Protected Module offline_sync
	#tag Method, Flags = &h21
		Private Function connect_databases_decrept(db_name as string) As Boolean
		  dim remote_db_name as string
		  
		  If db_name = "otis_main" Then
		    remote_db_name = "otis_data"
		  Else
		    remote_db_name = db_name
		  End If
		  
		  // Local Connection
		  local_db = New otis.sdoPostgreSQLDatabase
		  local_db.UserName = "transfer_monkey"
		  local_db.Password = "this monkey transfers data"
		  local_db.Host = "localhost"
		  local_db.Port = 5432
		  local_db.DatabaseName = db_name
		  
		  
		  // Remote connection
		  remote_db = New otis.sdoPostgreSQLDatabase
		  remote_db.UserName = "transfer_monkey"
		  remote_db.Password = "this monkey transfers data"
		  remote_db.Host = "45.32.72.207"
		  remote_db.Port = 5432
		  remote_db.DatabaseName = remote_db_name
		  
		  If local_db.Connect Then
		  Else
		    logErrorMessage( 3, "LocalDBase", local_db.ErrorMessage )
		    dim t1 as string = local_db.ErrorMessage 
		    
		    Return False
		  End If
		  
		  If remote_db.Connect Then
		  Else
		    logErrorMessage( 3, "RemoteDBase", remote_db.ErrorMessage )
		    dim t1 as string = remote_db.ErrorMessage 
		    
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function connect_local(db_name as string, username as string, db_pass as string) As Boolean
		  
		  
		  Window_status_log.add( "Connecting to local database..." )
		  // Set up Information
		  local_db = New otis.sdoPostgreSQLDatabase
		  local_db.UserName = username
		  local_db.Password = db_pass
		  local_db.Host = "localhost"
		  local_db.Port = 5432
		  local_db.DatabaseName = db_name
		  
		  
		  // connect
		  If local_db.Connect Then
		    Return True
		    Window_status_log.add( "Connection Successful!" )
		  Else
		    logErrorMessage( 3, "LocalDBase", local_db.ErrorMessage )
		    Window_status_log.add( "Could not connect: " + local_db.ErrorMessage )
		    Return False
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function connect_remote(db_name as string, username as string, db_pass as string) As Boolean
		  
		  
		  Window_status_log.add( "Connecting to remote database..." )
		  // Set up details
		  remote_db = New otis.sdoPostgreSQLDatabase
		  remote_db.UserName = username
		  remote_db.Password = db_pass
		  remote_db.Host = "45.32.72.207"
		  remote_db.Port = 5432
		  remote_db.DatabaseName = db_name
		  
		  
		  // Connect
		  If remote_db.Connect Then
		    Return True
		    Window_status_log.add( "Connection Successful!" )
		  Else
		    logErrorMessage( 3, "RemoteDBase", remote_db.ErrorMessage )
		    Window_status_log.add( "Could not connect: " + remote_db.ErrorMessage )
		    Return False
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub master()
		  dim rs_remote as RecordSet
		  dim remote_connected as Boolean
		  dim local_connected as Boolean
		  dim n1, n2, n3, n4 as integer
		  dim do_update as Boolean
		  
		  Break
		  
		  
		  // Connect to databases
		  remote_connected = connect_remote( "otis_data", "transfer_monkey", "this monkey transfers data" )
		  'If Not connect_remote( "otis_data", "transfer_monkey", "this monkey transfers data" ) Then
		  'sdo_log_error
		  'End If
		  
		  local_connected = connect_local( "otis_main", "transfer_monkey", "this monkey transfers data" )
		  'If Not connect_local( "otis_main", "transfer_monkey", "this monkey transfers data" ) Then
		  'logErrorMessage( 4, "DBase", "Could not connect, check error log" )
		  'End If
		  
		  
		  If remote_connected Then
		    
		    If local_connected Then
		      
		      // Since both db's are connected we can pull versions
		      Select Case version_pull
		      Case 0
		        do_update = False
		      Case 1
		        do_update = True
		      Case 2
		        // compare Versions
		        If version_check Then
		          do_update = True
		        Else
		          do_update = False
		        End If
		        
		      End Select
		      
		    Else
		      
		      do_update = True
		      
		    End If
		    
		  Else
		    
		  End If
		  
		  // Performing server upgrade
		  If do_update Then
		    
		    Window_status_log.add( "Updating Local Database..." )
		    Window_status_log.add( "pulling database creation scripts" )
		    
		    rs_remote = pull_scripts
		    
		    Window_status_log.add( "connecting to server as postgres" )
		    
		    local_connected = connect_local( "postgres", "postgres", "" )
		    
		    Window_status_log.add( "starting script execution..." )
		    
		    If local_connected Then
		      update_database( rs_remote )
		    End If
		    
		  End If
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function pull_scripts() As RecordSet
		  dim rs_remote, rs_local as RecordSet
		  dim sql_remote, sql_local as string
		  dim ps_remote, ps_local as PostgreSQLPreparedStatement
		  dim n1, n2, n3, n4 as integer
		  dim s1, s2, s3, s4 as string
		  dim sql_statements() as string
		  
		  
		  sql_remote = "Select * From info_schema.db_creation Order By order_ ; "
		  ps_remote = remote_db.Prepare( sql_remote )
		  rs_remote = ps_remote.SQLSelect
		  If remote_db.Error Then
		    logErrorMessage( 3, "offline_sync", "could not pull creation scripts" )
		    Window_status_log.add( "PULL SCRIPTS FAILED" )
		    Window_status_log.add( remote_db.ErrorMessage )
		    
		  End If
		  
		  
		  Return rs_remote
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub update_database(rs_param as RecordSet)
		  dim rs_remote, rs_local as RecordSet
		  dim sql_remote, sql_local as string
		  dim ps_remote, ps_local as PostgreSQLPreparedStatement
		  dim n1, n2, n3, n4 as integer
		  dim s1, s2, s3, s4 as string
		  dim sql_statements() as string
		  
		  
		  
		  rs_remote = rs_param
		  
		  // Loop through each record
		  For i1 as integer = 1 To rs_remote.RecordCount
		    
		    Window_status_log.add( "Working on script: " + rs_remote.Field( "script_name" ).StringValue )
		    
		    // Pull the current script into a string
		    s1 = rs_remote.Field( "script_contents" )
		    
		    // Split that string into seperate statements
		    sql_statements() = Split( s1, "-- --eol-- --" )
		    
		    For i2 as integer = 0 To sql_statements.Ubound
		      
		      Window_status_log.add( "[Query] " + sql_statements( i2 ) )
		      
		      // Execute the sql statment
		      ps_local = local_db.Prepare( sql_statements( i2 ) )
		      ps_local.SQLExecute
		      If local_db.Error Then
		        logErrorMessage( 3, "offline_sync", local_db.ErrorMessage )
		        Window_status_log.add( "[Error] " + local_db.ErrorMessage )
		      End If
		      
		    Next
		    
		    If rs_remote.Field( "switch_db" ).StringValue = "yes" Then
		      
		      If Not connect_local( "otis_main", "transfer_monkey", "this monkey transfers data" ) Then
		        // Connect unsuccessful
		        Break
		        return
		      End If
		      
		    End If
		    
		    rs_remote.MoveNext
		    
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function version_check() As Boolean
		  dim s1 as string
		  dim n1, n2, n3, n4 as integer
		  dim rs_remote, rs_local as RecordSet
		  dim version_mismatch as Boolean
		  
		  rs_remote = rs_remotedb
		  rs_local = rs_localdb
		  
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
		Private Function version_pull() As integer
		  // Pulls the database version number from each database and stores it in some properties in the database class
		  // Returns 0 when
		  //          version numbers were not pulled succesfully
		  // Returns 1 when
		  //          only remote_db version numbers were pulled
		  // Returns 2 when
		  //          both db version numbers were pulled
		  
		  dim sql as string
		  dim version_mismatch as Boolean
		  dim rs_remote, rs_local as RecordSet
		  dim ps_remote, ps_local as PostgreSQLPreparedStatement
		  
		  Window_status_log.add( "Pulling database version numbers" )
		  
		  
		  // Construct our statement
		  sql = "Select * From info_schema.dbinfo ; "
		  
		  ps_remote = remote_db.Prepare( sql )
		  ps_local = local_db.Prepare( sql )
		  
		  
		  // Pull the info from each databse
		  rs_remote = ps_remote.SQLSelect
		  rs_local = ps_local.SQLSelect
		  rs_localdb = rs_local
		  rs_remotedb = rs_remote
		  
		  
		  
		  // Check for Errors
		  If remote_db.error Then
		    If local_db.error Then
		      Window_status_log.add( local_db.ErrorMessage )
		      Return 0
		    Else
		      Return 1
		    End If
		  Else
		    Window_status_log.add( remote_db.ErrorMessage )
		    If Not local_db.error Then
		      Window_status_log.add( local_db.ErrorMessage )
		      Return 2
		    Else
		      Return 1
		    End If
		  End If
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private local_db As Otis.sdoPostgreSQLDatabase
	#tag EndProperty

	#tag Property, Flags = &h21
		Private remote_db As Otis.sdoPostgreSQLDatabase
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected rs_localdb As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected rs_remotedb As RecordSet
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
End Module
#tag EndModule
