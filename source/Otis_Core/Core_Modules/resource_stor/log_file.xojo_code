#tag Class
Protected Class log_file
	#tag Method, Flags = &h1
		Protected Sub constructor(path as FolderItem, name as string)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub go(line_text as string)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub update_file()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private log() As ind_error
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected name As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected path As FolderItem
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
