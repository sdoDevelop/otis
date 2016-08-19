#tag Module
Protected Module offline_sync
	#tag Method, Flags = &h21
		Private Function connect_databases() As Boolean
		  
		  // Local Connection
		  local_db = New otis.sdoPostgreSQLDatabase
		  local_db.UserName = "transferscout"
		  local_db.Password = "that would be logical"
		  local_db.Host = "localhost"
		  local_db.Port = 5432
		  local_db.DatabaseName = "otislocal"
		  
		  
		  // Remote connection
		  remote_db = New otis.sdoPostgreSQLDatabase
		  remote_db.UserName = "transferscout"
		  remote_db.Password = "that would be logical"
		  remote_db.Host = "45.32.72.207"
		  remote_db.Port = 5432
		  remote_db.DatabaseName = "otisalpha"
		  
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
		Private Function download_database() As Boolean
		  dim s as Shell
		  dim s1 as string
		  
		  
		  'make sure we check the users credentials before downloading the database
		  
		  's1 = "pg_dump -C -c -h 45.32.72.207 -U transfer_monkey otisalpha | psql -h localhost -U transfer_monkey otisalpha"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub master()
		  
		  
		  
		  // Connect to databases
		  If Not connect_databases Then
		    logErrorMessage( 4, "DBase", "Could not connect, check error log" )
		  End If
		  
		  // Download each table from the remote_db
		  If Not download_database Then
		    logErrorMessage( 4, "RemoteDBase", "Trouble downloading tables, check error log" )
		  End If
		  
		  // Populate the local_db
		  If Not populate_local_db Then
		    logErrorMessage( 4, "LocalDBase", "Trouble populating local_db, check error log" )
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function populate_local_db() As Boolean
		  dim fieldNameString as string
		  dim fieldValueString as Variant
		  dim fieldNames() as string
		  dim sArray() as string
		  dim s1, s2, s3, s4 as string
		  dim n1, n2, n3, n4 as integer
		  
		  dim SQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim theDELETESQL as string
		  dim theDELETEPS as PostgreSQLPreparedStatement
		  
		  dim errorOccurred as Boolean
		  
		  
		  // Loop through tables
		  For i1 as integer = 0 To theTables.Ubound
		    
		    theDELETESQL = "Delete From " + theTables(i1) + ";"
		    theDELETEPS = local_db.Prepare(theDELETESQL)
		    theDELETEPS.SQLExecute
		    If local_db.Error Then
		      logErrorMessage( 3, "LocalDBase", "Could Not delete table " + theTables(i1) + ": " + local_db.ErrorMessage )
		      errorOccurred = True
		    End If
		    
		    'theRecordSet().MoveFirst
		    
		    For i2 as integer = 1 to theRecordSet(i1).RecordCount
		      ReDim sArray( i2 - 1 )
		      sArray( i2 - 1 ) = "$" + i2.ToText
		      
		      ReDim fieldNames( i2 - 1 )
		      'fieldNames( i2 - 1 ) = theRecordSet(i1).Field.Name
		    Next
		    s1 = Join( sArray(), ", " )
		    fieldNameString = Join( fieldNames(), ", " )
		    
		    n4 = 0
		    
		    // Loop through each record
		    While Not theRecordSet(i1).EOF
		      
		      n4 = n4 + 1
		      
		      For i2 as integer = 1 to theRecordSet(i1).RecordCount
		        ReDim sArray( i2 - 1 )
		        sArray( i2 - 1 ) = "$" + i2.ToText
		      Next
		      s1 = Join( sArray(), ", " )
		      
		      SQL = "Insert Into " + theTables(i1) + " ( " + fieldNameString + " ) Values ( " + s1 + " ) ; "
		      ps = local_db.Prepare(SQL)
		      ps.SQLExecute
		      If local_db.Error Then
		        logErrorMessage( 3, "LocalDBase", "Error Adding Row " + n4.ToText + ": " + local_db.ErrorMessage )
		        errorOccurred = True
		      End If
		      
		      theRecordSet(i1).MoveNext
		      
		    Wend
		    
		  Next
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub scriptyes()
		  dim theLineArray() as string
		  dim runBefore as Boolean
		  
		  
		  
		  // Check if we have run this app before
		  
		  'load pref file named "run_before.txt"
		  theLineArray() = zPrefsLogin.readFile( "run_before.txt" )
		  
		  'Read the contents of the file
		  If theLineArray.Ubound <> -1 Then  'The File exists
		    If theLineArray(0) = "True" Then
		      runBefore = True
		    ElseIf theLineArray(0) = "False" Then
		      runBefore = False
		    End If
		  Else
		    runBefore = False
		  End If
		  
		  
		  
		  ' now if this app has run before then we shouldn't need to pull the whole database
		  ' we just need to pull the new sql statements down from the server and run them
		  
		  // Connect to the remote db
		  
		  '
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private local_db As PostgreSQLDatabase
	#tag EndProperty

	#tag Property, Flags = &h21
		Private remote_db As PostgreSQLDatabase
	#tag EndProperty

	#tag Property, Flags = &h21
		Private theRecordSet() As RecordSet
	#tag EndProperty

	#tag Property, Flags = &h21
		Private theTables() As String
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
