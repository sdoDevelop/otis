#tag Class
Protected Class remote_update_thread
Inherits Thread
	#tag Event
		Sub Run()
		  run_method
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub add_querry(statement as string)
		  
		  // Add the statement
		  statement_queue.Append( statement )
		  
		  
		  // Check if the thread is running
		  Select Case rut.state
		  Case 0  // running
		    
		  Case 1  // waiting
		    
		  Case 2  // Suspended
		    
		  Case 3  // Sleeping
		    
		  Case 4  // NotRunning
		    
		    
		    rut.run
		    
		    
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub run_method()
		  dim sql as string
		  dim ps as PostgreSQLPreparedStatement
		  dim dt as new date
		  dim update_successful as Boolean
		  
		  
		  statements() = statement_queue
		  redim statement_queue(-1)
		  
		  // Loop through each statement in our statments() array
		  For i1 as integer = 0 To statements.Ubound
		    
		    otis_remote.db.SQLExecute( "Begin Transaction;" )
		    
		    // execute our statement from the log
		    sql = statements(i1)
		    ps = otis_remote.db.prepare( sql )
		    ps.SQLExecute
		    If otis_remote.db.error Then
		      otis_remote.db.log_current_error
		      update_successful = False
		      Exit
		    Else
		      update_successful = True
		    End If
		    
		    // Add the statement we just executed to the server sql_log
		    sql = "Insert Into info_schema.statment_log ( user_name, execution_time, statement_ ) Values( $1, $2, $3 ) ;"
		    ps = otis_remote.db.prepare( sql )
		    otis_local.db.bindU( 0, otis_remote.db.username )
		    otis_local.db.bindU( 1, dt )
		    otis_local.db.bindU( 2, statements(i1) )
		    ps.SQLExecute
		    If otis_remote.db.error Then
		      otis_remote.db.log_current_error
		      update_successful = False
		      Exit
		    Else
		      update_successful = True
		    End If
		    
		    If update_successful Then
		      otis_remote.db.SQLExecute( "Commit Transaction;" )
		    Else
		      otis_remote.db.SQLExecute( "Rollback;" )
		      otis_local.db.offline_sql_log( statements( i1 )
		    End If
		    
		  Next
		  
		  // Check if there are any new statements in the statement_queue
		  If statement_queue.Ubound > -1 Then
		    run_method
		  End If
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		db As otisPostgreSQL
	#tag EndProperty

	#tag Property, Flags = &h0
		statements() As string
	#tag EndProperty

	#tag Property, Flags = &h0
		statement_queue() As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
