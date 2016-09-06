#tag Module
Protected Module resource_stor
	#tag Method, Flags = &h0
		Sub construct_folder_structure()
		  create_app_folder
		  create_prefs_folder
		  create_db_folder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub create_app_folder()
		  
		  app_folder = new FolderItem
		  app_folder = SpecialFolder.ApplicationData.Child( "Otis" )
		  
		  If Not app_folder.Exists Then
		    app_folder.CreateAsFolder
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub create_db_folder()
		  
		  db_folder = new FolderItem
		  db_folder = app_folder.Child( "prefs" )
		  
		  If Not db_folder.Exists Then
		    db_folder.CreateAsFolder
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub create_prefs_folder()
		  
		  prefs_folder = new FolderItem
		  prefs_folder = app_folder.Child( "prefs" )
		  
		  If Not prefs_folder.Exists Then
		    prefs_folder.CreateAsFolder
		  End If
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected app_folder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected db_folder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected prefs_folder As FolderItem
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
