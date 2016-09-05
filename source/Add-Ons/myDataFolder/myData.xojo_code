#tag Module
Protected Module myData
	#tag Method, Flags = &h0
		Function formatMyValue(pValue as variant, pmdFormat as integer) As Variant
		  '0 = nothing
		  '1 = dollar
		  '2 = percent
		  '11 = time
		  '12 = date
		  '13 = sqldatetime
		  
		  dim theValue as Variant
		  dim theString as String
		  dim theAmount as Double
		  dim theDate as new Date
		  dim converted as Boolean
		  
		  
		  theValue = pValue
		  
		  Select Case pmdformat
		    
		  Case 0  'No Formatting
		    
		    theString = theValue.StringValue
		    
		  Case 1  'Dollar
		    // Converts dollar amount from cents to dollars
		    // Adds in a dollar sign
		    
		    theAmount = val( theValue ) / 100
		    
		    // Converting to string
		    theString = str( theAmount )
		    
		    // Adding dollar sign
		    theString = "$" + theString
		    
		  Case 2  'Percent
		    // Converts percent amount from thousanths place
		    // Adds % sign
		    
		    theAmount = val( theValue ) / 1000
		    
		    // Converting to string
		    theString = str( theAmount )
		    
		    // Adding percent
		    theString = theString + "%"
		    
		  Case 11  'Time
		    
		    #Pragma BreakOnExceptions Off
		    
		    // Converts to time from sqldatetime
		    Try
		      theDate.SQLDateTime = str( theValue )
		    Catch err as UnsupportedFormatException
		      theValue = formatMyValueDB( theValue, "", 11 )
		      theValue = "0000-00-00 " + theValue
		      Try
		        theDate.SQLDateTime = str( theValue )
		      Catch oops as UnsupportedFormatException
		        logErrorMessage( 4, "Format", "Could not format time" )
		      End Try
		    End Try
		    
		    #Pragma BreakOnExceptions On
		    
		    theString = theDate.ShortTime
		    
		  Case 12  'Date
		    // Converts to date from sqldatetime
		    Try
		      theDate.SQLDateTime = str( theValue )
		    Catch err as UnsupportedFormatException
		      theValue = formatMyValueDB( theValue, "", 12 )
		      Try
		        theDate.SQLDateTime = str( theValue )
		      Catch oops2 as UnsupportedFormatException
		        logErrorMessage( 4, "Format", "Could not format date" )
		      End Try
		    End Try
		    
		    theString = theDate.ShortDate 
		    
		    
		  End Select
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  return theString
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function formatMyValueDB(pValue as variant, optional pValue2 as variant, pmdFormat as integer) As Variant
		  '0 = nothing
		  '1 = dollar
		  '2 = percent
		  '11 = time
		  '12 = date
		  '13 = sqldatetime
		  
		  dim theValue as Variant
		  dim theString as Variant
		  dim theAmount as Integer
		  
		  dim converted as Boolean
		  dim theDateString as string
		  dim theTimeString as string
		  dim theDateArray() as string
		  dim x1 as integer
		  dim x2 as integer
		  
		  dim theYearI as Integer
		  dim theMonthI as Integer
		  dim theDayI as Integer
		  dim theHourI as Integer
		  dim theMinuteI as Integer
		  dim theSecondI as Integer
		  dim theGMTOffset as Double = -6
		  
		  
		  theValue = pValue
		  
		  Select Case pmdformat
		    
		  Case 0  'No Formatting
		    
		    theString = theValue
		    
		  Case 1  'Dollar
		    
		    theString = str( theValue )
		    
		    x1 = InStr( theString, "$" )
		    If x1 <> 0 Then
		      theString = Mid( theString, 2 )
		    End If
		    
		    theAmount = Floor( Val( theString ) * 100 )
		    
		    theString =  theAmount
		    
		    
		  Case 2  'Percent
		    
		    theString =  str( theValue )
		    
		    If InStr( theString, "%" ) <> 0 Then
		      theString = Left( theString, Len( theString ) - 1 )
		    End If
		    
		    theAmount = Floor( Val( theString ) *1000 )
		    
		    theString = theAmount
		    
		  Case 11  ''time
		    
		    // #######
		    // Time
		    
		    theTimeString = pValue
		    
		    // Check if the am or pm  exists
		    dim theAMPMExists as Boolean
		    If InStr( theTimeString, "AM" ) <> 0 Or InStr( theTimeString, "PM" ) <> 0 Then
		      theAMPMExists = True
		    Else
		      theAMPMExists = False
		    End If
		    
		    // Find the hour
		    x1 = InStr( theTimeString, ":" )
		    dim theHour as string = Left( theTimeString, x1 - 1 )
		    
		    dim theMinute as string
		    
		    // Find the Minute
		    If theAMPMExists Then
		      x2 = InStr( theTimeString, " " ) 
		      theMinute = Mid( theTimeString, x1 + 1, x2 - x1 - 1 )
		    ElseIf ubound(theTimeString.split(":")) > 0 Then
		      theMinute = Mid( theTimeString, x1 + 1, 2 )
		    Else
		      theMinute = Mid( theTimeString, x1 + 1 )
		    End If
		    
		    dim theAMPM as string
		    
		    // Find the AMPM
		    If theAMPMExists Then
		      theAMPM = Right( theTimeString, 2 )
		    Else
		      theAMPM = "AM"
		    End If
		    
		    theYearI = 0
		    theMonthI = 0
		    theDayI = 0
		    theHourI = val( theHour )
		    theMinuteI = val( theMinute )
		    theSecondI = 0
		    
		    If theAMPM = "AM" And theHourI = 12 Then
		      theHourI = 0
		    ElseIf theAMPM = "AM" And theHourI <> 12 Then
		      theHourI = theHourI
		    ElseIf theAMPM = "PM" And theHourI = 12 Then
		      theHourI = theHourI
		    ElseIf theAMPM = "PM" And theHourI <> 12 Then
		      theHourI = theHourI + 12
		    End If
		    
		    // Set the date variable
		    dim theDate as New Date( theYearI, theMonthI, theDayI, theHourI, theMinuteI, theSecondI, theGMTOffset )
		    
		    theString = NthField( theDate.SQLDateTime, " ", 2 )
		    
		  Case 12 ' date
		    
		    dim theDateSeperator as string
		    
		    theDateString = pValue
		    
		    
		    // #######
		    // Date
		    
		    
		    // Figure out if user is using "/" or "-"
		    If InStr( theDateString, "/" ) <> 0 Then
		      theDateSeperator = "/"
		    ElseIf InStr( theDateString, "-" ) <> 0  Then
		      theDateSeperator = "-"
		    End If
		    
		    
		    
		    // Find the month
		    x1 = InStr( theDateString, theDateSeperator )
		    dim theMonth as string = Left( theDateString, x1 - 1 )
		    
		    // Find the Day
		    x2 = InStr( x1 + 1, theDateString, theDateSeperator )
		    dim theDay as string = Mid( theDateString, x1 + 1, x2 - x1 - 1 )
		    
		    // Find the Year
		    dim theYear as string = Mid( theDateString, x2 + 1 )
		    
		    // Format the Month
		    If len( theMonth ) = 1 Then
		      theMonth = "0" + theMonth
		    End If
		    
		    // Format the Day
		    If len( theDay ) = 1 Then
		      theDay = "0" + theDay
		    End If
		    
		    // Format the Year
		    If len( theYear ) = 2 Then
		      theYear = "20" + theYear
		    End If
		    
		    theYearI = val( theYear )
		    theMonthI = val( theMonth )
		    theDayI = val( theDay )
		    theHourI = 0
		    theMinuteI = 0
		    theSecondI = 0
		    
		    // Set the date variable
		    dim theDate as New Date( theYearI, theMonthI, theDayI, theHourI, theMinuteI, theSecondI, theGMTOffset )
		    
		    theString = theDate.SQLDate
		    
		  Case 13
		    
		    // #######
		    // Time
		    
		    theTimeString = pValue2
		    theDateString = pValue
		    
		    // Check if the am or pm  exists
		    dim theAMPMExists as Boolean
		    If InStr( theTimeString, "AM" ) <> 0 Or InStr( theTimeString, "PM" ) <> 0 Then
		      theAMPMExists = True
		    Else
		      theAMPMExists = False
		    End If
		    
		    // Find the hour
		    x1 = InStr( theTimeString, ":" )
		    dim theHour as string = Left( theTimeString, x1 - 1 )
		    
		    dim theMinute as string
		    
		    // Find the Minute
		    If theAMPMExists Then
		      x2 = InStr( theTimeString, " " ) 
		      theMinute = Mid( theTimeString, x1 + 1, x2 - x1 - 1 )
		    ElseIf ubound(theTimeString.split(":")) > 0 Then
		      theMinute = Mid( theTimeString, x1 + 1, 2 )
		    Else
		      theMinute = Mid( theTimeString, x1 + 1 )
		    End If
		    
		    dim theAMPM as string
		    
		    // Find the AMPM
		    If theAMPMExists Then
		      theAMPM = Right( theTimeString, 2 )
		    Else
		      theAMPM = "AM"
		    End If
		    
		    theHourI = val( theHour )
		    theMinuteI = val( theMinute )
		    theSecondI = 0
		    
		    If theAMPM = "AM" And theHourI = 12 Then
		      theHourI = 0
		    ElseIf theAMPM = "AM" And theHourI <> 12 Then
		      theHourI = theHourI
		    ElseIf theAMPM = "PM" And theHourI = 12 Then
		      theHourI = theHourI
		    ElseIf theAMPM = "PM" And theHourI <> 12 Then
		      theHourI = theHourI + 12
		    End If
		    
		    // #######
		    // Date
		    
		    dim theDateSeperator as string
		    
		    // Figure out if user is using "/" or "-"
		    If InStr( theDateString, "/" ) <> 0 Then
		      theDateSeperator = "/"
		    ElseIf InStr( theDateString, "-" ) <> 0  Then
		      theDateSeperator = "-"
		    End If
		    
		    
		    
		    // Find the month
		    x1 = InStr( theDateString, theDateSeperator )
		    dim theMonth as string = Left( theDateString, x1 - 1 )
		    
		    // Find the Day
		    x2 = InStr( x1 + 1, theDateString, theDateSeperator )
		    dim theDay as string = Mid( theDateString, x1 + 1, x2 - x1 - 1 )
		    
		    // Find the Year
		    dim theYear as string = Mid( theDateString, x2 + 1 )
		    
		    // Format the Month
		    If len( theMonth ) = 1 Then
		      theMonth = "0" + theMonth
		    End If
		    
		    // Format the Day
		    If len( theDay ) = 1 Then
		      theDay = "0" + theDay
		    End If
		    
		    // Format the Year
		    If len( theYear ) = 2 Then
		      theYear = "20" + theYear
		    End If
		    
		    theYearI = val( theYear )
		    theMonthI = val( theMonth )
		    theDayI = val( theDay )
		    
		    // Set the date variable
		    dim theDate as New Date( theYearI, theMonthI, theDayI, theHourI, theMinuteI, theSecondI, theGMTOffset )
		    
		    theString = theDate.SQLDate
		    
		    
		  End Select
		  
		  Return theString
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadAllFromDB(pTableName as String, optional pPKID as string)
		  dim theControl as Control
		  dim theRowTag as mdRowTag
		  dim theFieldNameArray() as string
		  dim theControlIndexArray() as integer
		  dim theSQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim theRecordSet as RecordSet
		  dim thePKID as string
		  dim theEIPLPKID as string
		  
		  
		  
		  
		  // Loop through all of the controls in the window
		  For i1 as integer = 0 To MainWindow.ControlCount - 1
		    
		    // put the control in our variable
		    theControl = MainWindow.Control( i1 )
		    
		    // Check if this is part of the md family
		    If theControl IsA mdCheckbox Or theControl IsA mdTextField Or theControl IsA mdLabel Or theControl IsA mdComboBox Then
		      
		      // Check if it is part of the same table
		      If pTableName = pullTableName( theControl ) Then
		        
		        // Set the pkid of the control to the row
		        If pPKID <> "" Then
		          setControlpkid( theControl, pPKID )
		        End If
		        
		        // Add field to Queue
		        theFieldNameArray.Append( pullFieldName( theControl ) )
		        
		        // Add control index to array
		        theControlIndexArray.Append( i1 )
		        
		        
		      End If
		      
		    End If
		    
		  Next
		  
		  
		  
		  // Prepare SQL
		  theSQL = "Select " + Join( theFieldNameArray(), ", " ) + " From " + pTableName + " Where pkid = $1;"
		  otis_local.db.prepareU( theSQL )
		  ps.Bind( 0, pPKID )
		  theRecordSet = otis_local.db.SQLSelectU
		  if otis.db.Error Then
		    logErrorMessage( 4, "DBase", otis.db.ErrorMessage )
		  End If
		  
		  For i1 as integer = 0 To theFieldNameArray.Ubound
		    
		    theControl = MainWindow.Control( theControlIndexArray( i1 ) )
		    
		    If theControl IsA mdCheckbox Then
		      setMyValue( theControl, theRecordSet.Field( theFieldNameArray( i1 ) ).BooleanValue )
		    Else
		      
		      setMyValue( theControl, theRecordSet.Field( theFieldNameArray( i1 ) ).StringValue )
		      
		    End If
		  Next
		  
		  Window_Error.Close
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function pullControlPKID(pControl as Control) As String
		  dim theRowTag as mdRowTag
		  dim thePKID as string
		  
		  
		  
		  
		  
		  If pControl IsA mdListbox Then
		    If mdListbox( pControl ).ListIndex <> -1 Then
		      theRowTag = mdListbox( pControl ).RowTag( mdListbox( pControl ).ListIndex )
		      thePKID = theRowTag.pkid
		    End If
		  ElseIf pControl IsA mdComboBox Then
		    thePKID = mdComboBox( pControl ).mdpkValue
		  End If
		  
		  
		  Return thePKID
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function pullFieldName(pControl as Control) As Variant
		  
		  
		  If pControl IsA mdCheckbox Then
		    
		    Return mdCheckbox( pControl ).Value
		    
		  ElseIf pControl IsA mdTextField Then
		    
		    Return mdTextField( pControl ).mdFieldName
		    
		  ElseIf pControl IsA mdTextArea Then
		    
		    Return mdTextArea( pControl ).mdFieldName
		    
		  ElseIf pControl IsA mdComboBox Then
		    
		    Return mdComboBox( pControl ).mdFieldName
		    
		  ElseIf pControl IsA mdLabel Then
		    
		    Return mdLabel( pControl ).mdFieldName
		    
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function pullMyValue(pControl as Control) As Variant
		  
		  
		  If pControl IsA mdCheckbox Then
		    
		    Return mdCheckbox( pControl ).Value
		    
		  ElseIf pControl IsA mdTextField Then
		    
		    Return mdTextField( pControl ).Text
		    
		  ElseIf pControl IsA mdTextArea Then
		    
		    Return mdTextArea( pControl ).Text
		    
		  ElseIf pControl IsA mdComboBox Then
		    
		    Return mdComboBox( pControl ).Text
		    
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function pullTableName(pControl as Control) As string
		  
		  
		  If pControl IsA mdCheckbox Then
		    
		    Return mdCheckbox( pControl ).mdTableName
		    
		  ElseIf pControl IsA mdTextField Then
		    
		    Return mdTextField( pControl ).mdtableName
		    
		  ElseIf pControl IsA mdListbox Then
		    
		    Return mdListbox( pControl ).mdtableName
		    
		  ElseIf pControl IsA mdTextArea Then
		    
		    Return mdTextArea( pControl ).mdtableName
		    
		  ElseIf pControl IsA mdComboBox Then
		    
		    Return mdComboBox( pControl ).mdtableName
		    
		  ElseIf pControl IsA mdLabel Then
		    
		    Return mdLabel( pControl ).mdtableName
		    
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setControlpkid(pControl as Control, pValue as String)
		  
		  
		  If pControl IsA mdCheckbox Then
		    
		    mdCheckbox( pControl ).mdpkValue = pValue
		    
		  ElseIf pControl IsA mdTextField Then
		    
		    mdTextField( pControl ).mdpkValue = pValue
		    
		  ElseIf pControl IsA mdTextArea Then
		    
		    mdTextArea( pControl ).mdpkValue = pValue
		    
		  ElseIf pControl IsA mdComboBox Then
		    
		    mdComboBox( pControl ).mdpkValue = pValue
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setMyValue(pControl as Control, pValue as Variant)
		  
		  
		  If pControl IsA mdCheckbox Then
		    
		    mdCheckbox( pControl ).Value = formatMyValue( pValue, 0 )
		    mdCheckbox( pControl ).Enabled = True
		    
		  ElseIf pControl IsA mdTextField Then
		    
		    If pValue = "" Then
		      mdTextField( pControl ).Text = ""
		    Else
		      mdTextField( pControl ).Text = formatMyValue( pValue, mdTextField( pControl ).mdFormat )
		    End If
		    
		    mdTextField( pControl ).Enabled = True
		    
		  ElseIf pControl IsA mdTextArea Then
		    
		    If pValue = "" Then
		      mdTextArea( pControl ).Text = ""
		    Else
		      mdTextArea( pControl ).Text = formatMyValue( pValue, mdTextArea( pControl ).mdFormat )
		    End If
		    
		    mdTextArea( pControl ).Enabled = True
		    
		  ElseIf pControl IsA mdComboBox Then
		    
		    mdComboBox( pControl ).Text = formatMyValue( pValue, mdComboBox( pControl ).mdFormat )
		    mdComboBox( pControl ).Enabled = True
		    
		  ElseIf pControl IsA mdLabel Then
		    
		    mdLabel( pControl ).Text = formatMyValue( pValue, mdlabel( pControl ).mdFormat )
		    mdLabel( pControl ).Enabled = True
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub triggerControlLoad(pControl as Control)
		  logErrorMessage( 2, "NoError", "Populating Controls" )
		  
		  If pControl IsA mdCheckbox Then
		    
		    mdCheckbox( pControl ).loadFromDB
		    
		  ElseIf pControl IsA mdTextField Then
		    
		    mdTextField( pControl ).loadFromDB
		    
		  ElseIf pControl IsA mdListbox Then
		    
		    mdListbox( pControl ).loadFromDB
		    
		  ElseIf pControl IsA mdTextArea Then
		    
		    mdTextArea( pControl ).loadFromDB
		    
		  ElseIf pControl IsA mdComboBox Then
		    
		    mdComboBox( pControl ).loadFromDB
		    
		  ElseIf pControl IsA mdLabel Then
		    
		    mdLabel( pControl ).loadFromDB
		    
		  End If
		End Sub
	#tag EndMethod


	#tag Note, Name = Untitled
		
		Reliant On
		
		mdTextField
		mdListbox
		otis.db
		LogModule
	#tag EndNote


	#tag Property, Flags = &h0
		mdFieldNames() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdPKID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdPKIDFieldName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdTableNames() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdValue As Variant
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
			Name="mdPKID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mdPKIDFieldName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
