#tag Class
Protected Class zPrefs
	#tag Method, Flags = &h0
		Sub addLine(pFileName as text, pText as Text)
		  dim theText as text
		  dim theName as text
		  dim theDictElement as integer
		  dim theLineArray() as Text
		  dim theUbound as integer
		  
		  
		  theText = pText
		  theName = pFileName
		  
		  
		  theDictElement = findprefFileDictElement( pFileName )
		  
		  theLineArray() = prefFileDict( theDictElement ).Value( "Lines" )
		  
		  theUbound = theLineArray.Ubound + 1
		  ReDim theLineArray( theUbound )
		  theLineArray( theUbound ) = theText
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub clearLines(pName as Text)
		  dim theElement as Integer
		  dim theLineArray(-1) as Text
		  
		  
		  theElement = findprefFileDictElement( pName )
		  
		  prefFileDict( theElement ).Value( "Lines" ) = theLineArray()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function findprefFileDictElement(pName as text) As integer
		  
		  
		  For i1 as integer = 0 To prefFileDict.Ubound
		    If prefFileDict( i1 ).Value( "Name" ).TextValue = pName Then
		      Return i1
		    End If
		  Next
		  
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function readFile(pName as Text) As Text()
		  dim theElement as integer
		  dim theLIneArray() as text
		  
		  
		  theElement = findprefFileDictElement( pName )
		  
		  If theElement <> -1 Then
		    // Clear the current Dictionary Entry
		    prefFileDict( theElement ).Clear
		    prefFileDict( theElement ).Value( "Name" ) = pName
		  Elseif theElement = -1 Then
		    registerPrefFile( pName )
		    theElement = findprefFileDictElement( pName )
		  End If
		  
		  
		  Dim f As FolderItem
		  f = SpecialFolder.ApplicationData
		  f = f.Child( "Otis" )
		  f = f.Child( pName )
		  
		  If f <> Nil Then
		    If f.Exists Then
		      // Be aware that TextInputStream.Open coud raise an exception
		      Dim t As TextInputStream
		      Try
		        t = TextInputStream.Open(f)
		        t.Encoding = Encodings.WindowsANSI
		        
		        dim x2 as integer = 0
		        While Not t.EOF
		           reDim theLIneArray( x2 )
		          theLIneArray( x2 ) = t.ReadLine.ToText
		          x2 = x2 + 1
		        Wend
		        
		        t.Close
		      Catch e As IOException
		        MsgBox("Error accessing file.")
		      End Try
		    Else
		      redim theLIneArray( -1 )
		    End If
		  End If
		  
		  prefFileDict( theElement ).Value( "Lines" ) = theLIneArray()
		  
		  Return theLIneArray()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub registerPrefFile(pName as text)
		  dim theUbound as Integer
		  dim theLineArray() as Text
		  
		  theUbound = prefFileDict.Ubound + 1
		  
		  
		  ReDim prefFileDict( theUbound )
		  prefFileDict( theUbound ) = new Dictionary
		  
		  prefFileDict( theUbound ).Value( "Name" ) = pName
		  prefFileDict( theUbound ).Value( "Lines" ) = theLineArray()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub writeFile(pName as Text)
		  dim theElement as Integer
		  
		  theElement = findprefFileDictElement( pName )
		  
		  dim f As FolderItem
		  dim fchild as FolderItem
		  dim t as text
		  dim tos as TextOutputStream
		  dim theOutFileName as String
		  dim theOutString as String
		  dim theText as text
		  dim theLineArray() as text
		  dim cr as string = EndOfLine.Macintosh
		  
		  theLineArray() = prefFileDict( theElement ).Value( "Lines" )
		  
		  
		  f = SpecialFolder.ApplicationData
		  f = f.Child( "Otis" )
		  
		  // Putting the absolute path to a variable for testing
		  t = f.absolutepath.totext
		  
		  // Creating the Otis folder if it doesn't exist
		  If Not f.Exists Then
		    f.CreateAsFolder
		  End If
		  
		  If f.Exists Then
		    theOutFileName = prefFileDict( theElement ).Value( "Name" )
		    
		    // Open output file
		    fchild = f.Child( theOutFileName )
		    If Not fchild.Exists Then
		      fchild.CreateAsFolder
		    end if
		    
		    If fchild.Exists Then
		      Try
		        tos = tos.Create( fchild )
		        
		        For i1 as Integer = 0 To theLineArray.Ubound
		          theText = theLineArray( i1 )
		          tos.Write( ConvertEncoding( theText + cr, Encodings.WindowsANSI ) )
		        Next
		        
		        tos = Nil
		      Catch e As IOException
		        // Handle
		      End Try
		      
		    End If
		    
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		prefFileDict() As Dictionary
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
End Class
#tag EndClass
