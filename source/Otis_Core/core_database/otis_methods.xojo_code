#tag Module
Protected Module otis_methods
	#tag Method, Flags = &h1
		Protected Sub connect_db()
		  
		  
		  Dim f As FolderItem
		  f = New FolderItem("MyDB.sqlite")
		  
		  Dim db As New SQLiteDatabase
		  db.DatabaseFile = f
		  If db.CreateDatabaseFile Then
		    // proceed with database operations...
		  Else
		    MsgBox("Database not created. Error: " + db.ErrorMessage)
		  End If
		End Sub
	#tag EndMethod


End Module
#tag EndModule
