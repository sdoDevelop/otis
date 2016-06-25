#tag Class
Protected Class Contract
	#tag Method, Flags = &h1
		Protected Sub populate_dictionary(pRecordSet as RecordSet, pDictionary() as Dictionary)
		  dim d1 as DatabaseField
		  dim x1 as integer
		  
		  // Clear the mdDataDict
		  ReDim pDictionary( -1 )
		  
		  // Transfer all the records into our mdDataDict
		  While Not pRecordSet.EOF
		    
		    x1 = pDictionary.Ubound + 1
		    
		    // Redim the mdDataDict array to include the new record
		    ReDim pDictionary( x1 )
		    pDictionary( x1 ) = new Dictionary
		    
		    // Loop through all of the fields in the RecordSet
		    For i1 as integer = 1 to pRecordSet.FieldCount
		      
		      'get the DatabaseField
		      d1 = pRecordSet.IdxField(i1)
		      
		      'populate dictionary
		      pDictionary.Value( d1.name ) = d1.Value
		      
		    Next
		    
		    theRecordSet.MoveNext
		    
		  Wend
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub populate_dictionary(pRecordSet as RecordSet, pDictionary as Dictionary)
		  dim d1 as DatabaseField
		  
		  'make sure we are on the firest record
		  pRecordSet.MoveFirst
		  
		  'clear the Dictionary
		  pDictionary.Clear
		  
		  For i1 as integer = 1 to pRecordSet.FieldCount 
		    
		    'get the DatabaseField
		    d1 = pRecordSet.IdxField(i1)
		    
		    'populate dictionary
		    pDictionary.Value( d1.name ) = d1.Value
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub pull_contract_data()
		  dim ps as PostgreSQLPreparedStatement
		  dim SQL as string
		  dim contracts_rs, contract_sections_rs as RecordSet
		  dim ErrorOccurred as Boolean
		  
		  
		  // Acquire the contract information
		  
		  'prepare our statment
		  ' **** refine which fields are actually needed eventually
		  SQL = "Select * From contracts_ Where pkid = $1;"
		  ps = otis.db.prepare( SQL )
		  ps.Bind( 0, contract_pkid )
		  
		  'execute the select and check for errors
		  contracts_rs = ps.SQLSelect
		  If otis.db.error Then
		    logErrorMessage( 3, "DBase", otis.db.errormessage )
		    ErrorOccurred = True
		  End If
		  If contracts_rs = Nil Then
		    logErrorMessage( 3, "DBase_RecordSet", "Return RecordSet is Nil" )
		    ErrorOccurred = True
		  End If
		  
		  
		  // Acquire our contract sections
		  
		  'prepare our statement
		  SQL = "Select * From contract_sections_ Where fkcontracts_ = $1 Order By section_number_ ;"
		  ps = otis.db.prepare( SQL )
		  ps.Bind( 0, contract_pkid )
		  
		  'execute the select and check for errors
		  contract_sections_rs = ps.SQLSelect
		  If otis.db.error Then
		    logErrorMessage( 3, "DBase", otis.db.errormessage )
		    ErrorOccurred = True
		  End If
		  If contract_sections_rs = Nil Then
		    logErrorMessage( 3, "DBase_RecordSet", "Return RecordSet is Nil" )
		    ErrorOccurred = True
		  End If
		  
		  
		  // populate_dictionaries
		  populate_dictionary( contracts_rs, contract_dict )
		  populate_dictionary( contract_sections_rs, sections_dict() )
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected contract_dict As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected contract_pkid As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected sections_dict() As Dictionary
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
