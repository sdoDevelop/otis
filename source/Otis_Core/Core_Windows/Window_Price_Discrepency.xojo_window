#tag Window
Begin Window Window_Price_Discrepency
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   286
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Untitled"
   Visible         =   True
   Width           =   397
   Begin Label Label_title
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Title"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   23
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   357
   End
   Begin Listbox Listbox1
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   158
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   51
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   357
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton PushButton_match_low
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Match Low"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   246
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton PushButton_match_high
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Match High"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   225
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton PushButton_match_selected
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Match Selected"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   263
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   246
      Underline       =   False
      Visible         =   True
      Width           =   114
   End
   Begin PushButton PushButton_ignore
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Ignore"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   171
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   246
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  otis.db.block_access = False
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub myOpen(pLineitem_name as string, pLineitem_pkids as string)
		  dim SQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim theRecordSet as RecordSet
		  dim s1, s2, s3, s4 as string
		  dim n1, n2, n3, n4 as Double
		  dim EIPL_Number as string
		  dim LineItem_Name as string
		  dim LineItem_Price as string
		  
		  otis.db.block_access = True
		  
		  property_lineitem_pkids = pLineitem_pkids
		  
		  // Set up the listbox
		  redim price(-1)
		  Listbox1.ColumnCount = 3
		  Listbox1.Heading(0) = "EIPL"
		  Listbox1.Heading(1) = "Name"
		  Listbox1.Heading(2) = "Price"
		  
		  
		  // Create the Title
		  s1 = "There is a price discrepency with " + pLineitem_name
		  Label_title.Text = s1
		  
		  // Get the LineItems from the server
		  SQL = "Select lineitems.pkid, lineitems.name_, lineitems.price, eipl.eipl_nmbr From lineitems, eipl Where '"_
		  + pLineitem_pkids + "' Like '%' || lineitems.pkid || '%' And lineitems.fkeipl = eipl.pkid ; " 
		  ps = otis.db.prepare( SQL )
		  theRecordSet = ps.SQLSelect
		  If otis.db.error Then
		    logErrorMessage( 4, "DBase", otis.db.errormessage )
		  End If
		  
		  // clear the listbox
		  Listbox1.DeleteAllRows
		  
		  For i1 as integer = 0 to theRecordSet.RecordCount - 1
		    
		    EIPL_Number = theRecordSet.Field( "eipl_nmbr" ).StringValue
		    LineItem_Name = theRecordSet.Field( "name_" ).StringValue
		    n1 = theRecordSet.Field( "price" ).DoubleValue
		    n2 = n1 / 100
		    LineItem_Price = "$" + str( n2 )
		    
		    Listbox1.AddRow( EIPL_Number, LineItem_Name, LineItem_Price )
		    price.Append( n1 )
		    
		    'determin highest and lowest price
		    If n1 > Highest_Price Then
		      Highest_Price = n1
		    End If
		    If n1 < Lowest_Price Or Lowest_Price = 0 Then
		      Lowest_Price = n1
		    End If
		    
		    theRecordSet.MoveNext
		    
		  Next
		  
		  
		  me.Show
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Highest_Price As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Lowest_Price As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		price() As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		property_lineitem_pkids As String
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButton_match_low
	#tag Event
		Sub Action()
		  dim SQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim price_ as integer
		  
		  
		  price_ = Lowest_Price
		  
		  // Get the LineItems from the server
		  SQL = "Update lineitems Set price = " + price_.ToText + " Where '" + property_lineitem_pkids + "' Like '%' || pkid || '%'  ; " 
		  ps = otis.db.prepare( SQL )
		  ps.SQLExecute
		  
		  If otis.db.error Then
		    logErrorMessage( 4, "DBase", otis.db.errormessage )
		  End If
		  
		  MainWindow.ListBox_EIPL.loadMe( true )
		  
		  me.Window.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_match_high
	#tag Event
		Sub Action()
		  dim SQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim price_ as integer
		  
		  
		  price_ = Highest_Price
		  
		  // Get the LineItems from the server
		  SQL = "Update lineitems Set price = " + price_.ToText + " Where '" + property_lineitem_pkids + "' Like '%' || pkid || '%'  ; " 
		  ps = otis.db.prepare( SQL )
		  ps.SQLExecute
		  
		  If otis.db.error Then
		    logErrorMessage( 4, "DBase", otis.db.errormessage )
		  End If
		  
		  MainWindow.ListBox_EIPL.loadMe( true )
		  
		  me.Window.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_match_selected
	#tag Event
		Sub Action()
		  dim SQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim price_ as integer
		  
		  
		  price_ = price( Listbox1.ListIndex )
		  
		  // Get the LineItems from the server
		  SQL = "Update lineitems Set price = " + price_.ToText + " Where '" + property_lineitem_pkids + "' Like '%' || pkid || '%'  ; " 
		  ps = otis.db.prepare( SQL )
		  ps.SQLExecute
		  
		  If otis.db.error Then
		    logErrorMessage( 4, "DBase", otis.db.errormessage )
		  End If
		  
		  MainWindow.ListBox_EIPL.loadMe( true )
		  
		  me.Window.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_ignore
	#tag Event
		Sub Action()
		  dim SQL as string
		  dim ps as PostgreSQLPreparedStatement
		  
		  
		  
		  
		  // Get the LineItems from the server
		  SQL = "Update lineitems Set ignore_price_discrepency = True Where '" + property_lineitem_pkids + "' Like '%' || pkid || '%'  ; " 
		  ps = otis.db.prepare( SQL )
		  ps.SQLExecute
		  
		  If otis.db.error Then
		    logErrorMessage( 4, "DBase", otis.db.errormessage )
		  End If
		  
		  MainWindow.ListBox_EIPL.loadMe( true )
		  
		  me.Window.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Highest_Price"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Lowest_Price"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="property_lineitem_pkids"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
