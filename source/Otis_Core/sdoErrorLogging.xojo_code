#tag Module
Protected Module sdoErrorLogging
	#tag Method, Flags = &h21
		Private Sub errorMsgbox(pFacility as String, pMessage as String)
		  'MsgBox pFacility + ": " + pMessage
		  
		  Window_Error.myOpen( "[" + pFacility + "]", pMessage )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub initialize()
		  writeFile( 0, "Fac", "Message" )
		  
		  initialized = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub logErrorMessage(pLevel as integer, pFacility as string, pMessage as String)
		  If Not initialized Then
		    initialize
		  End If
		  
		  readFile
		  
		  writeFile( pLevel, pFacility, pMessage )
		  
		  Select Case pLevel
		  Case 0  'No Error                     Just Info          [no messagebox]
		    
		  Case 1  'Expected Error          No Problem     [no messagebox]
		     
		  Case 2  'Expected Error          No Problem     [messagebox]
		    errorMsgbox( pFacility, pMessage )
		    
		  Case 3  'UnExpected Error     Problem           [no messagebox]
		    
		  Case 4  'UnExpected Error     Problem           [messagebox]
		    errorMsgbox( pFacility, pMessage )
		    
		  Case 5  'UnExpected Error     Fatal                 [messagebox]
		    errorMsgbox( pFacility, pMessage )
		    
		  End Select
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub readFile()
		  Dim f As FolderItem
		  dim theLine as string
		  dim theLineArray() as string
		  
		  
		  // make the FolderItem
		  f = SpecialFolder.ApplicationData
		  f = f.Child(applicationName )
		  f = f.Child( logFolderName )
		  f = f.Child( errorLogFilename )
		  
		  
		  If f <> Nil Then
		    If f.Exists Then
		      // Be aware that TextInputStream.Open coud raise an exception
		      Dim t As TextInputStream
		      Try
		        t = TextInputStream.Open(f)
		        t.Encoding = Encodings.WindowsANSI
		        
		        // Loop through the lines
		        While not t.EOF
		          theLine = t.ReadLine
		          theLineArray.Append( theLine )
		        Wend
		        
		        t.Close
		      Catch e As IOException
		        'MsgBox("Error accessing file.")
		      End Try
		    End If
		  End If
		  
		  errorLogLineArray() = theLineArray()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub writeFile(pLevel as integer, pFacility as string, pMessage as String)
		  dim tos as TextOutputStream
		  dim logFolder as new FolderItem
		  dim theString as string
		  dim theDate as new Date
		  
		  
		  
		  // Create theString
		  theString = "<" + str( pLevel ) + "> " + "[" + pFacility + "] " + "{" + theDate.SQLDateTime + "} " + pMessage
		  
		  // Set up the folder item
		  logFolder = SpecialFolder.ApplicationData
		  
		  logFolder = logFolder.Child( applicationName )
		  // Make sure the folder runs
		  If Not logFolder.Exists Then
		    logFolder.CreateAsFolder
		  End If
		  
		  logFolder = logFolder.Child( logFolderName )
		  // Make sure the folder runs
		  If Not logFolder.Exists Then
		    logFolder.CreateAsFolder
		  End If
		  
		  // Write the File
		  If logFolder <> Nil Then
		    Dim f As FolderItem = logFolder.Child("ErrorLog.txt")
		    If f <> Nil Then
		      Try
		        //TextOutputStream.Create raises an IOException if it can't open the file for some reason.
		        Dim t As TextOutputStream = TextOutputStream.Create(f)
		        
		        For i1 as integer = 0 To errorLogLineArray.Ubound
		          t.WriteLine( errorLogLineArray( i1 ) )
		        Next
		        
		        t.WriteLine( theString )
		        t = Nil
		      Catch e As IOException
		        //handle
		      End Try
		    End If
		  End If
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = # Readme
		
		SDO Error Logging
		    ~ SDO Enterprises
		    ~ Sean O'Connell
		    ~ 04/08/16
		
		
		
		This is a module to control error logging and user notification
		
		
		Methods
		    ~Current public Method Count: 1
		
		    logErrorMessage( pLevel as integer, pFacility as string, pMessage as String )
		            - writes a file to SpecialFolder.Application.applicationName.logFolderName.errorLogFilename
		            - displays a messagebox depending on the level
		
	#tag EndNote

	#tag Note, Name = Facilities
		
		####
		# Put your facility codes here
	#tag EndNote

	#tag Note, Name = Levels
		
		####
		# Put your levels here
		
		0 = No Error                     Just Info          [no messagebox]
		1 = Expected Error          No Problem     [no messagebox]
		2 = Expected Error          No Problem     [messagebox]
		
		3 = UnExpected Error     Problem           [no messagebox]
		4 = UnExpected Error     Problem           [messagebox]
		
		5 = UnExpected Error     Fatal                 [messagebox]
	#tag EndNote


	#tag Property, Flags = &h21
		Private errorLogLineArray() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private initialized As Boolean
	#tag EndProperty


	#tag Constant, Name = applicationName, Type = String, Dynamic = False, Default = \"Otis", Scope = Private
	#tag EndConstant

	#tag Constant, Name = errorLogFilename, Type = String, Dynamic = False, Default = \"ErrorLog.txt", Scope = Private
	#tag EndConstant

	#tag Constant, Name = logFolderName, Type = String, Dynamic = False, Default = \"Logs", Scope = Private
	#tag EndConstant


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
