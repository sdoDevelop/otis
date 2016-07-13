#tag Window
Begin Window Window_Contract
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   True
   HasBackColor    =   False
   Height          =   400
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
   Title           =   "Contract"
   Visible         =   True
   Width           =   600
   Begin TextArea TextArea_contract_body
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   329
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   16
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   53
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   567
   End
   Begin Label Label_contract_number
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
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      Text            =   "Number"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin PushButton PushButton_formatBold
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "B"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   32
      Underline       =   False
      Visible         =   True
      Width           =   28
   End
   Begin PushButton PushButton_formatItalic
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "I"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   43
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   32
      Underline       =   False
      Visible         =   True
      Width           =   28
   End
   Begin PopupMenu PopupMenu_formatSize
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   71
      ListIndex       =   0
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
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   32
      Underline       =   False
      Visible         =   True
      Width           =   45
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub myOpen(pEIPL_PKID as string)
		  
		  
		  
		  eipl_pkid = pEIPL_PKID
		  populate_contract
		  
		  me.Show
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub populate_contract()
		  dim SQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim rs1, rs2 as RecordSet
		  dim error_occurred as Boolean
		  dim contract_pkid as string
		  dim contract_body as string
		  
		  
		  
		  If eipl_pkid = "" Then
		    logErrorMessage( 3, "Contract", "No eipl pkid found to find contracts 0003" )
		    Return
		  End If
		  
		  
		  // Grab information from the server
		  SQL = "Select * From contracts_ Where fkeipl = $1 ;"
		  ps = otis.db.prepare(SQL)
		  ps.Bind( 0, eipl_pkid )
		  rs1 = ps.SQLSelect
		  If otis.db.error then
		    logErrorMessage( 3, "DBase", otis.db.errormessage )
		    sdoReturn
		    Return
		  End If
		  break
		  If rs1 <> Nil Then
		    'pull the contract pkid from the recordset
		    contract_pkid = rs1.Field( "pkid" ).StringValue
		  Else
		    logErrorMessage( 3, "DBase", "Could not get pkid from contract, recordset is nil 0001" )
		    sdoReturn
		    Return
		  End If
		  
		  'error check
		  If contract_pkid = "" Then
		    logErrorMessage( 3, "Contacts", "Contract pkid is Nil 0002" )
		    sdoReturn
		    Return
		  End If
		  
		  'get the body of the contract
		  SQL = "Select * From contract_sections_ Where contract_sections_.fkcontracts_ = $1 Order By section_number_ ;"
		  ps = otis.db.prepare(SQL)
		  ps.Bind( 0, contract_pkid )
		  rs2 = ps.SQLSelect
		  If otis.db.error then
		    logErrorMessage( 3, "DBase", otis.db.errormessage )
		    sdoReturn
		    Return
		  ElseIf rs2 = Nil Then
		    sdoReturn
		    Return
		  End If
		  
		  
		  'create the body of the contract
		  For i1 as integer = 0 To rs2.RecordCount - 1
		    
		    contract_body = contract_body + rs2.Field( "content_" ).StringValue
		    rs2.MoveNext
		    
		  Next
		  
		  
		  'put the body into the TextArea
		  'TextArea_contract_body.Text = contract_body
		  TextArea_contract_body.StyledText.RTFData = contract_body
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private bold() As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private cursor_rate As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected eipl_pkid As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private font() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private font_size() As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Left
			Center
			Right
		#tag EndNote
		Private horizontal_justification As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private italic() As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private strikethrough() As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private text_background_color() As Color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private text_color() As Color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private underline() As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButton_formatBold
	#tag Event
		Sub Action()
		  
		  
		  
		  
		  If TextArea_contract_body.SelBold = False Then
		    TextArea_contract_body.SelBold = True
		  Else
		    TextArea_contract_body.SelBold = False
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_formatItalic
	#tag Event
		Sub Action()
		  
		  
		  
		  
		  If TextArea_contract_body.SelItalic = False Then
		    TextArea_contract_body.SelItalic = True
		  Else
		    TextArea_contract_body.SelItalic = False
		  End If
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_formatSize
	#tag Event
		Sub Change()
		  
		  
		  
		  
		  TextArea_contract_body.SelTextSize = val( me.Text )
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		  
		  
		  For i1 as integer = 1 To 18
		    me.AddRow i1.ToText
		  Next
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
