#tag Class
Protected Class mdListbox
Inherits Listbox
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  If me.ColumnType( column ) = 2 Then
		    saveValue( row, column )
		    loadMe
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Sub CellLostFocus(row as Integer, column as Integer)
		  saveValue( row, column )
		  loadMe
		End Sub
	#tag EndEvent

	#tag Event
		Sub ExpandRow(row As Integer)
		  dim themdRowTag as new mdRowTag
		  dim theValue as Variant
		  dim theValueArray() as string
		  
		  dim x1 as integer
		  dim thepkidarray() as string
		  
		  
		  // Grabbing the rowtag
		  themdRowTag = me.RowTag( row )
		  
		  // Loop through each record in the group in mdDataDict
		  For i1 as integer = themdRowTag.groupStart To themdRowTag.groupEnd
		    
		    Redim theValueArray( -1 )
		    
		    // Loop through each field 
		    For i2 as integer = 0 To mdFieldNames.Ubound
		      
		      // Grab theValue
		      theValue = mdDataDict( i1 ).Value( mdFieldNames( i2 ) )
		      
		      // Format the value
		      theValue = formatMyValue( theValue, mdFormats( i2 ) )
		      
		      // Add the value to the value array
		      theValueArray.Append( theValue )
		      
		    Next
		    
		    
		    // Adding a row
		    me.AddRow theValueArray()
		    
		    // Capturing the row number
		    x1 = me.LastIndex
		    
		    // Loop through all columns
		    For i3 as integer = 0 To me.ColumnCount - 1
		      
		      // Check if the Column is a checkbox then set its state
		      If me.ColumnType( i3 ) = 2 Then
		        me.Cell( me.LastIndex, i3 ) = ""
		        If theValueArray( i3 ) = "True" Then
		          me.CellState( me.LastIndex, i3 ) = CheckBox.CheckedStates.Checked
		        ElseIf theValueArray( i3 ) = "False" Then
		          me.CellState( me.LastIndex, i3 ) = CheckBox.CheckedStates.Unchecked
		        Else
		          me.CellState( me.LastIndex, i3 ) = CheckBox.CheckedStates.Indeterminate
		        End If
		        
		      End If
		    Next
		    
		    
		    dim theChildmdRowTag as new mdRowTag
		    // make our rowtag class
		    theChildmdRowTag.pkid = mdDataDict( i1 ).Value( mdpkFieldName )
		    
		    
		    // Add the row tag to our row
		    If x1 > mdRowInfo.Ubound Then
		      ReDim mdRowInfo( x1 )
		    End if
		    me.RowTag( x1 ) = theChildmdRowTag
		    
		  Next
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub deleteRow()
		  dim theSQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim thepkid as string
		  dim theRowTag as mdRowTag
		  dim theNextRowpkid as string
		  
		  
		  // Ask User if they are sure
		  Dim n As Integer
		  n = MsgBox("Are you sure you want to delete " + me.Cell( me.ListIndex, 0 ) + "?", 36)
		  If n = 6 Then
		    // user pressed Yes
		    
		    // Get the Rowtag
		    theRowTag = me.RowTag( me.ListIndex )
		    thepkid = theRowTag.pkid
		    
		    // Change the listindex
		    If me.ListIndex = me.ListCount - 1 Then
		      me.ListIndex = me.ListIndex - 1
		    Else
		      me.ListIndex = me.ListIndex + 1
		    End If
		    
		    // Build the SQL
		    theSQL = "Delete From " + mdTableName + " Where pkid = $1 ; "
		    
		    ps = otis.db.Prepare( theSQL )
		    ps.Bind( 0, thepkid )
		    ps.SQLExecute
		    
		    loadMe( True )
		    
		    MsgBox( "Delete Successful" )
		    
		  ElseIf n = 7 Then
		    // user pressed No
		    
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub divideIntoGroups()
		  dim theGroupFieldName as string
		  dim theGroupStart as integer
		  dim theGroupEnd as integer
		  dim thePreviousValue as Variant
		  dim theCurrentValue as Variant
		  
		  
		  // Check if there are any mdSortFields defined
		  If mdSortFields.Ubound = -1 Then
		    // ERROR HANDLE HERE
		    // MsgBox no sort fields are defined, cannot divide into groups
		    Return
		  Else
		    // Check which field we are using to break the data into groups and put it into a variable
		    theGroupFieldName = mdSortFields(0)
		  End If
		  
		  // Clear the mdGroupDict
		  ReDim mdGroupDict(-1)
		  
		  // Loop through all of the records in the data Dictionary
		  For i1 as integer = 0 To mdDataDict.Ubound
		    
		    // Grab the current value
		    theCurrentValue = mdDataDict( i1 ).Value( theGroupFieldName )
		    
		    // Check if we are on the first record
		    If i1 = 0 Then 
		      theGroupStart = i1
		    Else
		      
		      If thePreviousValue = theCurrentValue Then
		        
		        // move the end of the group
		        theGroupEnd = i1
		        
		      ElseIf thePreviousValue <> theCurrentValue Then
		        
		        // Store the Group
		        dim x5 as integer
		        x5 = mdGroupDict.Ubound + 1
		        ReDim mdGroupDict( x5 )
		        mdGroupDict( x5 ) = new Dictionary
		        
		        mdGroupDict( x5 ).Value( "Start" ) = theGroupStart
		        mdGroupDict( x5 ).Value( "End" ) = theGroupEnd
		        mdGroupDict( x5 ).Value( "Name" ) = thePreviousValue
		        
		        // Set the start and end
		        theGroupStart = i1
		        theGroupEnd = i1
		        
		      End If
		      
		    End If
		    
		    thePreviousValue = theCurrentValue
		    
		    // Check if theis our last record
		    If i1 = mdDataDict.Ubound Then
		      
		      // Store the Group
		      dim x5 as integer
		      x5 = mdGroupDict.Ubound + 1
		      ReDim mdGroupDict( x5 )
		      mdGroupDict( x5 ) = new Dictionary
		      
		      mdGroupDict( x5 ).Value( "Start" ) = theGroupStart
		      mdGroupDict( x5 ).Value( "End" ) = theGroupEnd
		      mdGroupDict( x5 ).Value( "Name" ) = thePreviousValue
		      
		    End If
		    
		    
		  Next
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadFromDB()
		  dim theSQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim themdFieldNamestring as string
		  dim theRecordSet as RecordSet
		  
		  dim theFieldName as string
		  dim theFieldValue as Variant
		  dim theSortString as String
		  dim twoTables as Boolean
		  dim theTableArray() as String
		  
		  
		  
		  
		  
		  // Put the field names into a string
		  themdFieldNamestring = Join( mdFieldNames(), ", " )
		  
		  // Check if we are pulling from 2 tables
		  If InStr( mdTableName, "," ) > 0 Then
		    // There are 2 tables
		    twoTables = True
		    theTableArray() = Split( mdTableName, ", " )
		  End If
		  
		  // Add pkid to the mdFieldNames its not there yet
		  If mdFieldNames.IndexOf( "pkid" ) = -1 Then
		    dim s as String
		    
		    s = "pkid"
		    If twoTables Then
		      s = theTableArray(0) + "." + s
		    End If
		    s = ", " + s
		    
		    themdFieldNamestring = themdFieldNamestring + s
		    
		  End If
		  
		  // Put the Sort field names into a string
		  If mdFieldNames.Ubound = -1 Then
		    theSortString = "pkid"
		  Else
		    theSortString = Join( mdSortFields(), ", " )
		  End If
		  
		  
		  // Build our SQL
		  theSQL = "Select " + themdFieldNamestring + " From " + mdTableName
		  
		  If mdfkFieldName <> "" And mdfkValue <> "" Then
		    theSQL = theSQL + " Where " + mdfkFieldName + " = '" + mdfkValue + "' "
		    
		    If twoTables Then
		      theSQL = theSQL + " And " + theTableArray(0) + "." + mdfkActualRecordFieldName + " = " + theTableArray(1) + "." + mdpkFieldName
		    End If
		    
		  End If
		  
		  If theSortString <> "" Then
		    theSQL = theSQL + " Order By " + theSortString
		  End If
		  
		  theSQL = theSQL + " ;"
		  
		  
		  // Prepare the statement
		  ps = otis.db.Prepare( theSQL )
		  
		  // Execute and put the results into a recordset
		  otis.db.SQLExecute( "Begin Transaction" )
		  theRecordSet = ps.SQLSelect
		  If otis.db.error Then
		    logErrorMessage( 4, "DB", "Could Not Load: " + otis.db.ErrorMessage )
		  End If
		  otis.db.SQLExecute( "End Transaction" )
		  
		  dim x1 as integer
		  
		  // Clear the mdDataDict
		  ReDim mdDataDict( -1 )
		  
		  // Transfer all the records into our mdDataDict
		  While Not theRecordSet.EOF
		    
		    x1 = mdDataDict.Ubound + 1
		    
		    // Redim the mdDataDict array to include the new record
		    ReDim mdDataDict( x1 )
		    mdDataDict( x1 ) = new Dictionary
		    
		    // Loop through all of the fields in the RecordSet
		    For i1 as integer = 1 to theRecordSet.FieldCount
		      
		      // Get the fieldName and value
		      theFieldName = theRecordSet.IdxField( i1 ).Name
		      theFieldValue = theRecordSet.IdxField( i1 ).Value
		      
		      // Set the dictionary record value
		      mdDataDict( x1 ).Value( theFieldName ) = theFieldValue
		      
		      
		    Next
		    
		    theRecordSet.MoveNext
		    
		  Wend
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadMe(optional pPreserveFolders as Boolean)
		  dim expandedfolders() as string
		  dim selectedPKID as string
		  dim theRowTag as mdRowTag
		  
		  
		  
		  If pPreserveFolders Then
		    
		    // Grabbing PKID
		    If me.ListIndex <> -1 And Not RowIsFolder( me.ListIndex ) Then
		      theRowTag = me.RowTag( me.ListIndex )
		      selectedPKID = theRowTag.pkid
		    End If
		    
		    // Grabbing Expanded Folders
		    For i1 as integer = 0 To me.ListCount - 1
		      If me.RowIsFolder(i1) Then
		        If me.Expanded(i1) Then
		          expandedfolders.Append( me.Cell( i1, 0 ) )
		        End If
		      End If
		    Next
		    
		  End If
		  
		  // Loading
		  me.setUpMe
		  me.loadFromDB
		  
		  
		  If me.Hierarchical Then
		    
		    // Divinding into groups and building our folders
		    me.divideIntoGroups
		    me.makeFolders
		    
		  Else
		    
		    // Loading all items without folders
		    me.loadNonFolders
		    
		  End If
		  
		  // Reopening folders
		  If pPreserveFolders Then
		    For i1 as integer = 0 To me.ListCount - 1
		      If me.RowIsFolder(i1) Then
		        If expandedfolders.IndexOf( me.Cell( i1, 0 ) ) <> -1 Then
		          me.Expanded( i1 ) = True
		        End If
		      End If
		    Next
		  End If
		  
		  // Reselecting the record
		  If selectedPKID <> "" Then
		    me.searchMePKID( selectedPKID )
		  End If
		  
		  me.Enabled = True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadMe(pDataDict() as Dictionary, optional pPreserveFolders as Boolean)
		  dim expandedfolders() as string
		  dim selectedPKID as string
		  dim theRowTag as mdRowTag
		  
		  
		  
		  If pPreserveFolders Then
		    
		    // Grabbing PKID
		    If me.ListIndex <> -1 And Not RowIsFolder( me.ListIndex ) Then
		      theRowTag = me.RowTag( me.ListIndex )
		      selectedPKID = theRowTag.pkid
		    End If
		    
		    // Grabbing Expanded Folders
		    For i1 as integer = 0 To me.ListCount - 1
		      If me.RowIsFolder(i1) Then
		        If me.Expanded(i1) Then
		          expandedfolders.Append( me.Cell( i1, 0 ) )
		        End If
		      End If
		    Next
		    
		  End If
		  
		  // Loading
		  me.setUpMe
		  mdDataDict = pDataDict
		  
		  
		  If me.Hierarchical Then
		    
		    // Divinding into groups and building our folders
		    me.divideIntoGroups
		    me.makeFolders
		    
		  Else
		    
		    // Loading all items without folders
		    me.loadNonFolders
		    
		  End If
		  
		  // Reopening folders
		  If pPreserveFolders Then
		    For i1 as integer = 0 To me.ListCount - 1
		      If me.RowIsFolder(i1) Then
		        If expandedfolders.IndexOf( me.Cell( i1, 0 ) ) <> -1 Then
		          me.Expanded( i1 ) = True
		        End If
		      End If
		    Next
		  End If
		  
		  // Reselecting the record
		  If selectedPKID <> "" Then
		    me.searchMePKID( selectedPKID )
		  End If
		  
		  me.Enabled = True
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadNonFolders()
		  dim themdRowTag as new mdRowTag
		  dim theValue as Variant
		  dim theValueArray() as string
		  
		  dim x1 as integer
		  dim thepkidarray() as string
		  dim thealternatething() as string
		  
		  
		  For i1 as integer = 0 To mdFieldNames.Ubound
		    ReDim thealternatething(i1)
		    thealternatething(i1) = mdFieldNames(i1)
		  Next
		  
		  For i1 as integer = 0 To thealternatething.Ubound
		    dim x2 as integer = InStr( thealternatething(i1), "." )
		    If x2 <> 0 Then
		      thealternatething( i1 ) = Mid( thealternatething(i1), x2 + 1 )
		    End If
		  Next
		  
		  me.DeleteAllRows
		  
		  // Loop through each record in the group in mdDataDict
		  For i1 as integer = 0 To me.mdDataDict.Ubound
		    
		    Redim theValueArray( -1 )
		    
		    // Loop through each field 
		    For i2 as integer = 0 To thealternatething.Ubound
		      
		      // Grab theValue
		      theValue = mdDataDict( i1 ).Value( thealternatething( i2 ) )
		      
		      // Format the value
		      theValue = formatMyValue( theValue, mdFormats( i2 ) )
		      
		      // Add the value to the value array
		      theValueArray.Append( theValue )
		      
		    Next
		    
		    
		    // Adding a row
		    me.AddRow theValueArray()
		    
		    // Capturing the row number
		    x1 = me.LastIndex
		    
		    // Loop through all columns
		    For i3 as integer = 0 To me.ColumnCount - 1
		      
		      // Check if the Column is a checkbox then set its state
		      If me.ColumnType( i3 ) = 2 Then
		        me.Cell( me.LastIndex, i3 ) = ""
		        If theValueArray( i3 ) = "True" Then
		          me.CellState( me.LastIndex, i3 ) = CheckBox.CheckedStates.Checked
		        ElseIf theValueArray( i3 ) = "False" Then
		          me.CellState( me.LastIndex, i3 ) = CheckBox.CheckedStates.Unchecked
		        Else
		          me.CellState( me.LastIndex, i3 ) = CheckBox.CheckedStates.Indeterminate
		        End If
		        
		      End If
		    Next
		    
		    
		    dim theChildmdRowTag as new mdRowTag
		    // make our rowtag class
		    theChildmdRowTag.pkid = mdDataDict( i1 ).Value( mdpkFieldName )
		    
		    
		    // Add the row tag to our row
		    If x1 > mdRowInfo.Ubound Then
		      ReDim mdRowInfo( x1 )
		    End if
		    me.RowTag( x1 ) = theChildmdRowTag
		    
		  Next
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub makeFolders()
		  dim theGroupName as string
		  dim theGroupStart as integer
		  dim theGroupEnd as integer
		  dim theRow as integer
		  
		  
		  me.DeleteAllRows
		  
		  // Loop through each of the groups
		  For i1 as integer = 0 To mdGroupDict.Ubound
		    
		    // Add a row to the listbox
		    me.AddRow
		    
		    // Get the index of the added row
		    theRow = me.LastIndex
		    
		    // create our mdRowTag variable
		    dim themdRowTag as new mdRowTag
		    
		    // Transfer rowtag info
		    themdRowTag.groupName = mdGroupDict( i1 ).Value( "Name" )
		    themdRowTag.groupStart = mdGroupDict( i1 ).Value( "Start" )
		    themdRowTag.groupEnd = mdGroupDict( i1 ).Value( "End" )
		    themdRowTag.isFolder = True
		    
		    // Add the Rowtag
		    If theRow > mdRowInfo.Ubound Then
		      Redim mdRowInfo( theRow )
		    End If
		    me.RowTag( theRow ) = themdRowTag
		    
		    // Set the label
		    me.Cell( theRow, 0 ) = themdRowTag.groupName
		    
		    // Set the row as a folder
		    me.RowIsFolder( i1 ) = True
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub populateExtControls()
		  dim theControl as Control
		  dim theRowTag as mdRowTag
		  dim theFieldNameArray() as string
		  dim theControlIndexArray() as integer
		  dim theSQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim theRecordSet as RecordSet
		  
		  
		  
		  If me.ListIndex = -1 Then
		    Return
		  End If
		  
		  // Grab the rowtag for the pkid
		  theRowTag = me.RowTag( me.ListIndex )
		  
		  // Loop through all of the controls in the window
		  For i1 as integer = 0 To me.Window.ControlCount - 1
		    
		    // put the control in our variable
		    theControl = me.Window.Control( i1 )
		    
		    // Check if this is part of the md family
		    If theControl IsA mdCheckbox Or theControl IsA mdTextField Or theControl IsA mdLabel Or theControl IsA mdComboBox Or theControl IsA mdTextArea Then
		      
		      // Check if it is part of the same table
		      If mdTableName = pullTableName( theControl ) Then
		        
		        // Set the pkid of the control to the row
		        If theRowTag.pkid <> "" Then
		          setControlpkid( theControl, theRowTag.pkid )
		        End If
		        
		        // Add field to Queue
		        theFieldNameArray.Append( pullFieldName( theControl ) )
		        
		        // Add control index to array
		        theControlIndexArray.Append( i1 )
		        
		        
		      End If
		      
		    End If
		    
		  Next
		  
		  // Prepare SQL
		  theSQL = "Select " + Join( theFieldNameArray(), ", " ) + " From " + mdTableName + " Where pkid = $1;"
		  ps = otis.db.Prepare( theSQL )
		  ps.Bind( 0, theRowTag.pkid )
		  theRecordSet = ps.SQLSelect
		  if otis.db.Error Then
		    logErrorMessage( 4, "DBase", otis.db.ErrorMessage )
		  End If
		  
		  For i1 as integer = 0 To theFieldNameArray.Ubound
		    
		    theControl = me.Window.Control( theControlIndexArray( i1 ) )
		    
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
		Function pullPKID(pRow as integer) As String
		  dim theRowTag as mdRowTag
		  dim thePKID as String
		  
		  
		  If Not me.RowIsFolder( pRow ) Then
		    theRowTag = me.RowTag( pRow )
		    thePKID = theRowTag.pkid
		  End If
		  
		  Return thePKID
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub refreshMe()
		  dim theSelectedPKID as string
		  dim theOpenGroupNames() as string
		  dim themdRowTag as mdRowTag
		  
		  
		  
		  // ########
		  // Finding the selected pkid
		  
		  
		  // Checking if there is anything selected
		  If me.ListIndex <> -1  Then
		    
		    // Checking if the row is a folder
		    If Not me.RowIsFolder( me.ListIndex ) Then
		      
		      // Finding the pkid of the currently selected row
		      themdRowTag = me.RowTag( me.ListIndex )
		      theSelectedPKID = themdRowTag.pkid
		      
		    Else  ' it is a folder
		      
		      // Set theSelectedPKID to folder:Name
		      theSelectedPKID = "folder:" + me.Cell( me.ListIndex, 0 )
		      
		    End If
		    
		  End If
		  
		  
		  
		  // ########
		  // Finding the open folders
		  
		  
		  // Loop through all of the rows
		  For i1 as integer = 0 To me.ListCount - 1
		    
		    // Check if the row is a folder
		    If me.RowIsFolder( i1 ) And me.Expanded( i1 ) Then
		      
		      // Add the name of the group to the array
		      theOpenGroupNames.append( me.Cell( i1, 0 ) )
		      
		    End If
		    
		    
		  Next
		  
		  
		  
		  
		  
		  // ########
		  // Load the listbox from the database
		  loadMe
		  
		  
		  dim notEnd as Boolean = True
		  dim theStart as integer = 0
		  
		  // Loop through all rows
		  While notEnd
		    
		    For i1 as integer = theStart To me.ListCount
		      
		      // Check row is folder
		      If me.RowIsFolder( i1 )  Then
		        
		        // Check if the row was open last time
		        If theOpenGroupNames.IndexOf( me.Cell( i1, 0 ) ) <> -1 Then
		          
		          // Expand the row
		          me.Expanded( i1 ) = True
		          
		          // Reset the start
		          theStart = i1 + 1
		          
		          // Exiting loop
		          Exit
		          
		        End if
		        
		      ElseIf Not me.RowIsFolder( i1 ) Then
		        
		        // Grab the pkid from the rowtag
		        themdRowTag = me.RowTag( i1 )
		        
		        // Check if the pkid matches the selected one
		        If themdRowTag.pkid = theSelectedPKID Then
		          
		          // Select that row
		          me.ListIndex = i1
		          
		        End If
		        
		      End If
		      
		      // Check if we are on the last row
		      If i1  = me.ListCount - 1 Then
		        notEnd = False
		        Exit
		      End If
		      
		    Next
		    
		  Wend
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub saveValue(pRow as integer, pColumn as integer)
		  dim theSQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim theValue as Variant
		  dim theRowTag as new mdRowTag
		  dim thepkid as string
		  
		  
		  dim s1 as string = mdTableName
		  dim s2 as string = mdFieldNames(pColumn)
		  dim x5 as integer = InStr( mdFieldNames( pColumn ), "." )
		  If x5 <> 0 Then
		    s1 = Left( mdTableName, x5 - 1 )
		    s2 = Mid( mdFieldNames(pColumn), x5 + 1 )
		  End If
		  
		  
		  
		  // Get the value
		  theValue = me.Cell( pRow, pColumn )
		  If me.ColumnType( pColumn ) = 2 Then  'Its a CheckBox
		    If me.CellState( pRow, pColumn ) = CheckBox.CheckedStates.Checked Then
		      theValue = True
		    Else 
		      theValue = False
		    End If
		  End If
		  
		  // Format the value for the database
		  theValue = formatMyValueDB( theValue, mdFormats( pColumn ) )
		  
		  If me.ColumnType( pColumn ) = 2 Then
		    If me.CellState( pRow, pColumn ) = CheckBox.CheckedStates.Checked Then
		      theValue = True
		    ElseIf me.CellState( pRow, pColumn ) = CheckBox.CheckedStates.Unchecked Then
		      theValue = False
		    End If
		  Else
		    // Set the cell to the value to make sure formatting is correct
		    me.Cell( pRow, pColumn ) = formatMyValue( theValue, mdFormats( pColumn ) )
		  End If
		  
		  // Get the pkid from theRowTag
		  theRowTag = me.RowTag( pRow )
		  thepkid = theRowTag.pkid
		  
		  // Create our SQL
		  theSQL = "Update " + s1 + " Set " + s2 + " = $1 Where " + mdpkFieldName + " = $2 ;"
		  
		  // Prepare the statement
		  ps = otis.db.prepare( theSQL )
		  ps.Bind( 0, theValue )
		  ps.Bind( 1, thepkid )
		  
		  ps.SQLExecute
		  
		  If otis.db.error Then
		    logErrorMessage( 4, "Save Failed", otis.db.ErrorMessage )
		  End If
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub searchMe(pSearchValue as String)
		  dim InRow as Boolean
		  dim x1 as integer
		  dim x2 as integer
		  dim x3 as integer
		  dim addedRecords as integer
		  dim theExpanded as Boolean
		  dim numberofRows as integer
		  dim n1, n2, n3, n4 as double
		   
		  
		  
		  
		  // Find the number of rows that the listbox can hold
		  n1 = me.Height - me.HeaderHeight
		  n1 = n1 / me.RowHeight
		  numberofRows = Floor( n1 )
		  
		  
		  For i1 as integer = 0 To ListCount - 1
		    
		    If me.RowIsFolder( i1 ) Then
		      
		      // Save Expanded State
		      theExpanded = me.Expanded( i1 )
		      
		      If not theExpanded Then
		        
		        // Save the current listcount
		        x2 = me.ListCount
		        
		        // Expand Foder
		        me.Expanded( i1 ) = True
		        
		        // Save the current ListCount
		        x3 = me.ListCount
		        addedRecords = x3 - x2
		        
		        // Loop through Folder Records
		        For i2 as integer = i1 + 1 To i1 + addedRecords
		          If InStr( Cell( i1, 0 ), pSearchValue ) > 0 Then
		            InRow = True
		            x1 = i2
		            Exit
		          End If 
		        Next
		        
		        If InRow Then
		          Exit
		        Else
		          me.Expanded( i1 ) = False
		        End If
		      End If
		    End If
		    
		    // Save which row it is
		    If InStr( Cell( i1, 0 ), pSearchValue ) > 0 Then
		      InRow = True
		      x1 = i1
		      Exit
		    End If 
		    
		  Next
		  
		  // Set Scroll Position
		  If ( mdDataDict.Ubound ) - numberofRows + 1 < x1 Then
		    me.ScrollPosition = mdDataDict.Ubound - numberofRows + 1
		  Else
		    me.ScrollPosition = x1
		  End If
		  
		  Window_Error.Close
		  
		  If InRow Then
		    me.ListIndex = x1
		    
		    Return
		  End If
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub searchMePKID(pPKID as string)
		  dim InRow as Boolean
		  dim x1 as integer
		  dim x2 as integer
		  dim x3 as integer
		  dim addedRecords as integer
		  dim theExpanded as Boolean
		  dim theRowTag as mdRowTag
		  
		  
		  
		  
		  For i1 as integer = 0 To ListCount - 1
		    
		    If me.RowIsFolder( i1 ) Then
		      
		      // Save Expanded State
		      theExpanded = me.Expanded( i1 )
		      
		      If not theExpanded Then
		        
		        // Save the current listcount
		        x2 = me.ListCount
		        
		        // Expand Foder
		        me.Expanded( i1 ) = True
		        
		        // Save the current ListCount
		        x3 = me.ListCount
		        addedRecords = x3 - x2
		        
		        // Loop through Folder Records
		        For i2 as integer = i1 + 1 To i1 + addedRecords
		          
		          // Grab the Rowtag
		          theRowTag = me.RowTag( i2 )
		          
		          // Compare pkids
		          If pPKID = theRowTag.pkid Then
		            x1 = i2
		            InRow = True
		            Exit
		          End If
		          
		        Next
		        
		        If InRow Then
		          Exit
		        Else
		          me.Expanded( i1 ) = False
		        End If
		      End If
		    End If
		    // Loop through each Column
		    'For i2 as integer = 0 To ColumnCount - 1
		    
		    // Grab the Rowtag
		    theRowTag = me.RowTag( i1 )
		    
		    // Compare pkids
		    If pPKID = theRowTag.pkid Then
		      x1 = i1
		      InRow = True
		      Exit
		    End If
		    'Next
		    
		    
		    
		  Next
		  
		  
		  If InRow Then
		    ListIndex = x1
		    Return
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setUpMe()
		  
		  
		  
		  
		  
		  // Set the header count
		  me.ColumnCount = mdHeaders.Ubound + 1
		  
		  // Set the mdHeaders
		  For i1 as integer = 0 To mdHeaders.Ubound
		    
		    If mdHeaders.Ubound <> -1 Then
		      me.Heading( i1 ) = mdHeaders( i1 )
		    End If
		    
		    If mdColumnTypes.Ubound <> -1 Then
		      me.ColumnType( i1 ) = mdColumnTypes( i1 )
		    End If
		    
		    If mdJustification.Ubound <> -1 Then
		      me.ColumnAlignment(i1) = mdJustification(i1)
		    End If
		    
		  Next
		  
		  me.ColumnWidths = mdColumnWidths
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		enableHeirarchal As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		mdColumnTypes() As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mdColumnWidths As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdDataDict() As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		mdFieldNames() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdfkActualRecordFieldName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdfkFieldName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdfkValue As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdFormats() As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mdGroupDict() As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		mdHeaders() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdJustification() As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mdpkFieldName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdRowInfo() As Variant
	#tag EndProperty

	#tag Property, Flags = &h0
		mdSortFields() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mdTableName As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoHideScrollbars"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Border"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnCount"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnsResizable"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnWidths"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataField"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataSource"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataSource"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DefaultRowHeight"
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableDrag"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableDragReorder"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="enableHeirarchal"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridLinesHorizontal"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - ThinDotted"
				"3 - ThinSolid"
				"4 - ThickSolid"
				"5 - DoubleThinSolid"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridLinesVertical"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - ThinDotted"
				"3 - ThinSolid"
				"4 - ThickSolid"
				"5 - DoubleThinSolid"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasHeading"
			Visible=true
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeadingIndex"
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hierarchical"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialValue"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mdColumnWidths"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mdfkActualRecordFieldName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mdfkFieldName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mdfkValue"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mdpkFieldName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mdTableName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequiresSelection"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollbarHorizontal"
			Visible=true
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollBarVertical"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectionType"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Single"
				"1 - Multiple"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextFont"
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSize"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextUnit"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="FontUnits"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Pixel"
				"2 - Point"
				"3 - Inch"
				"4 - Millimeter"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_ScrollOffset"
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_ScrollWidth"
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
