#tag Class
Protected Class log_file
	#tag Method, Flags = &h1
		Protected Sub constructor(p_path as FolderItem, p_name as string)
		  path = p_path
		  name = p_name
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub go(rewrite_file as boolean, line_text as string)
		  
		  If rewrite_file Then
		    
		    log.redim(-1)
		    log.Append( line_text )
		    
		    rewrite_file
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub go(line_text as string)
		  log.Append( line_text )
		  If Not update_in_progress Then
		    update_file
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function read_log() As string()
		  // Will raise runtime exception if file is not found
		  
		  dim t as TextInputStream
		  dim s1, s2() as string
		  
		  // make sure the path is real
		  If path.Exists Then
		    t = TextInputStream.Open(path)
		    // make sure we could open it
		    If t <> Nil Then
		      // Read all of t into s2
		      s2 = t.ReadAll
		      // close the file so that other applications can use it
		      t.Close
		    Else
		      // the file could not be a read as a text file
		      errario.go( "This is not a text file" )
		    End If
		  Else
		    errario.go( "Log file you are trying to read does not exist" )
		    Raise New RuntimeException
		  End If
		  
		  log() = s2()
		  
		  Return s2()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function read_log(line_number as integer) As string
		  dim s1, s2() as string
		  
		  s2() = me.read_log
		  
		  s1 = s2( line_number )
		  
		  Return s1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub rewrite_file()
		  update_in_progress = True
		  
		  Dim f as FolderItem = path
		  Try
		    Dim t as TextOutputStream = TextOutputStream.Create(f)
		    
		    For i1 as integer = 0 to log.Ubound
		      Try
		        t.WriteLine(log(i1))
		      Finally
		        t.Close
		        t = nil
		      End Try
		    Next
		  Catch e as IOException
		    dim err as ind_error
		    err.stack_trace = e.Stack
		    err.message = "Could not rewrite file"
		    errario.go( err )
		  Finally
		    
		    update_in_progress = False
		    
		  End Try
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub update_file()
		  update_in_progress = True
		  
		  dim f as FolderItem = path
		  
		  
		  For i1 as integer = last_entered_line To log.Ubound
		    If f <> Nil then
		      Try
		        Dim t as TextOutputStream = TextOutputStream.Append(f)
		        t.Write log( i1 )
		      Catch e as IOException
		        dim err as ind_error
		        err.message = "IOException, could not update log_file " + name 
		        err.stack_trace = Join( app.create_stack, EndOfLine )
		        errario.go( err )
		      End Try
		    End if
		    
		    last_entered_line = i1
		    
		  Next
		  
		  
		  update_in_progress = False
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		#tag Note
			0_base
		#tag EndNote
		Private last_entered_line As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private log() As ind_error
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected name As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected path As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private update_in_progress As Boolean
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
			Name="name"
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
