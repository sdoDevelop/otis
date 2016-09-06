#tag Window
Begin sdoWindow Window_Venue
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   False
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
   Title           =   "venues"
   Visible         =   True
   Width           =   600
   Begin mdListbox Listbox_EIPLVenues
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
      enableHeirarchal=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   False
      HeadingIndex    =   -1
      Height          =   319
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
      LockRight       =   False
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
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   39
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   209
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton PushButton_SearcGo
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Go"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   195
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   17
      Underline       =   False
      Visible         =   True
      Width           =   34
   End
   Begin TextField TextField_venueSearch
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
      Italic          =   False
      Left            =   20
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   17
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   177
   End
   Begin mdTextField TextField_Name
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
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   355
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   "pkid"
      mdpkValue       =   ""
      mdTableName     =   ""
      parentSection   =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      searchField     =   False
      searchListboxName=   ""
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   47
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   225
   End
   Begin mdLabel Label_Name
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
      Left            =   243
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   ""
      mdpkValue       =   ""
      mdTableName     =   ""
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Name"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   48
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Label Label_Type
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
      Left            =   243
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Type"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   73
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin mdTextField TextField_Type
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
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   355
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   "pkid"
      mdpkValue       =   ""
      mdTableName     =   ""
      parentSection   =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      searchField     =   False
      searchListboxName=   ""
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   72
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   225
   End
   Begin mdLabel Label_Company
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
      Left            =   243
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   ""
      mdpkValue       =   ""
      mdTableName     =   ""
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Company"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   99
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin mdTextField TextField_Company
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
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   355
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   "pkid"
      mdpkValue       =   ""
      mdTableName     =   ""
      parentSection   =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      searchField     =   False
      searchListboxName=   ""
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   98
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   225
   End
   Begin mdLabel Label_Email
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
      Left            =   243
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   ""
      mdpkValue       =   ""
      mdTableName     =   ""
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Email"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   126
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin mdTextField TextField_Email
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
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   355
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   "pkid"
      mdpkValue       =   ""
      mdTableName     =   ""
      parentSection   =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      searchField     =   False
      searchListboxName=   ""
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   125
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   225
   End
   Begin mdLabel Label_Phone
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
      Left            =   243
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   ""
      mdpkValue       =   ""
      mdTableName     =   ""
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Phone"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   152
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin mdTextField TextField_Phone
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
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   355
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   "pkid"
      mdpkValue       =   ""
      mdTableName     =   ""
      parentSection   =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      searchField     =   False
      searchListboxName=   ""
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   151
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   225
   End
   Begin mdLabel Label_AddressLine1
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
      Left            =   243
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   ""
      mdpkValue       =   ""
      mdTableName     =   ""
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Address Line 1"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   178
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin mdTextField TextField_AddressLine1
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
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   355
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   "pkid"
      mdpkValue       =   ""
      mdTableName     =   ""
      parentSection   =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      searchField     =   False
      searchListboxName=   ""
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   177
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   225
   End
   Begin mdLabel Label_AddressLine2
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
      Left            =   243
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   ""
      mdpkValue       =   ""
      mdTableName     =   ""
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Address Line 2"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   205
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin mdTextField TextField_AddressLine2
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
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   355
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   "pkid"
      mdpkValue       =   ""
      mdTableName     =   ""
      parentSection   =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      searchField     =   False
      searchListboxName=   ""
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   204
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   225
   End
   Begin mdLabel Label_City
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
      Left            =   243
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   ""
      mdpkValue       =   ""
      mdTableName     =   ""
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "City"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   231
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin mdTextField TextField_City
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
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   355
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   "pkid"
      mdpkValue       =   ""
      mdTableName     =   ""
      parentSection   =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      searchField     =   False
      searchListboxName=   ""
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   230
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   225
   End
   Begin mdLabel Label_State
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
      Left            =   243
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   ""
      mdpkValue       =   ""
      mdTableName     =   ""
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "State"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   257
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin mdTextField TextField_State
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
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   355
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   "pkid"
      mdpkValue       =   ""
      mdTableName     =   ""
      parentSection   =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      searchField     =   False
      searchListboxName=   ""
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   256
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   225
   End
   Begin mdLabel Label_Zip
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
      Left            =   243
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   ""
      mdpkValue       =   ""
      mdTableName     =   ""
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Zip"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   283
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin mdTextField TextField_Zip
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
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   355
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   "pkid"
      mdpkValue       =   ""
      mdTableName     =   ""
      parentSection   =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      searchField     =   False
      searchListboxName=   ""
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   282
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   225
   End
   Begin mdLabel Label_Country
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
      Left            =   243
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   ""
      mdpkValue       =   ""
      mdTableName     =   ""
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Country"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   309
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin mdTextField TextField_Country
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
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   355
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      mdFieldName     =   ""
      mdFormat        =   0
      mdpkFieldName   =   "pkid"
      mdpkValue       =   ""
      mdTableName     =   ""
      parentSection   =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      searchField     =   False
      searchListboxName=   ""
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   308
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   225
   End
   Begin PushButton PushButton_AddVenue
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "OK"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   500
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   360
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton PushButton_CancelAdd
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   408
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   360
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton PushButton_createContact
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "+"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   "Add Contact"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   360
      Underline       =   False
      Visible         =   True
      Width           =   30
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub KeyUp(Key As String)
		  If Key = chr(13) Then
		    If Focus.Name = "TextField_venueSearch" Then
		      Listbox_EIPLVenues.searchMe( TextField_venueSearch.Text )
		    Else
		      okButtonMethod
		    End If
		  End If
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub addNewAssociation()
		  dim theSQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim theRecordSet as RecordSet
		  dim thePKID as string
		  dim thefkMasterName as string
		  dim thefkMasterValue as string
		  dim thevenuePKID as string
		  dim theRowTag as mdRowTag
		  
		  
		  
		  
		  // Prepare our SQL
		  theSQL = "Insert Into contact_venue_data Default Values Returning pkid ; "
		  otis_local.db.prepareU( theSQL )
		  
		  // Execute and grab pkid
		  theRecordSet = otis_local.db.SQLSelectU
		  If otis_local.db.error Then
		    logErrorMessage( 4, "DB", otis_local.db.errorMessage )
		  End If
		  
		  thePKID = theRecordSet.Field( "pkid" ).StringValue
		  
		  // Getting the venue PKID
		  theRowTag = Listbox_EIPLVenues.RowTag( Listbox_EIPLVenues.ListIndex )
		  thevenuePKID = theRowTag.pkid
		  
		  
		  // Check Mode
		  Select Case windowMode
		    
		  Case 1 'Event
		    
		    thefkMasterName = "fkevents_"
		    dim x1 as integer = MainWindow.findControlByName( "Listbox_Events" )
		    thefkMasterValue = pullControlPKID(MainWindow.Control( x1 ) )
		    
		  Case 2 'EIPL
		    
		    thefkMasterName = "fkeipl"
		    dim x1 as integer = MainWindow.findControlByName( "Listbox_EIPL" )
		    thefkMasterValue = pullControlPKID(MainWindow.Control( x1 ) )
		    
		  End Select
		  
		  mainPKID = thevenuePKID
		  
		  // Set up sql to set the fk fields
		  theSQL = "Update contact_venue_data Set " + thefkMasterName + " = $1, fkvenues = $2 Where pkid = $3 ; "
		  otis_local.db.prepareU( theSQL )
		  
		  // Binding and Executing
		  otis_local.db.bindU( 0, thefkMasterValue )
		  otis_local.db.bindU( 1, thevenuePKID )
		  otis_local.db.bindU( 2, thePKID )
		  ps.SQLExecute
		  If otis_local.db.error Then
		    logErrorMessage( 4, "DB", otis_local.db.errorMessage )
		  End If
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function addNewvenue() As String
		  dim theSQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim theRecordSet as RecordSet
		  dim thePKID as string
		  
		  
		  
		  // Prepare our SQL
		  theSQL = "Insert Into venues Default Values Returning pkid ; "
		  otis_local.db.prepareU( theSQL )
		  
		  // Execute SQL
		  theRecordSet = otis_local.db.SQLSelectU
		  
		  // Extract the pkid
		  thePKID = theRecordSet.Field( "pkid" ).StringValue
		  
		  
		  Return thePKID
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub myOpen(pWindowMode as integer)
		  
		  // Window Mode
		  ' 0 = No Mode
		  ' 1 = Event
		  ' 2 = EIPL
		  windowMode = pWindowMode
		  
		  
		  
		  // Register things
		  
		  //  Listbox_EIPLVenues
		  Listbox_EIPLVenues.mdTableName = "venues"
		  Listbox_EIPLVenues.mdHeaders() = Array( "Name" )
		  Listbox_EIPLVenues.mdFieldNames() = Array( "name" )
		  Listbox_EIPLVenues.mdpkFieldName = "pkid"
		  Listbox_EIPLVenues.mdSortFields = Array( "name" )
		  Listbox_EIPLVenues.mdColumnTypes() = Array( 0 )
		  Listbox_EIPLVenues.mdFormats() = Array ( 0  )
		  
		  // TextField_AddressLine1
		  TextField_AddressLine1.mdTableName = "venues"
		  TextField_AddressLine1.mdFieldName = "addressline1"
		  TextField_AddressLine1.mdFormat = 0
		  TextField_AddressLine1.mdpkFieldName ="pkid"
		  
		  // TextField_AddressLine2
		  TextField_AddressLine2.mdTableName = "venues"
		  TextField_AddressLine2.mdFieldName = "addressline2"
		  TextField_AddressLine2.mdFormat = 0
		  TextField_AddressLine2.mdpkFieldName ="pkid"
		  
		  // TextField_City
		  TextField_City.mdTableName = "venues"
		  TextField_City.mdFieldName = "addresscity"
		  TextField_City.mdFormat = 0
		  TextField_City.mdpkFieldName ="pkid"
		  
		  // TextField_Company
		  TextField_Company.mdTableName = "venues"
		  TextField_Company.mdFieldName = "company"
		  TextField_Company.mdFormat = 0
		  TextField_Company.mdpkFieldName ="pkid"
		  
		  // TextField_Country
		  TextField_Country.mdTableName = "venues"
		  TextField_Country.mdFieldName = "addresscountry"
		  TextField_Country.mdFormat = 0
		  TextField_Country.mdpkFieldName ="pkid"
		  
		  // TextField_Email
		  TextField_Email.mdTableName = "venues"
		  TextField_Email.mdFieldName = "email"
		  TextField_Email.mdFormat = 0
		  TextField_Email.mdpkFieldName ="pkid"
		  
		  // TextField_Name
		  TextField_Name.mdTableName = "venues"
		  TextField_Name.mdFieldName = "name"
		  TextField_Name.mdFormat = 0
		  TextField_Name.mdpkFieldName ="pkid"
		  
		  // TextField_Type
		  TextField_Type.mdTableName = "venues"
		  TextField_Type.mdFieldName = "type"
		  TextField_Type.mdFormat = 0
		  TextField_Type.mdpkFieldName ="pkid"
		  
		  // TextField_Phone
		  TextField_Phone.mdTableName = "venues"
		  TextField_Phone.mdFieldName = "phonemain"
		  TextField_Phone.mdFormat = 0
		  TextField_Phone.mdpkFieldName ="pkid"
		  
		  // TextField_State
		  TextField_State.mdTableName = "venues"
		  TextField_State.mdFieldName = "addressstate"
		  TextField_State.mdFormat = 0
		  TextField_State.mdpkFieldName ="pkid"
		  
		  // TextField_Zip
		  TextField_Zip.mdTableName = "venues"
		  TextField_Zip.mdFieldName = "addresszip"
		  TextField_Zip.mdFormat = 0
		  TextField_Zip.mdpkFieldName ="pkid"
		  
		  
		  
		  // Load Things
		  
		  Listbox_EIPLVenues.loadMe
		  
		  // Center the Window
		  Left = (screen(0).Width - me.Width) / 2
		  Top = (screen(0).Height - me.Height) / 2
		  
		  // Checking if we want the buttons
		  Select Case windowMode
		  Case 0
		    PushButton_Addvenue.Visible = False
		    PushButton_CancelAdd.Visible = False
		  Case 1 Or 2
		    PushButton_Addvenue.Visible = True
		    PushButton_Addvenue.Visible = True
		  End Select
		  
		  
		  me.Show
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub okButtonMethod()
		  
		  
		  
		  If Listbox_EIPLVenues.ListIndex <> -1 Then
		    
		    addNewAssociation
		    
		    If windowMode = 1 Then  'Event
		      
		      MainWindow.Listbox_Eventvenue.loadMe
		      
		    ElseIf windowMode = 2 Then  'EIPL
		      
		      loadAllFromDB( "venues", mainPKID )
		      
		    End If
		    
		    me.close
		    
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		mainPKID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			// 1 = Event
			// 2 = EIPL
		#tag EndNote
		windowMode As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events Listbox_EIPLVenues
	#tag Event
		Sub Change()
		  If me.ListIndex <> -1 Then
		    me.populateExtControls
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_SearcGo
	#tag Event
		Sub Action()
		  Listbox_EIPLVenues.searchMe( TextField_venueSearch.Text )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_AddVenue
	#tag Event
		Sub Action()
		  okButtonMethod
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_CancelAdd
	#tag Event
		Sub Action()
		  me.Window.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_createContact
	#tag Event
		Sub Action()
		  dim thePKID as string
		  
		  thePKID = addNewVenue
		  
		  Listbox_EIPLVenues.loadMe
		  Listbox_EIPLVenues.searchMePKID( thePKID )
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
		Name="mainPKID"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
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
	#tag ViewProperty
		Name="windowMode"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
