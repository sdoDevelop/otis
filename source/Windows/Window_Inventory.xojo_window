#tag Window
Begin sdoWindow Window_Inventory
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   608
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Inventory"
   Visible         =   True
   Width           =   884
   Begin PagePanel PagePanel_Inventory
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   608
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   2
      Panels          =   ""
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      Top             =   0
      Value           =   0
      Visible         =   True
      Width           =   884
      Begin mdListbox Listbox_inventory
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   False
         Border          =   True
         ColumnCount     =   1
         ColumnsResizable=   True
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   False
         EnableDragReorder=   False
         enableHeirarchal=   False
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   516
         HelpTag         =   ""
         Hierarchical    =   True
         Index           =   -2147483648
         InitialParent   =   "PagePanel_Inventory"
         InitialValue    =   ""
         Italic          =   False
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         mdColumnWidths  =   ""
         mdfkActualRecordFieldName=   ""
         mdfkFieldName   =   ""
         mdfkValue       =   ""
         mdpkFieldName   =   ""
         mdTableName     =   ""
         RequiresSelection=   False
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   41
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   844
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin mdTextField TextField1
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "PagePanel_Inventory"
         Italic          =   False
         Left            =   20
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         mdFieldName     =   ""
         mdFormat        =   0
         mdpkFieldName   =   "pkid"
         mdpkValue       =   ""
         mdTableName     =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   556
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   84
      End
      Begin mdTextField TextField2
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "PagePanel_Inventory"
         Italic          =   False
         Left            =   103
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         mdFieldName     =   ""
         mdFormat        =   0
         mdpkFieldName   =   "pkid"
         mdpkValue       =   ""
         mdTableName     =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   556
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   84
      End
      Begin mdTextField TextField3
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "PagePanel_Inventory"
         Italic          =   False
         Left            =   186
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         mdFieldName     =   ""
         mdFormat        =   0
         mdpkFieldName   =   "pkid"
         mdpkValue       =   ""
         mdTableName     =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   556
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   84
      End
      Begin mdTextField TextField4
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "PagePanel_Inventory"
         Italic          =   False
         Left            =   269
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         mdFieldName     =   ""
         mdFormat        =   0
         mdpkFieldName   =   "pkid"
         mdpkValue       =   ""
         mdTableName     =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   556
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   84
      End
      Begin mdTextField TextField5
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "PagePanel_Inventory"
         Italic          =   False
         Left            =   352
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         mdFieldName     =   ""
         mdFormat        =   0
         mdpkFieldName   =   "pkid"
         mdpkValue       =   ""
         mdTableName     =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   556
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   84
      End
      Begin mdTextField TextField6
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "PagePanel_Inventory"
         Italic          =   False
         Left            =   435
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         mdFieldName     =   ""
         mdFormat        =   0
         mdpkFieldName   =   "pkid"
         mdpkValue       =   ""
         mdTableName     =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   556
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   84
      End
      Begin mdTextField TextField7
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "PagePanel_Inventory"
         Italic          =   False
         Left            =   518
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         mdFieldName     =   ""
         mdFormat        =   0
         mdpkFieldName   =   "pkid"
         mdpkValue       =   ""
         mdTableName     =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   556
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   84
      End
      Begin mdTextField TextField8
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "PagePanel_Inventory"
         Italic          =   False
         Left            =   601
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         mdFieldName     =   ""
         mdFormat        =   0
         mdpkFieldName   =   "pkid"
         mdpkValue       =   ""
         mdTableName     =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   556
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   84
      End
      Begin mdTextField TextField9
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "PagePanel_Inventory"
         Italic          =   False
         Left            =   683
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         mdFieldName     =   ""
         mdFormat        =   0
         mdpkFieldName   =   "pkid"
         mdpkValue       =   ""
         mdTableName     =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   556
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   84
      End
      Begin mdTextField TextField10
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "PagePanel_Inventory"
         Italic          =   False
         Left            =   766
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Mask            =   ""
         mdFieldName     =   ""
         mdFormat        =   0
         mdpkFieldName   =   "pkid"
         mdpkValue       =   ""
         mdTableName     =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   10
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   556
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   84
      End
   End
   Begin Timer Timer1
      Index           =   -2147483648
      LockedInPosition=   False
      Mode            =   2
      Period          =   150
      Scope           =   0
      TabPanelIndex   =   "0"
   End
End
#tag EndWindow

#tag WindowCode
	#tag MenuHandler
		Function NewInventoryItem() As Boolean Handles NewInventoryItem.Action
			newInventoryItem
			
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub loadInventory()
		  
		  
		  Listbox_inventory.loadMe
		  
		  
		  resizeTextFields
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub myOpen()
		  
		  
		  
		  
		  Listbox_inventory.mdtableName = "inventory"
		  Listbox_inventory.mdheaders() = Array( "Name", "Manufacturer", "Model", "Department", "Category", "SubCategory", "Description", "Qty", "Price", "Owner" )
		  Listbox_inventory.mdfieldNames() = Array( "name_", "manufacturer", "model", "department", "category", "subcategory", "description", "quantity_", "price", "owner" )
		  Listbox_inventory.mdColumnTypes() = Array( 0,0,0,0,0,0,0,0,0,0 )
		  Listbox_inventory.mdFormats() = Array( 0,0,0,0,0,0,0,0,1,0 )
		  Listbox_inventory.ColumnWidths = "15%,15%,12%,10%,10%,10%,10%,5%,5%,4%"
		  Listbox_inventory.mdsortFields() = Array( "department", "category", "subcategory", "manufacturer", "model" )
		  Listbox_inventory.mdpkFieldName = "pkid"
		  
		  loadInventory
		  
		  
		  
		  setUpInvTextFields
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub newInventoryItem()
		  dim theSQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim theRecordSet as RecordSet
		  dim theRowTag as mdRowTag
		  
		  
		  // Preparing the SQL
		  theSQL = "Insert Into inventory Default Values Returning pkid;"
		  
		  // preparing the PreparedStatement
		  ps = otis.db.Prepare( theSQL )
		  
		  // Executing the select
		  theRecordSet = ps.SQLSelect
		  
		  // Refresh the Listbox
		  Listbox_inventory.refreshMe
		  
		  // Find and open the new folder
		  For i1 as integer = 0 To Listbox_inventory.ListCount - 1
		    If Listbox_inventory.RowIsFolder( i1 ) Then
		      If Listbox_inventory.Cell( i1, 0 ) = "" Then
		        Listbox_inventory.Expanded( i1 ) = True
		      End If
		    End If
		  Next
		  
		  // Find the new record
		  For i1 as integer = 0 To Listbox_inventory.ListCount - 1
		    
		    // Grab the Rowtag
		    theRowTag = Listbox_inventory.RowTag( i1 )
		    
		    If theRowTag.pkid = theRecordSet.Field( "pkid" ).StringValue Then
		      Listbox_inventory.ListIndex = i1 
		      exit
		    End If
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub resizeTextFields()
		  dim theColumnWidths() as integer
		  dim s1(), s2 as string
		  dim n1, n2, n3, n4 as integer
		  dim d1, d2 as Double
		  dim totalWidth as integer
		  dim originalX as integer
		  dim xIndex as integer
		  dim theControl as control
		  dim number_of_dynamic_colums as integer
		  
		  
		  
		  If 1 = 1 Then  'Contains column width decrypting, maybe put in sdoListbox
		    
		    xIndex = Listbox_inventory.Left
		    originalX = xIndex
		    totalWidth = Listbox_inventory.Width
		    
		    ReDim theColumnWidths( Listbox_inventory.ColumnCount - 1 )
		    
		    For i1 as integer = 0 To Listbox_inventory.ColumnCount - 1
		      
		      theColumnWidths(i1) = Listbox_inventory.Column(i1).WidthActual
		      
		      // Find the textfield control
		      s2 = "TextField" + str( i1 + 1 )
		      n2 = me.findControlByName( s2 )
		      If n2 <> -1 Then
		        theControl = Window_Inventory.Control( n2 )
		      End If
		      
		      If theControl IsA mdTextField Then
		        mdTextField( theControl ).Left = xIndex
		        mdTextField( theControl ).Width = theColumnWidths(i1)
		      End If
		      
		      xIndex = xIndex + theColumnWidths(i1)
		      
		    Next
		    
		    listboxColumnWidths = Listbox_inventory.ColumnWidths
		    
		    
		  End If
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setUpInvTextFields()
		  dim tableName as string
		  dim fieldName as string
		  dim mdFormat as integer
		  dim theControl as Control
		  dim thecontrolIndex as integer
		  dim s1, s2, s3, s4 as string
		  
		  
		  
		  tableName = "inventory"
		  
		  
		  For i1 as integer = 0 To Listbox_inventory.ColumnCount - 1
		    
		    // Find the next control
		    s1 = "TextField"
		    s1 = s1 + str( i1 + 1 )
		    thecontrolIndex = Window_Inventory.findControlByName( s1 )
		    theControl = Window_Inventory.Control( thecontrolIndex )
		    
		    // Find the field name
		    fieldName = Listbox_inventory.mdFieldNames(i1)
		    mdFormat = Listbox_inventory.mdFormats(i1)
		    
		    // TextField_Event_Name
		    mdTextField( theControl ).mdTableName = tableName
		    mdTextField( theControl ).mdFieldName = fieldName
		    mdTextField( theControl ).mdFormat = mdFormat
		    mdTextField( theControl ).mdpkFieldName = "pkid"
		    
		    
		  Next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		listboxColumnWidths As string
	#tag EndProperty


#tag EndWindowCode

#tag Events Listbox_inventory
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  // Add some items
		  base.Append( new MenuItem( "Delete" ) )
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  If me.ListIndex <> -1 Then
		    If Not me.RowIsFolder( me.ListIndex ) Then
		      // Delete row and reload listbox
		      Listbox_inventory.deleteRow
		      
		    End If
		  End If
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseDrag(x As Integer, y As Integer)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  
		  
		  
		  
		  
		  If me.ListIndex <> -1 Then
		    
		    If Not me.RowIsFolder( me.ListIndex ) Then
		      
		      me.populateExtControls
		      
		    End If
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Action()
		  dim difference as Boolean
		  dim s1(), s2() as string
		  
		  
		  s1() = Split( listboxColumnWidths )
		  s2() = Split( Listbox_inventory.ColumnWidths )
		  
		  For i1 as integer = 0 To s1.Ubound
		    
		    If s1(i1) <> s2(i1) Then
		      difference = True
		      exit
		    End If
		    
		  Next
		  
		  if difference Then
		    resizeTextFields
		  end if
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
		Name="listboxColumnWidths"
		Group="Behavior"
		Type="string"
		EditorType="MultiLineEditor"
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
