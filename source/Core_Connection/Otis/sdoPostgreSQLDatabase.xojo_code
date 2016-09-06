#tag Class
Protected Class sdoPostgreSQLDatabase
Inherits postgreSQLDatabase
	#tag Event
		Sub ReceivedNotification(aName as String, aPid as Integer, aExtra as String)
		  dim SQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim theRecordSet as RecordSet
		  dim s1, s2, s3, s4 as string
		  dim n1, n2, n3, n4 as integer
		  dim notification_type as string
		  dim lineitem_name as string
		  dim notification_pkids() as string
		  dim lineitem_pkids_ as string
		  
		  
		  
		  s1 = make_table_name
		  
		  // pull all new notifications down from server
		  SQL = "Select * From " + s1 + " Where checked_ = False ;"
		  otis_local.db.prepareU( SQL )
		  theRecordSet = otis_local.db.SQLSelectU
		  If otis_local.db.error Then
		    logErrorMessage( 3, "DBase", otis_local.db.errormessage )
		  End If
		  
		  // Check how many records there are
		  n1 = theRecordSet.RecordCount
		  
		  For i1 as integer = 0 To theRecordSet.RecordCount - 1
		    
		    ' grab the notification type
		    notification_type = theRecordSet.Field( "notification_type" ).StringValue
		    
		    If notification_type = "price_discrepency" Then
		      
		      'grab the line item name
		      lineitem_name = theRecordSet.Field( "lineitem_name" ).StringValue
		      lineitem_pkids_ = theRecordSet.Field( "lineitem_pkids" ).StringValue
		      
		      'gather all the pkids into array
		      notification_pkids.Append( theRecordSet.Field( "pkid" ).StringValue )
		      
		      'create a message box that informs the user that there is a price discrepency
		      Window_Price_Discrepency.myOpen( lineitem_name, lineitem_pkids_ )
		      
		      'Set 
		      
		      // delete the checked notifications
		      s2 = theRecordSet.Field( "pkid" ).StringValue
		      SQL = "Delete From " + table_name + " Where pkid = '" + s2 + "' ; "
		      otis_local.db.prepareU( SQL )
		      ps.SQLExecute
		      If otis_local.db.error Then
		        logErrorMessage( 3, "DBase", otis_local.db.errormessage )
		      End If
		      
		    ElseIf notification_type = "eventStartDateChange" Then
		      
		      'Grab the event pkid from the event listbox
		      dim theRT as mdRowTag
		      dim thePKID as string
		      dim event_pkid_ as string
		      If MainWindow.Listbox_Events.ListIndex <> -1 Then
		        theRT = MainWindow.Listbox_Events.RowTag( MainWindow.Listbox_Events.ListIndex )
		        thePKID = theRT.pkid
		      End If
		      
		      'Grab the event pkid of the notifaction
		      event_pkid_ = theRecordSet.Field( "event_pkid_" ).StringValue
		      
		      'If the notification pkid and the current pkid match 
		      If event_pkid_ = thePKID Then
		        
		        'Update the date boxes
		        MainWindow.TextField_Event_StartDate.loadFromDB
		        MainWindow.TextField_Event_EndDate.loadFromDB
		        MainWindow.TextField_Event_LoadinDate.loadFromDB
		        MainWindow.TextField_Event_LoadOutDate.loadFromDB
		      End If
		      
		      // delete the checked notifications
		      s2 = theRecordSet.Field( "pkid" ).StringValue
		      SQL = "Delete From " + table_name + " Where pkid = '" + s2 + "' ; "
		      otis_local.db.prepareU( SQL )
		      ps.SQLExecute
		      If otis_local.db.error Then
		        logErrorMessage( 3, "DBase", otis_local.db.errormessage )
		      End If
		      
		    End If
		    
		  Next
		  
		  s2 = Join( notification_pkids, " " )
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function make_table_name() As string
		  // Conconct our table name
		  table_name = "notification." + otis.db.username + "_rap"
		  listen_channel = otis.db.username
		  
		  
		  Return table_name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub set_up_listen_channel()
		  
		  
		  Listen( listen_channel )
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		block_access As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		listen_channel As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected table_name As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected version_build As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected version_major As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected version_minor As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AppName"
			Visible=true
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="block_access"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="listen_channel"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultiThreaded"
			Visible=true
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Port"
			Visible=true
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSLAuthority"
			Visible=true
			Type="FolderItem"
			EditorType="FolderItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSLCertificate"
			Visible=true
			Type="FolderItem"
			EditorType="FolderItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSLKey"
			Visible=true
			Type="FolderItem"
			EditorType="FolderItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SSLMode"
			Visible=true
			Type="Integer"
			EditorType="Integer"
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
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
