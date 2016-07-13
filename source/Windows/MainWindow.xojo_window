#tag Window
Begin sdoWindow MainWindow
   BackColor       =   &c1A1A1A00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   642
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   1903513599
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Otis"
   Visible         =   True
   Width           =   1182
   Begin PagePanel mainWindow_PagePanel
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   637
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   4
      Panels          =   ""
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      Top             =   0
      Value           =   1
      Visible         =   True
      Width           =   1182
      Begin Listbox eventList_Listbox
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
         Height          =   590
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "mainWindow_PagePanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
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
         Top             =   30
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   782
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin Label events_ListStatsLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "mainWindow_PagePanel"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   1
         Text            =   "[ {Filtered / }Found ]"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   9
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   131
      End
      Begin mdListbox ListBox_EIPL
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
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   582
         HelpTag         =   ""
         Hierarchical    =   True
         Index           =   -2147483648
         InitialParent   =   "mainWindow_PagePanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   992
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
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
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   36
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   190
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin mdListbox Listbox_Events
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
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   584
         HelpTag         =   ""
         Hierarchical    =   False
         Index           =   -2147483648
         InitialParent   =   "mainWindow_PagePanel"
         InitialValue    =   ""
         Italic          =   False
         Left            =   1
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
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   35
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   190
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin PushButton PushButton_EIPL_LineItems
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Line Items"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "mainWindow_PagePanel"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   0
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton PushButton_Print
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Print"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "mainWindow_PagePanel"
         Italic          =   False
         Left            =   1116
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   0
         Underline       =   False
         Visible         =   True
         Width           =   57
      End
      Begin TextField TextField_searchEvents
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
         InitialParent   =   "mainWindow_PagePanel"
         Italic          =   False
         Left            =   0
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
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   14
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   158
      End
      Begin PushButton PushButton_searchEventGo
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
         InitialParent   =   "mainWindow_PagePanel"
         Italic          =   False
         Left            =   157
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   15
         Underline       =   False
         Visible         =   True
         Width           =   33
      End
      Begin Rectangle Rectangle4
         AutoDeactivate  =   True
         BorderWidth     =   1
         BottomRightColor=   &cABABAB00
         Enabled         =   True
         FillColor       =   &cC7C7C700
         Height          =   582
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "mainWindow_PagePanel"
         Left            =   191
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         Top             =   36
         TopLeftColor    =   &cABABAB00
         Visible         =   True
         Width           =   801
         Begin Label VenuesListbox_Label
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   737
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   17
            TabPanelIndex   =   2
            Text            =   "Venues"
            TextAlign       =   1
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   359
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin mdTextField TextField_Event_Name
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
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   323
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
            parentSection   =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            searchField     =   False
            searchListboxName=   ""
            TabIndex        =   0
            TabPanelIndex   =   2
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
            Width           =   640
         End
         Begin Label eventName_Label
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   211
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   18
            TabPanelIndex   =   2
            Text            =   "Event Name"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   53
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin Label eventStart_Label
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   211
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   19
            TabPanelIndex   =   2
            Text            =   "Start"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   81
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin Label eventLoadIn_Label
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   211
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   20
            TabPanelIndex   =   2
            Text            =   "Load In"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   135
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin Label eventEnd_Label
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   211
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   21
            TabPanelIndex   =   2
            Text            =   "End"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   108
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin Label eventLoadOut_Label
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   211
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   22
            TabPanelIndex   =   2
            Text            =   "Load Out"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   162
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin Label eventDetails_Label
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   211
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   23
            TabPanelIndex   =   2
            Text            =   "Details"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   214
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin mdTextArea TextArea_Event_Details
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   True
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   False
            Format          =   ""
            Height          =   115
            HelpTag         =   ""
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   323
            LimitText       =   0
            LineHeight      =   0.0
            LineSpacing     =   1.0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            mdFieldName     =   ""
            mdFormat        =   0
            mdpkFieldName   =   ""
            mdpkValue       =   ""
            mdTableName     =   ""
            Multiline       =   True
            parentSection   =   ""
            ReadOnly        =   False
            Scope           =   0
            ScrollbarHorizontal=   False
            ScrollbarVertical=   True
            Styled          =   True
            TabIndex        =   14
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   219
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   350
         End
         Begin mdListbox Listbox_EventVenue
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
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   200
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            InitialValue    =   ""
            Italic          =   False
            Left            =   626
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
            TabIndex        =   24
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   381
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   337
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin mdListbox Listbox_EventContact
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
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   200
            HelpTag         =   ""
            Hierarchical    =   False
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            InitialValue    =   ""
            Italic          =   False
            Left            =   241
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
            TabIndex        =   25
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   381
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   337
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin Label contactsListbox_Label
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   354
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   26
            TabPanelIndex   =   2
            Text            =   "Contacts"
            TextAlign       =   1
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   359
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin PushButton PushButton_addContact
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Add Contact"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   241
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   15
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   583
            Underline       =   False
            Visible         =   True
            Width           =   101
         End
         Begin PushButton PushButton_addVenue
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Add Venue"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   645
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   16
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   583
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin mdTextField TextField_Event_LoadInDate
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
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   519
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   "##/##/\\2\\0##"
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
            TabIndex        =   8
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   134
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   154
         End
         Begin PushButton PushButton_chooseLoadInDate
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Choose"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   685
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   9
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   135
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin mdTextField TextField_Event_LoadOutDate
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
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   519
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   "##/##/\\2\\0##"
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
            TabIndex        =   11
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   161
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   154
         End
         Begin mdTextField TextField_Event_LoadInTime
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
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   323
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   "##:## >??"
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
            TabIndex        =   7
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   135
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   154
         End
         Begin mdTextField TextField_Event_LoadOutTime
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
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   323
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   "##:## >??"
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
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   162
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   154
         End
         Begin mdTextField TextField_Event_StartDate
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
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   519
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   "##/##/\\2\\0##"
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
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   80
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   154
         End
         Begin PushButton PushButton_chooseEventStartDate
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Choose"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   685
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   81
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin mdTextField TextField_Event_EndDate
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
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   519
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   "##/##/\\2\\0##"
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
            TabIndex        =   5
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   107
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   154
         End
         Begin PushButton PushButton_chooseEventEndDate
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Choose"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   685
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   108
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin mdTextField TextField_Event_StartTime
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
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   323
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   "##:## >??"
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
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   81
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   154
         End
         Begin mdTextField TextField_Event_EndTime
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
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   323
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   "##:## >??"
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
            TabIndex        =   4
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   108
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   154
         End
         Begin PushButton PushButton_chooseLoadOutDate
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "0"
            Cancel          =   False
            Caption         =   "Choose"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   685
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   12
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   162
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin mdTextField TextField_Event_AcountManager
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
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   323
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
            parentSection   =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            searchField     =   False
            searchListboxName=   ""
            TabIndex        =   13
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   189
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   154
         End
         Begin mdLabel Label_eventAcountManager
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "Rectangle4"
            Italic          =   False
            Left            =   211
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
            TabIndex        =   27
            TabPanelIndex   =   2
            Text            =   "Acount Manager"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   190
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
      End
      Begin PushButton PushButton_EIPL_Details
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Details"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "mainWindow_PagePanel"
         Italic          =   False
         Left            =   99
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   0
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PagePanel PagePanel_EIPL
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   609
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "mainWindow_PagePanel"
         Left            =   4
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         PanelCount      =   2
         Panels          =   ""
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   3
         Top             =   23
         Value           =   0
         Visible         =   True
         Width           =   1174
         Begin Rectangle Rectangle_LineItemDetails
            AutoDeactivate  =   True
            BorderWidth     =   1
            BottomRightColor=   &cABABAB00
            Enabled         =   True
            FillColor       =   &cC7C7C700
            Height          =   118
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "PagePanel_EIPL"
            Left            =   10
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            Top             =   507
            TopLeftColor    =   &cABABAB00
            Visible         =   True
            Width           =   1161
            Begin mdTextField TextField_LineItems_QTY
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
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   747
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabIndex        =   7
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   516
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdLabel Label_lineItems_qty
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   695
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   13
               TabPanelIndex   =   1
               Text            =   "QTY"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   517
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   50
            End
            Begin mdLabel Label_lineItems_price
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   695
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   14
               TabPanelIndex   =   1
               Text            =   "Price"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   543
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   50
            End
            Begin mdLabel Label_lineItems_subcategory
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   394
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   15
               TabPanelIndex   =   1
               Text            =   "SubCategory"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   544
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   100
            End
            Begin mdTextField TextField_LineItems_SubCategory
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
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   506
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabIndex        =   5
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   543
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdTextField TextField_LineItems_Category
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
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   506
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabIndex        =   4
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   517
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdLabel Label_lineItems_department
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   116
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   17
               TabPanelIndex   =   1
               Text            =   "Department"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   595
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   86
            End
            Begin mdTextField TextField_LineItems_Department
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
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   205
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   594
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdLabel Label_lineItems_model
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   116
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   18
               TabPanelIndex   =   1
               Text            =   "Model"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   569
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   85
            End
            Begin mdTextField TextField_LineItems_Model
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
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   205
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabIndex        =   2
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   568
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdLabel Label_lineItems_manufacturer
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   116
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   19
               TabPanelIndex   =   1
               Text            =   "Manufacturer"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   543
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   88
            End
            Begin mdTextField TextField_LineItems_Manufacturer
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
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   205
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabIndex        =   1
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   542
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdLabel Label_lineItems_name
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   116
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   20
               TabPanelIndex   =   1
               Text            =   "Name"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   517
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   85
            End
            Begin mdTextField TextField_LineItems_Name
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
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   205
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabIndex        =   0
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   516
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdTextField TextField_LineItems_Rate
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
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   747
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   594
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdLabel Label_lineItems_rate
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   695
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   21
               TabPanelIndex   =   1
               Text            =   "Rate"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   595
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   50
            End
            Begin mdTextArea TextField_LineItems_Description
               AcceptTabs      =   False
               Alignment       =   0
               AutoDeactivate  =   True
               AutomaticallyCheckSpelling=   True
               BackColor       =   &cFFFFFF00
               Bold            =   False
               Border          =   True
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Format          =   ""
               Height          =   47
               HelpTag         =   ""
               HideSelection   =   True
               Index           =   -2147483648
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   506
               LimitText       =   0
               LineHeight      =   0.0
               LineSpacing     =   1.0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               Mask            =   ""
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   True
               parentSection   =   ""
               ReadOnly        =   False
               Scope           =   0
               ScrollbarHorizontal=   False
               ScrollbarVertical=   True
               Styled          =   True
               TabIndex        =   6
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   568
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdLabel Label_lineItems_description
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   394
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   22
               TabPanelIndex   =   1
               Text            =   "Description"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   569
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   100
            End
            Begin mdTextField TextField_LineItems_Time
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
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   747
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabIndex        =   9
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   569
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdLabel Label_lineItems_time
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   695
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   23
               TabPanelIndex   =   1
               Text            =   "Time"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   570
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   50
            End
            Begin mdLabel Label_lineItems_discount
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   936
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   24
               TabPanelIndex   =   1
               Text            =   "Discount"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   543
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   64
            End
            Begin mdLabel Label_lineItems_category
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   394
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   16
               TabPanelIndex   =   1
               Text            =   "Category"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   518
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   100
            End
            Begin mdTextField TextField_LineItems_Price
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
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   747
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabIndex        =   8
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   542
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin PushButton PushButton_newLineItem
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   "6"
               Cancel          =   False
               Caption         =   "New"
               Default         =   False
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   19
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   11
               TabPanelIndex   =   1
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   517
               Underline       =   False
               Visible         =   True
               Width           =   80
            End
            Begin PushButton PushButton_addToInventory
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   "6"
               Cancel          =   False
               Caption         =   "Save LI"
               Default         =   False
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_LineItemDetails"
               Italic          =   False
               Left            =   19
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   12
               TabPanelIndex   =   1
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   544
               Underline       =   False
               Visible         =   True
               Width           =   80
            End
         End
         Begin Rectangle Rectangle1
            AutoDeactivate  =   True
            BorderWidth     =   1
            BottomRightColor=   &cABABAB00
            Enabled         =   True
            FillColor       =   &cC7C7C700
            Height          =   312
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "PagePanel_EIPL"
            Left            =   15
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   21
            TabPanelIndex   =   2
            Top             =   33
            TopLeftColor    =   &cABABAB00
            Visible         =   True
            Width           =   406
            Begin PagePanel PagePanel_ConVen
               AutoDeactivate  =   True
               Enabled         =   True
               Height          =   278
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle1"
               Left            =   29
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               PanelCount      =   2
               Panels          =   ""
               Scope           =   0
               TabIndex        =   0
               TabPanelIndex   =   2
               Top             =   40
               Value           =   1
               Visible         =   True
               Width           =   378
               Begin mdLabel mdLabel_Contact_NameFirst
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   0
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   69
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_Contact_NameLast
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   1
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   94
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_Contact_jobTitle
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   2
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   115
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_Contact_Company
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   3
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   140
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_Contact_Email
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   168
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_Contact_Phone
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   5
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   193
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_EIPL_Contact_AddressLine1
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   6
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   217
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_EIPL_Contact_AddressLine2
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   7
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   242
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_Contact_City
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   8
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   263
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   105
               End
               Begin mdLabel mdLabel_Contact_Country
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   295
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_Contact_State
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   166
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
                  TabIndex        =   10
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   263
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   114
               End
               Begin mdLabel mdLabel_Contact_Zip
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   292
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
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   263
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   85
               End
               Begin mdLabel mdLabel_Venue_Name
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   0
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   69
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_Venue_Type
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   1
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   94
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_Venue_Company
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   2
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   115
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_Venue_Email
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   3
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   140
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_Venue_Phone
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   168
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_Venue_AddressLine1
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   6
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   200
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   328
               End
               Begin mdLabel mdLabel_Venue_AddressLine2
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   7
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   225
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   328
               End
               Begin mdLabel mdLabel_Venue_City
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   8
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   246
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   105
               End
               Begin mdLabel mdLabel_Venue_Country
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   278
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_Venue_State
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   166
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
                  TabIndex        =   10
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   246
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   114
               End
               Begin mdLabel mdLabel_Venue_Zip
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   292
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
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   246
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   85
               End
               Begin Label Label_VenueHeader
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   162
                  LockBottom      =   False
                  LockedInPosition=   False
                  LockLeft        =   True
                  LockRight       =   False
                  LockTop         =   True
                  Multiline       =   False
                  Scope           =   0
                  Selectable      =   False
                  TabIndex        =   12
                  TabPanelIndex   =   2
                  Text            =   "Venue"
                  TextAlign       =   1
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   46
                  Transparent     =   True
                  Underline       =   False
                  Visible         =   True
                  Width           =   100
               End
               Begin Label Label_ContactHeader
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_ConVen"
                  Italic          =   False
                  Left            =   159
                  LockBottom      =   False
                  LockedInPosition=   False
                  LockLeft        =   True
                  LockRight       =   False
                  LockTop         =   True
                  Multiline       =   False
                  Scope           =   0
                  Selectable      =   False
                  TabIndex        =   12
                  TabPanelIndex   =   1
                  Text            =   "Contact"
                  TextAlign       =   1
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   42
                  Transparent     =   True
                  Underline       =   False
                  Visible         =   True
                  Width           =   100
               End
            End
            Begin PushButton PushButton_SwitchConVen
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   "6"
               Cancel          =   True
               Caption         =   "Switch"
               Default         =   False
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle1"
               Italic          =   False
               Left            =   29
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   2
               TabIndex        =   1
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   317
               Underline       =   False
               Visible         =   True
               Width           =   80
            End
            Begin PushButton PushButton_Change
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   "6"
               Cancel          =   False
               Caption         =   "Change"
               Default         =   False
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle1"
               Italic          =   False
               Left            =   108
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   2
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   317
               Underline       =   False
               Visible         =   True
               Width           =   80
            End
         End
         Begin Rectangle Rectangle2
            AutoDeactivate  =   True
            BorderWidth     =   1
            BottomRightColor=   &cABABAB00
            Enabled         =   True
            FillColor       =   &cC7C7C700
            Height          =   312
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "PagePanel_EIPL"
            Left            =   420
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   22
            TabPanelIndex   =   2
            Top             =   33
            TopLeftColor    =   &cABABAB00
            Visible         =   True
            Width           =   268
            Begin mdTextField TextField_EIPL_DueDate
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
               InitialParent   =   "Rectangle2"
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
               parentSection   =   ""
               Password        =   False
               ReadOnly        =   False
               Scope           =   0
               searchField     =   False
               searchListboxName=   ""
               TabIndex        =   4
               TabPanelIndex   =   2
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   249
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   107
            End
            Begin Label Label_eiplDueDate
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle2"
               Italic          =   False
               Left            =   435
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   7
               TabPanelIndex   =   2
               Text            =   "Due Date"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   227
               Transparent     =   True
               Underline       =   False
               Visible         =   True
               Width           =   100
            End
            Begin mdTextField TextField_EIPL_ShippingMethod
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
               InitialParent   =   "Rectangle2"
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
               parentSection   =   ""
               Password        =   False
               ReadOnly        =   False
               Scope           =   0
               searchField     =   False
               searchListboxName=   ""
               TabIndex        =   3
               TabPanelIndex   =   2
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   193
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   107
            End
            Begin Label Label_eiplShippingMethod
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle2"
               Italic          =   False
               Left            =   435
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   8
               TabPanelIndex   =   2
               Text            =   "Shipping Method"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   171
               Transparent     =   True
               Underline       =   False
               Visible         =   True
               Width           =   100
            End
            Begin Label Label_eiplTaxRate
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle2"
               Italic          =   False
               Left            =   435
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   9
               TabPanelIndex   =   2
               Text            =   "Tax Rate"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   122
               Transparent     =   True
               Underline       =   False
               Visible         =   True
               Width           =   100
            End
            Begin mdTextField TextField_EIPL_TaxRate
               AcceptTabs      =   False
               Alignment       =   3
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
               InitialParent   =   "Rectangle2"
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
               parentSection   =   ""
               Password        =   False
               ReadOnly        =   False
               Scope           =   0
               searchField     =   False
               searchListboxName=   ""
               TabIndex        =   2
               TabPanelIndex   =   2
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   144
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   107
            End
            Begin mdTextField TextField_EIPL_DiscountPercent
               AcceptTabs      =   False
               Alignment       =   3
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
               InitialParent   =   "Rectangle2"
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
               parentSection   =   ""
               Password        =   False
               ReadOnly        =   False
               Scope           =   0
               searchField     =   False
               searchListboxName=   ""
               TabIndex        =   1
               TabPanelIndex   =   2
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   94
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   107
            End
            Begin Label Label_eiplDiscount
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle2"
               Italic          =   False
               Left            =   435
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   10
               TabPanelIndex   =   2
               Text            =   "Discount"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   46
               Transparent     =   True
               Underline       =   False
               Visible         =   True
               Width           =   100
            End
            Begin mdTextField TextField_EIPL_DiscountAmount
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
               InitialParent   =   "Rectangle2"
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
               parentSection   =   ""
               Password        =   False
               ReadOnly        =   False
               Scope           =   0
               searchField     =   False
               searchListboxName=   ""
               TabIndex        =   0
               TabPanelIndex   =   2
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   68
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   107
            End
            Begin mdComboBox ComboBox_EIPL_TypeSelector
               AutoComplete    =   False
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle2"
               InitialValue    =   ""
               Italic          =   False
               Left            =   435
               ListIndex       =   0
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdQueue         =   False
               mdTableName     =   ""
               parentSection   =   ""
               Scope           =   0
               TabIndex        =   6
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   283
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   107
            End
            Begin PushButton PushButton_chooseDueDate
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   "6"
               Cancel          =   True
               Caption         =   "Cal"
               Default         =   False
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle2"
               Italic          =   False
               Left            =   540
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   5
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   249
               Underline       =   False
               Visible         =   True
               Width           =   41
            End
         End
         Begin Rectangle Rectangle3
            AutoDeactivate  =   True
            BorderWidth     =   1
            BottomRightColor=   &cABABAB00
            Enabled         =   True
            FillColor       =   &cC7C7C700
            Height          =   278
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "PagePanel_EIPL"
            Left            =   15
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   23
            TabPanelIndex   =   2
            Top             =   344
            TopLeftColor    =   &cABABAB00
            Visible         =   True
            Width           =   673
            Begin mdListbox Listbox_EIPLDiscounts
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
               Height          =   217
               HelpTag         =   ""
               Hierarchical    =   False
               Index           =   -2147483648
               InitialParent   =   "Rectangle3"
               InitialValue    =   ""
               Italic          =   False
               Left            =   369
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
               TabIndex        =   2
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   373
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   299
               _ScrollOffset   =   0
               _ScrollWidth    =   -1
            End
            Begin Label EIPLDiscountsStatsLabel
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle3"
               Italic          =   False
               Left            =   449
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   3
               TabPanelIndex   =   2
               Text            =   "Discounts"
               TextAlign       =   1
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   351
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   131
            End
            Begin mdListbox Listbox_Payments
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
               HasHeading      =   True
               HeadingIndex    =   -1
               Height          =   217
               HelpTag         =   ""
               Hierarchical    =   False
               Index           =   -2147483648
               InitialParent   =   "Rectangle3"
               InitialValue    =   ""
               Italic          =   False
               Left            =   32
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
               TabIndex        =   1
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   373
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   299
               _ScrollOffset   =   0
               _ScrollWidth    =   -1
            End
            Begin Label Label_EIPL_Payments
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle3"
               Italic          =   False
               Left            =   69
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   4
               TabPanelIndex   =   2
               Text            =   "Payments"
               TextAlign       =   1
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   351
               Transparent     =   True
               Underline       =   False
               Visible         =   True
               Width           =   212
            End
            Begin PushButton PushButton_NewPayment
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   "6"
               Cancel          =   False
               Caption         =   "+"
               Default         =   False
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle3"
               Italic          =   False
               Left            =   32
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   0
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   589
               Underline       =   False
               Visible         =   True
               Width           =   33
            End
         End
         Begin Rectangle Rectangle5
            AutoDeactivate  =   True
            BorderWidth     =   1
            BottomRightColor=   &cABABAB00
            Enabled         =   True
            FillColor       =   &cC7C7C700
            Height          =   477
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "PagePanel_EIPL"
            Left            =   10
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   1
            Top             =   31
            TopLeftColor    =   &cABABAB00
            Visible         =   True
            Width           =   1161
            Begin mdTextField TextField_searchInventory
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
               InitialParent   =   "Rectangle5"
               Italic          =   False
               Left            =   26
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
               parentSection   =   ""
               Password        =   False
               ReadOnly        =   False
               Scope           =   0
               searchField     =   False
               searchListboxName=   ""
               TabIndex        =   0
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   41
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   222
            End
            Begin mdLabel Label_EIPL_Number
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle5"
               Italic          =   False
               Left            =   374
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
               TabPanelIndex   =   1
               Text            =   "eipl number"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   42
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   100
            End
            Begin PushButton PushButton_searchInventoryGo
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   "6"
               Cancel          =   False
               Caption         =   "OK"
               Default         =   False
               Enabled         =   True
               Height          =   22
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle5"
               Italic          =   False
               Left            =   248
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   1
               TabPanelIndex   =   1
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   41
               Underline       =   False
               Visible         =   True
               Width           =   33
            End
            Begin mdListbox Listbox_LineItems
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
               Height          =   419
               HelpTag         =   ""
               Hierarchical    =   True
               Index           =   -2147483648
               InitialParent   =   "Rectangle5"
               InitialValue    =   ""
               Italic          =   False
               Left            =   286
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
               TabIndex        =   5
               TabPanelIndex   =   1
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   62
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   869
               _ScrollOffset   =   0
               _ScrollWidth    =   -1
            End
            Begin Label Label_EIPLBalance
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle5"
               Italic          =   False
               Left            =   932
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   True
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   6
               TabPanelIndex   =   1
               Text            =   "Balance Due:"
               TextAlign       =   2
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   42
               Transparent     =   True
               Underline       =   False
               Visible         =   True
               Width           =   91
            End
            Begin mdLabel Label_EIPL_BalanceValue
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle5"
               Italic          =   False
               Left            =   1026
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   True
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   7
               TabPanelIndex   =   1
               Text            =   "Value"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   42
               Transparent     =   True
               Underline       =   False
               Visible         =   True
               Width           =   125
            End
            Begin Label Label_eipl_grandTotal_title
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle5"
               Italic          =   False
               Left            =   725
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   True
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   8
               TabPanelIndex   =   1
               Text            =   "Total:"
               TextAlign       =   2
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   42
               Transparent     =   True
               Underline       =   False
               Visible         =   True
               Width           =   65
            End
            Begin mdLabel Label_EIPL_GrandTotal
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle5"
               Italic          =   False
               Left            =   795
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
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
               TabPanelIndex   =   1
               Text            =   "Value"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   42
               Transparent     =   True
               Underline       =   False
               Visible         =   True
               Width           =   125
            End
            Begin mdLabel Label_EIPL_Type
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle5"
               Italic          =   False
               Left            =   289
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
               TabIndex        =   10
               TabPanelIndex   =   1
               Text            =   "Type"
               TextAlign       =   2
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   42
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   74
            End
            Begin Label Label_nmbrColon
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle5"
               Italic          =   False
               Left            =   320
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   11
               TabPanelIndex   =   1
               Text            =   ":"
               TextAlign       =   1
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   41
               Transparent     =   True
               Underline       =   False
               Visible         =   True
               Width           =   100
            End
            Begin ComboBox ComboBox_InventoryDepartmentFilter
               AutoComplete    =   False
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle5"
               InitialValue    =   "All"
               Italic          =   False
               Left            =   27
               ListIndex       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   2
               TabPanelIndex   =   1
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   480
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   254
            End
            Begin mdListbox Listbox_EIPL_Inventory
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
               HasHeading      =   True
               HeadingIndex    =   -1
               Height          =   419
               HelpTag         =   ""
               Hierarchical    =   False
               Index           =   -2147483648
               InitialParent   =   "Rectangle5"
               InitialValue    =   ""
               Italic          =   False
               Left            =   27
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
               TabIndex        =   3
               TabPanelIndex   =   1
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   62
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   255
               _ScrollOffset   =   0
               _ScrollWidth    =   -1
            End
         End
         Begin Rectangle Rectangle6
            AutoDeactivate  =   True
            BorderWidth     =   1
            BottomRightColor=   &cABABAB00
            Enabled         =   True
            FillColor       =   &cC7C7C700
            Height          =   589
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "PagePanel_EIPL"
            Left            =   687
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   24
            TabPanelIndex   =   2
            Top             =   33
            TopLeftColor    =   &cABABAB00
            Visible         =   True
            Width           =   481
         End
         Begin mdTextField TextField_LineItems_DiscountPerc
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
            InitialParent   =   "PagePanel_EIPL"
            Italic          =   False
            Left            =   998
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
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
            Width           =   153
         End
         Begin mdTextField TextField_LineItems_DiscountAmount
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
            InitialParent   =   "PagePanel_EIPL"
            Italic          =   False
            Left            =   998
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
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
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   530
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   153
         End
      End
      Begin PagePanel PagePanel_PL
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   608
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "mainWindow_PagePanel"
         Left            =   4
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         PanelCount      =   2
         Panels          =   ""
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   4
         Top             =   23
         Value           =   0
         Visible         =   True
         Width           =   1174
         Begin Rectangle Rectangle_PL_LineItemDetails
            AutoDeactivate  =   True
            BorderWidth     =   1
            BottomRightColor=   &cABABAB00
            Enabled         =   True
            FillColor       =   &cC7C7C700
            Height          =   118
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "PagePanel_PL"
            Left            =   10
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            Top             =   507
            TopLeftColor    =   &cABABAB00
            Visible         =   True
            Width           =   1161
            Begin mdTextField TextField_PL_LineItems_QTY
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
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   747
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabIndex        =   7
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   516
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdLabel Label_PL_lineItems_qty
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   695
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   11
               TabPanelIndex   =   1
               Text            =   "QTY"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   517
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   50
            End
            Begin mdLabel Label_PL_lineItems_subcategory
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   394
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   10
               TabPanelIndex   =   1
               Text            =   "SubCategory"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   544
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   100
            End
            Begin mdTextField TextField_PL_LineItems_SubCategory
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
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   506
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabIndex        =   5
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   543
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdTextField TextField_PL_LineItems_Category
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
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   506
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabIndex        =   4
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   517
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdLabel Label_PL_lineItems_department
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   116
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   12
               TabPanelIndex   =   1
               Text            =   "Department"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   595
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   86
            End
            Begin mdTextField TextField_PL_LineItems_Department
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
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   205
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   594
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdLabel Label_PL_lineItems_model
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   116
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   13
               TabPanelIndex   =   1
               Text            =   "Model"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   569
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   85
            End
            Begin mdTextField TextField_PL_LineItems_Model
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
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   205
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabIndex        =   2
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   568
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdLabel Label_PL_lineItems_manufacturer
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   116
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   14
               TabPanelIndex   =   1
               Text            =   "Manufacturer"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   543
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   88
            End
            Begin mdTextField TextField_PL_LineItems_Manufacturer
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
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   205
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabIndex        =   1
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   542
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdLabel Label_PL_lineItems_name
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   116
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   15
               TabPanelIndex   =   1
               Text            =   "Name"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   517
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   85
            End
            Begin mdTextField TextField_PL_LineItems_Name
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
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   205
               LimitText       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
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
               TabIndex        =   0
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   516
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdTextArea TextField_PL_LineItems_Description
               AcceptTabs      =   False
               Alignment       =   0
               AutoDeactivate  =   True
               AutomaticallyCheckSpelling=   True
               BackColor       =   &cFFFFFF00
               Bold            =   False
               Border          =   True
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Format          =   ""
               Height          =   47
               HelpTag         =   ""
               HideSelection   =   True
               Index           =   -2147483648
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   506
               LimitText       =   0
               LineHeight      =   0.0
               LineSpacing     =   1.0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               Mask            =   ""
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   True
               parentSection   =   ""
               ReadOnly        =   False
               Scope           =   0
               ScrollbarHorizontal=   False
               ScrollbarVertical=   True
               Styled          =   True
               TabIndex        =   6
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   568
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   177
            End
            Begin mdLabel Label_PL_lineItems_description
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   394
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   16
               TabPanelIndex   =   1
               Text            =   "Description"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   569
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   100
            End
            Begin mdLabel Label_PL_lineItems_category
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   False
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   394
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               mdFieldName     =   ""
               mdFormat        =   0
               mdpkFieldName   =   ""
               mdpkValue       =   ""
               mdTableName     =   ""
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   17
               TabPanelIndex   =   1
               Text            =   "Category"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   518
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   100
            End
            Begin PushButton PushButton_PL_newLineItem
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   "6"
               Cancel          =   False
               Caption         =   "New"
               Default         =   False
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   19
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   8
               TabPanelIndex   =   1
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   517
               Underline       =   False
               Visible         =   True
               Width           =   80
            End
            Begin PushButton PushButton_PL_addToInventory
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   "6"
               Cancel          =   False
               Caption         =   "Save LI"
               Default         =   False
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle_PL_LineItemDetails"
               Italic          =   False
               Left            =   19
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   9
               TabPanelIndex   =   1
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   544
               Underline       =   False
               Visible         =   True
               Width           =   80
            End
         End
         Begin Rectangle Rectangle7
            AutoDeactivate  =   True
            BorderWidth     =   1
            BottomRightColor=   &cABABAB00
            Enabled         =   True
            FillColor       =   &cC7C7C700
            Height          =   312
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "PagePanel_PL"
            Left            =   15
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   21
            TabPanelIndex   =   2
            Top             =   33
            TopLeftColor    =   &cABABAB00
            Visible         =   True
            Width           =   406
            Begin PagePanel PagePanel_PL_ConVen
               AutoDeactivate  =   True
               Enabled         =   True
               Height          =   278
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle7"
               Left            =   29
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               PanelCount      =   2
               Panels          =   ""
               Scope           =   0
               TabIndex        =   0
               TabPanelIndex   =   2
               Top             =   40
               Value           =   0
               Visible         =   True
               Width           =   378
               Begin mdLabel mdLabel_PL_Venue_AddressLine1
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   59
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
                  TabIndex        =   0
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   208
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   328
               End
               Begin mdLabel mdLabel_PL_Venue_AddressLine2
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   59
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
                  TabIndex        =   1
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   233
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   328
               End
               Begin mdLabel mdLabel_PL_Venue_City
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   59
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
                  TabIndex        =   2
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   254
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   105
               End
               Begin mdLabel mdLabel_PL_Venue_Company
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   59
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
                  TabIndex        =   3
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   123
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_PL_Venue_Country
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   59
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
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   286
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_PL_Venue_Email
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   59
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
                  TabIndex        =   5
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   148
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_PL_Venue_Name
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   59
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
                  TabIndex        =   6
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   77
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_PL_Venue_Phone
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   59
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
                  TabIndex        =   7
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   176
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_PL_Venue_State
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   176
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
                  TabIndex        =   8
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   254
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   114
               End
               Begin mdLabel mdLabel_PL_Venue_Type
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   59
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
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   102
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_PL_Venue_Zip
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   302
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
                  TabIndex        =   10
                  TabPanelIndex   =   2
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   254
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   85
               End
               Begin Label Label_PL_VenueHeader
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   168
                  LockBottom      =   False
                  LockedInPosition=   False
                  LockLeft        =   True
                  LockRight       =   False
                  LockTop         =   True
                  Multiline       =   False
                  Scope           =   0
                  Selectable      =   False
                  TabIndex        =   11
                  TabPanelIndex   =   2
                  Text            =   "Venue"
                  TextAlign       =   1
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   45
                  Transparent     =   True
                  Underline       =   False
                  Visible         =   True
                  Width           =   100
               End
               Begin Label Label_PL_ContactHeader
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   158
                  LockBottom      =   False
                  LockedInPosition=   False
                  LockLeft        =   True
                  LockRight       =   False
                  LockTop         =   True
                  Multiline       =   False
                  Scope           =   0
                  Selectable      =   False
                  TabIndex        =   0
                  TabPanelIndex   =   1
                  Text            =   "Contact"
                  TextAlign       =   1
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   42
                  Transparent     =   True
                  Underline       =   False
                  Visible         =   True
                  Width           =   100
               End
               Begin mdLabel mdLabel_PL_Contact_AddressLine1
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   1
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   207
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   328
               End
               Begin mdLabel mdLabel_PL_Contact_AddressLine2
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   2
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   232
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   328
               End
               Begin mdLabel mdLabel_PL_Contact_City
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   3
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   253
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   105
               End
               Begin mdLabel mdLabel_PL_Contact_Company
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   122
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_PL_Contact_Country
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   5
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   285
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_PL_Contact_Email
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   6
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   147
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_PL_Contact_NameFirst
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   7
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   58
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_PL_Contact_Phone
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   8
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   175
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_PL_Contact_State
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   166
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
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   253
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   114
               End
               Begin mdLabel mdLabel_PL_Contact_NameLast
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   49
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
                  TabIndex        =   10
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   83
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
               Begin mdLabel mdLabel_PL_Contact_Zip
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   292
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
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   253
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   85
               End
               Begin mdLabel mdLabel_PL_Contact_JobTitle
                  AutoDeactivate  =   True
                  Bold            =   False
                  DataField       =   ""
                  DataSource      =   ""
                  Enabled         =   True
                  Height          =   20
                  HelpTag         =   ""
                  Index           =   -2147483648
                  InitialParent   =   "PagePanel_PL_ConVen"
                  Italic          =   False
                  Left            =   50
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
                  TabIndex        =   12
                  TabPanelIndex   =   1
                  Text            =   "-"
                  TextAlign       =   0
                  TextColor       =   &c00000000
                  TextFont        =   "System"
                  TextSize        =   0.0
                  TextUnit        =   0
                  Top             =   105
                  Transparent     =   False
                  Underline       =   False
                  Visible         =   True
                  Width           =   221
               End
            End
         End
         Begin PushButton PushButton_SwitchConVen1
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "6"
            Cancel          =   True
            Caption         =   "Switch"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "PagePanel_PL"
            Italic          =   False
            Left            =   29
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   2
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   317
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin PushButton PushButton_PL_Change
            AutoDeactivate  =   True
            Bold            =   False
            ButtonStyle     =   "6"
            Cancel          =   False
            Caption         =   "Change"
            Default         =   False
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "PagePanel_PL"
            Italic          =   False
            Left            =   108
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   317
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin Rectangle Rectangle8
            AutoDeactivate  =   True
            BorderWidth     =   1
            BottomRightColor=   &cABABAB00
            Enabled         =   True
            FillColor       =   &cC7C7C700
            Height          =   312
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "PagePanel_PL"
            Left            =   420
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   22
            TabPanelIndex   =   2
            Top             =   33
            TopLeftColor    =   &cABABAB00
            Visible         =   True
            Width           =   268
            Begin Label Label_PL_TypeLabel
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle8"
               Italic          =   False
               Left            =   435
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   0
               TabPanelIndex   =   2
               Text            =   "Type"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   262
               Transparent     =   True
               Underline       =   False
               Visible         =   True
               Width           =   100
            End
         End
         Begin mdTextField TextField_PL_ShippingMethod
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
            InitialParent   =   "PagePanel_PL"
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
            parentSection   =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            searchField     =   False
            searchListboxName=   ""
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   193
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   107
         End
         Begin Label Label_PL_ShippingMethod
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "PagePanel_PL"
            Italic          =   False
            Left            =   435
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   2
            Text            =   "Shipping Method"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   171
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin mdComboBox ComboBox_PL_TypeSelector
            AutoComplete    =   False
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   False
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "PagePanel_PL"
            InitialValue    =   ""
            Italic          =   False
            Left            =   435
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            mdFieldName     =   ""
            mdFormat        =   0
            mdpkFieldName   =   ""
            mdpkValue       =   ""
            mdQueue         =   False
            mdTableName     =   ""
            parentSection   =   ""
            Scope           =   0
            TabIndex        =   9
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   283
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   107
         End
         Begin Rectangle Rectangle9
            AutoDeactivate  =   True
            BorderWidth     =   1
            BottomRightColor=   &cABABAB00
            Enabled         =   True
            FillColor       =   &cC7C7C700
            Height          =   278
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "PagePanel_PL"
            Left            =   15
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   23
            TabPanelIndex   =   2
            Top             =   344
            TopLeftColor    =   &cABABAB00
            Visible         =   True
            Width           =   673
         End
         Begin Rectangle Rectangle10
            AutoDeactivate  =   True
            BorderWidth     =   1
            BottomRightColor=   &cABABAB00
            Enabled         =   True
            FillColor       =   &cC7C7C700
            Height          =   477
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "PagePanel_PL"
            Left            =   10
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   14
            TabPanelIndex   =   1
            Top             =   31
            TopLeftColor    =   &cABABAB00
            Visible         =   True
            Width           =   1161
            Begin mdTextField TextField_PL_searchInventory
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
               InitialParent   =   "Rectangle10"
               Italic          =   False
               Left            =   26
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
               parentSection   =   ""
               Password        =   False
               ReadOnly        =   False
               Scope           =   0
               searchField     =   False
               searchListboxName=   ""
               TabIndex        =   0
               TabPanelIndex   =   1
               TabStop         =   True
               Text            =   ""
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   41
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   222
            End
            Begin PushButton PushButton_PL_searchInventoryGo
               AutoDeactivate  =   True
               Bold            =   False
               ButtonStyle     =   "6"
               Cancel          =   False
               Caption         =   "OK"
               Default         =   False
               Enabled         =   True
               Height          =   22
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle10"
               Italic          =   False
               Left            =   248
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   1
               TabPanelIndex   =   1
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   41
               Underline       =   False
               Visible         =   True
               Width           =   33
            End
            Begin mdListbox Listbox_PL_LineItems
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
               Height          =   419
               HelpTag         =   ""
               Hierarchical    =   True
               Index           =   -2147483648
               InitialParent   =   "Rectangle10"
               InitialValue    =   ""
               Italic          =   False
               Left            =   286
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
               TabIndex        =   4
               TabPanelIndex   =   1
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   62
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   869
               _ScrollOffset   =   0
               _ScrollWidth    =   -1
            End
            Begin mdLabel Label_PL_Type
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle10"
               Italic          =   False
               Left            =   289
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
               TabIndex        =   5
               TabPanelIndex   =   1
               Text            =   "Type"
               TextAlign       =   2
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   42
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   74
            End
            Begin ComboBox ComboBox_PL_InventoryDepartmentFilter
               AutoComplete    =   False
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle10"
               InitialValue    =   "All"
               Italic          =   False
               Left            =   27
               ListIndex       =   0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   False
               Scope           =   0
               TabIndex        =   2
               TabPanelIndex   =   1
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   480
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   254
            End
            Begin mdListbox Listbox_PL_Inventory
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
               HasHeading      =   True
               HeadingIndex    =   -1
               Height          =   419
               HelpTag         =   ""
               Hierarchical    =   False
               Index           =   -2147483648
               InitialParent   =   "Rectangle10"
               InitialValue    =   ""
               Italic          =   False
               Left            =   27
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
               TabIndex        =   3
               TabPanelIndex   =   1
               TabStop         =   True
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   62
               Underline       =   False
               UseFocusRing    =   True
               Visible         =   True
               Width           =   255
               _ScrollOffset   =   0
               _ScrollWidth    =   -1
            End
            Begin mdLabel Label_PL_Number
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "Rectangle10"
               Italic          =   False
               Left            =   392
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
               TabIndex        =   6
               TabPanelIndex   =   1
               Text            =   "pl number"
               TextAlign       =   0
               TextColor       =   &c00000000
               TextFont        =   "System"
               TextSize        =   0.0
               TextUnit        =   0
               Top             =   42
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   100
            End
         End
         Begin Rectangle Rectangle11
            AutoDeactivate  =   True
            BorderWidth     =   1
            BottomRightColor=   &cABABAB00
            Enabled         =   True
            FillColor       =   &cC7C7C700
            Height          =   589
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "PagePanel_PL"
            Left            =   687
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   24
            TabPanelIndex   =   2
            Top             =   33
            TopLeftColor    =   &cABABAB00
            Visible         =   True
            Width           =   481
         End
      End
      Begin PushButton PushButton_PL_Details
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Details"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "mainWindow_PagePanel"
         Italic          =   False
         Left            =   88
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   1
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton PushButton_EIPL_LineItems1
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Line Items"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "mainWindow_PagePanel"
         Italic          =   False
         Left            =   9
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   1
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin PushButton PushButton_PL_Print
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "Print"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "mainWindow_PagePanel"
         Italic          =   False
         Left            =   1114
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   1
         Underline       =   False
         Visible         =   True
         Width           =   57
      End
      Begin Label Label_PL_Title
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "mainWindow_PagePanel"
         Italic          =   False
         Left            =   382
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   4
         Text            =   "Event Name Here"
         TextAlign       =   1
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   18.0
         TextUnit        =   0
         Top             =   4
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   417
      End
      Begin Label Label_EIPL_Title
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "mainWindow_PagePanel"
         Italic          =   False
         Left            =   382
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   3
         Text            =   "Event Name Here"
         TextAlign       =   1
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   18.0
         TextUnit        =   0
         Top             =   4
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   417
      End
   End
   Begin myToolbar mainWindow_Toolbar
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
      Visible         =   True
   End
   Begin zPrefs zPrefsPrime
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin Otis.check_for_notifications check_for_notifications1
      Index           =   -2147483648
      LockedInPosition=   False
      Priority        =   5
      Scope           =   0
      StackSize       =   0
      TabPanelIndex   =   0
   End
   Begin Timer Timer_check_notifications
      Index           =   -2147483648
      LockedInPosition=   False
      Mode            =   2
      Period          =   1000
      Scope           =   0
      TabPanelIndex   =   0
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  me.Hide
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function DuplicateEIPL() As Boolean Handles DuplicateEIPL.Action
			
			makeNextEIPL( 0 )
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EIPLAdvanceEIPL() As Boolean Handles EIPLAdvanceEIPL.Action
			
			makeNextEIPL( 1 )
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EIPLNewEIPL() As Boolean Handles EIPLNewEIPL.Action
			
			newEIPL
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EventNewEvent() As Boolean Handles EventNewEvent.Action
			
			newEvent
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FilePrintPreview() As Boolean Handles FilePrintPreview.Action
			printEIPL
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileRefresh() As Boolean Handles FileRefresh.Action
			reloadFocusSection
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileRefreshAll() As Boolean Handles FileRefreshAll.Action
			reloadAll
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpAboutOtis() As Boolean Handles HelpAboutOtis.Action
			
			
			Window_About.myOpen
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function LineItemsDown() As Boolean Handles LineItemsDown.Action
			
			Listbox_LineItems.ListIndex = Listbox_LineItems.ListIndex + 1
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function LineItemsUp() As Boolean Handles LineItemsUp.Action
			
			Listbox_LineItems.ListIndex = Listbox_LineItems.ListIndex - 1
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function PaymentsNewPayment() As Boolean Handles PaymentsNewPayment.Action
			
			newPayment
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function WindowContacts() As Boolean Handles WindowContacts.Action
			dim w as New Window_Contact
			w.myOpen( 0 )
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function WindowInventory() As Boolean Handles WindowInventory.Action
			Window_Inventory.myOpen
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function WindowVenues() As Boolean Handles WindowVenues.Action
			dim w as new Window_Venue
			w.myOpen( 0 )
			
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub addLineItem()
		  dim theSQL as string
		  dim theRecordSet as RecordSet
		  dim theEIPLpkid as string
		  dim theLineItempkid as string
		  dim theRowTag as mdRowTag
		  
		  dim theListBoxIndex as integer
		  
		  // Grab Rowtag and Pull EIPL pkid
		  If ListBox_EIPL.ListIndex <> -1 Then
		    theRowTag = ListBox_EIPL.RowTag( ListBox_EIPL.ListIndex )
		    theEIPLpkid = theRowTag.pkid
		  End If
		  
		  If theEIPLpkid <> "" then
		    // Form sql string
		    theSQL = "INSERT INTO lineitems ( fkeipl ) VALUES ( '" + theEIPLpkid + "' ) RETURNING pkid ;"
		    
		    // Execute sql and put contents into record set
		    theRecordSet = otis.db.SQLSelect( theSQL )
		    if otis.db.Error then
		      logErrorMessage( 4, "LineItem", otis.db.ErrorMessage )
		    end if
		    
		    if theRecordSet.FieldCount <> 0 then
		      
		      // Extract line item pkid from theRecordSet
		      theLineItempkid = theRecordSet.Field( "pkid" ).StringValue.ToText
		      
		      // Reload Listbox Saving folder things
		      Listbox_LineItems.loadMe( true )
		      
		      // Select the previously added row
		      Listbox_LineItems.searchMePKID( theLineItempkid )
		      
		      TextField_LineItems_Name.SetFocus
		      
		    else
		      logErrorMessage( 4, "Database", "Line Item RecordSet Nil" )
		    end if
		    
		  else
		    logErrorMessage( 4, "Database", "No EIPL pkid found" )
		  end if
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function addLineItemtoInventory() As Boolean
		  dim SQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim EIPLpkid as string
		  dim theRecordSet as RecordSet
		  dim errorOccurred as Boolean
		  
		  
		  If Listbox_LineItems.ListIndex <> -1 Then
		    
		    EIPLpkid = Listbox_LineItems.pullPKID( Listbox_LineItems.ListIndex )
		    
		    
		    SQL = "Select * From lineitem_to_inventory( $1 );"
		    ps = otis.db.Prepare( SQL )
		    ps.Bind( 0, EIPLpkid )
		    theRecordSet = ps.SQLSelect
		    If otis.db.Error Then
		      logErrorMessage( 4, "DBase", "Could not add Line Item: Check error Log" )
		      logErrorMessage( 3, "DBase", "Could not add Line Item: Check error Log" + otis.db.ErrorMessage )
		      errorOccurred = True
		    End If
		    
		    
		    If theRecordSet.FieldCount > 0 Then
		      Return True
		      If errorOccurred Then
		        Return False
		      Elseif theRecordSet.FieldCount = 0 Then
		        Return False
		      End If
		    End If
		    
		    
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadDepartmentPopup()
		  dim theGroups() as string
		  dim theValue as string
		  
		  dim groupColumnNumber as integer = 1
		  
		  
		  // Gather all of the group names
		  For i1 as integer = 0 To Listbox_EIPL_Inventory.ListCount - 1
		    
		    theValue = Listbox_EIPL_Inventory.Cell( i1, groupColumnNumber )
		    
		    If theGroups.IndexOf( theValue ) = -1 Then
		      
		      theGroups.Append( theValue )
		      
		    End If
		    
		  Next
		  
		  // Put group names into the combobox
		  ComboBox_InventoryDepartmentFilter.AddRows( theGroups() )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadEIPL()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadEIPLListbox()
		  dim theRowTag as mdRowTag
		  dim thePKID as String
		  
		  
		  
		  
		  // Get the pkid
		  theRowTag = Listbox_Events.RowTag( Listbox_Events.ListIndex )
		  thePKID = theRowTag.pkid
		  
		  // Prepare other listboxes
		  ListBox_EIPL.mdfkValue = thePKID
		  
		  // Load the other listboxes
		  ListBox_EIPL.loadMe
		  
		  // Expand Folders
		  For i1 as integer = 0 To ListBox_EIPL.ListCount - 1
		    If ListBox_EIPL.RowIsFolder(i1) Then
		      ListBox_EIPL.Expanded(i1) = True 
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadEvent()
		  dim theRowTag as mdRowTag
		  dim thePKID as String
		  
		  
		  
		  If Listbox_Events.ListIndex <> -1 Then
		    // Get the pkid
		    theRowTag = Listbox_Events.RowTag( Listbox_Events.ListIndex )
		    thePKID = theRowTag.pkid
		    
		    // Prepare other listboxes
		    Listbox_EventContact.mdfkValue = thePKID
		    Listbox_EventVenue.mdfkValue = thePKID
		    
		    // Load the other listboxes
		    Listbox_EventContact.loadMe( true )
		    Listbox_EventVenue.loadMe( true )
		    
		    // Load EIPL List
		    loadEIPLListbox
		    
		    // Load all other controls
		    Listbox_Events.populateExtControls
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadInventory()
		  
		  Listbox_EIPL_Inventory.loadMe
		  
		  loadDepartmentPopup
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub makeNextEIPL(p_mode as integer)
		  dim theEIPLpkid as string
		  dim theSQL as string
		  dim theSQLReturn as RecordSet
		  dim theNewEIPLpkid as string
		  dim theRowTag as mdRowTag
		  dim ps as PostgreSQLPreparedStatement
		  
		  If MainWindow.ListBox_EIPL.ListIndex <> -1 Then
		    
		    // Grabbing the PKID
		    theRowTag = MainWindow.ListBox_EIPL.RowTag( MainWindow.ListBox_EIPL.ListIndex )
		    theEIPLpkid = theRowTag.pkid
		    
		    // Executing the script to duplicate eipls on the server
		    theSQL = "Select * From mknexteipl( $1, $2 ) ;"
		    ps = otis.db.Prepare( theSQL )
		    ps.Bind( 0, theEIPLpkid )
		    ps.Bind( 1, p_mode )
		    
		    otis.db.SQLExecute( "Start Transaction;" )
		    theSQLReturn = ps.SQLSelect
		    otis.db.SQLExecute( "End Transaction;" )
		    
		    If otis.db.Error Then
		      logErrorMessage( 4, "DBase", "Could not advance this eipl onward" )
		    End If
		    
		    // Grabbing the pkid of the new eipl
		    theNewEIPLpkid = theSQLReturn.Field( "mknexteipl" ).StringValue.ToText
		    
		    // Reload the EIPL ListBox
		    MainWindow.ListBox_EIPL.loadMe
		    MainWindow.ListBox_EIPL.searchMePKID( theNewEIPLpkid )
		    
		  Else
		    logErrorMessage( 2, "User", "Please select an EIPL First" )
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub myOpen()
		  
		  
		  // Set the Staring page panels
		  mainWindow_PagePanel.Value = 1
		  
		  // Prepare EIPL Controls
		  EIPL.controls_prepare
		  
		  // Center the Window
		  Left = (screen(0).Width - me.Width) / 2
		  Top = (screen(0).Height - me.Height) / 2
		  
		  //  EVENTS
		  
		  //  Listbox_Events
		  Listbox_Events.mdTableName = "events_"
		  Listbox_Events.mdHeaders() = Array( "Name" )
		  Listbox_Events.mdFieldNames() = Array( "name" )
		  Listbox_Events.mdpkFieldName = "pkid"
		  Listbox_Events.mdSortFields = Array( "name" )
		  Listbox_Events.mdColumnTypes() = Array( 0 )
		  Listbox_Events.mdFormats() = Array( 0 )
		  Listbox_Events.loadMe
		  
		  // TextField_Event_Name
		  TextField_Event_Name.mdTableName = "events_"
		  TextField_Event_Name.mdFieldName = "name"
		  TextField_Event_Name.mdFormat = 0
		  TextField_Event_Name.mdpkFieldName = "pkid"
		  
		  // TextField_Event_StartTime
		  TextField_Event_StartTime.mdTableName = "events_"
		  TextField_Event_StartTime.mdFieldName = "starttime_"
		  TextField_Event_StartTime.mdFormat = 11
		  TextField_Event_StartTime.mdpkFieldName = "pkid"
		  
		  // TextField_Event_StartDate
		  TextField_Event_StartDate.mdTableName = "events_"
		  TextField_Event_StartDate.mdFieldName = "startdate_"
		  TextField_Event_StartDate.mdFormat = 12
		  TextField_Event_StartDate.mdpkFieldName = "pkid"
		  
		  // TextField_Event_EndTime
		  TextField_Event_EndTime.mdTableName = "events_"
		  TextField_Event_EndTime.mdFieldName = "endtime_"
		  TextField_Event_EndTime.mdFormat = 11
		  TextField_Event_EndTime.mdpkFieldName = "pkid"
		  
		  // TextField_Event_EndDate
		  TextField_Event_EndDate.mdTableName = "events_"
		  TextField_Event_EndDate.mdFieldName = "enddate_"
		  TextField_Event_EndDate.mdFormat = 12
		  TextField_Event_EndDate.mdpkFieldName = "pkid"
		  
		  // TextField_Event_LoadInTime
		  TextField_Event_LoadInTime.mdTableName = "events_"
		  TextField_Event_LoadInTime.mdFieldName = "loadintime_"
		  TextField_Event_LoadInTime.mdFormat = 11
		  TextField_Event_LoadInTime.mdpkFieldName = "pkid"
		  
		  // TextField_Event_LoadInDate
		  TextField_Event_LoadInDate.mdTableName = "events_"
		  TextField_Event_LoadInDate.mdFieldName = "loadindate_"
		  TextField_Event_LoadInDate.mdFormat = 12
		  TextField_Event_LoadInDate.mdpkFieldName = "pkid"
		  
		  // TextField_Event_LoadOutTime
		  TextField_Event_LoadOutTime.mdTableName = "events_"
		  TextField_Event_LoadOutTime.mdFieldName = "loadouttime_"
		  TextField_Event_LoadOutTime.mdFormat = 11
		  TextField_Event_LoadOutTime.mdpkFieldName = "pkid"
		  
		  // TextField_Event_LoadOutDate
		  TextField_Event_LoadOutDate.mdTableName = "events_"
		  TextField_Event_LoadOutDate.mdFieldName = "loadoutdate_"
		  TextField_Event_LoadOutDate.mdFormat = 12
		  TextField_Event_LoadOutDate.mdpkFieldName = "pkid"
		  
		  // TextArea_Event_Details
		  TextArea_Event_Details.mdTableName = "events_"
		  TextArea_Event_Details.mdFieldName = "details"
		  TextArea_Event_Details.mdFormat = 0
		  TextArea_Event_Details.mdpkFieldName = "pkid"
		  
		  // TextField_Event_AcountManager
		  TextField_Event_AcountManager.mdTableName = "events_"
		  TextField_Event_AcountManager.mdFieldName = "acountmanager_"
		  TextField_Event_AcountManager.mdFormat = 0
		  TextField_Event_AcountManager.mdpkFieldName = "pkid"
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  // ========================
		  //  Contacts Event Filtered
		  
		  
		  //  Listbox_EventContact
		  Listbox_EventContact.mdTableName = "contact_venue_data, contacts"
		  Listbox_EventContact.mdHeaders() = Array ( "NameFirst", "NameLast", "Phone", "Primary" )
		  Listbox_EventContact.mdFieldNames() = Array ( "contacts.namefirst", "contacts.namelast", "contacts.phonemain", "contact_venue_data.primary_" )
		  Listbox_EventContact.mdpkFieldName = "pkid"
		  Listbox_EventContact.mdSortFields = Array( "namelast", "namefirst" )
		  Listbox_EventContact.mdColumnTypes() = Array ( 3, 0, 0, 2 )
		  Listbox_EventContact.mdFormats() = Array ( 0, 0, 0, 0 )
		  Listbox_EventContact.mdfkFieldName = "fkevents_"
		  Listbox_EventContact.mdfkActualRecordFieldName = "fkcontacts"
		  
		  
		  // =======================
		  //  Venues Event Filtered
		  
		  
		  //  Listbox_EventVenue
		  Listbox_EventVenue.mdTableName = "contact_venue_data, venues"
		  Listbox_EventVenue.mdHeaders() = Array ( "Name", "Phone", "Primary"  )
		  Listbox_EventVenue.mdFieldNames() = Array ( "venues.name", "venues.phonemain", "contact_venue_data.primary_" )
		  Listbox_EventVenue.mdpkFieldName = "pkid"
		  Listbox_EventVenue.mdSortFields = Array( "name" )
		  Listbox_EventVenue.mdColumnTypes() = Array ( 0, 0, 2 )
		  Listbox_EventVenue.mdFormats() = Array ( 0, 0, 0 )
		  Listbox_EventVenue.mdfkFieldName = "fkevents_"
		  Listbox_EventVenue.mdfkActualRecordFieldName = "fkvenues"
		  
		  
		  me.Show
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub newEIPL()
		  dim theEventpkid as string
		  dim theEIPLpkid as string
		  dim theSQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim theRecordSet as RecordSet
		  dim theRowTag as mdRowTag
		  
		  
		  
		  // Exiting if an event is not selected
		  If Listbox_Events.ListIndex = -1 Then
		    logErrorMessage( 2, "User", "Please select an event first" )
		    Return
		  End If
		  
		  // Grabbing the Event pkid
		  theRowTag = Listbox_Events.RowTag( Listbox_Events.ListIndex )
		  theEventpkid = theRowTag.pkid
		  
		  // Preparing SQL
		  theSQL = "INSERT INTO eipl ( fkevents_ ) VALUES ( $1 ) RETURNING pkid ;"
		  ps = otis.db.Prepare( theSQL )
		  ps.Bind( 0, theEventpkid )
		  
		  // Executing SQL
		  otis.db.SQLExecute( "Begin Transaction" )
		  theRecordSet = ps.SQLSelect
		  otis.db.SQLExecute( "End Transaction" )
		  
		  If theRecordSet.FieldCount > 0 then
		    theEIPLpkid = theRecordSet.Field( "pkid" ).StringValue
		  Else 
		    logErrorMessage( 4, "DBase", "No pkid returned from new EIPL sql execution" )
		    Return
		  End if
		  
		  // Load Eipl listbox and select eipl
		  ListBox_EIPL.loadMe
		  
		  ListBox_EIPL.searchMePKID( theEIPLpkid )
		  EIPL.controls_load( True )
		  
		  'mainWindow_PagePanel.Value = 2
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub newEvent()
		  dim theSQL as string
		  dim theRecordSet as RecordSet
		  dim ps as PostgreSQLPreparedStatement
		  dim thePKID as string
		  
		  
		  //  Create Event on server
		  theSQL = "Insert Into events_ Default Values Returning pkid;"
		  ps = otis.db.Prepare( theSQL )
		  theRecordSet = ps.SQLSelect
		  
		  // Extract pkid from record set
		  thePKID = theRecordSet.Field( "pkid" ).StringValue
		  
		  // Load the Listbox, and selecting event
		  Listbox_Events.loadMe
		  Listbox_Events.searchMePKID( thePKID )
		  
		  // Set Focus on the Name field
		  TextField_Event_Name.SetFocus
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub newPayment()
		  dim ps as PostgreSQLPreparedStatement
		  dim theEIPLpkid as string
		  dim theRecordSet as RecordSet
		  dim theRowTag as mdRowTag
		  dim thePaymentpkid as string
		  
		  
		  If ListBox_EIPL.ListIndex <> -1 Then
		    
		    // Grab the pkid
		    theRowTag = ListBox_EIPL.RowTag( ListBox_EIPL.ListIndex )
		    theEIPLpkid = theRowTag.pkid
		    
		  End If
		  
		  If theEIPLpkid <> "" Then
		    
		    // Preparing SQL
		    ps = otis.db.Prepare( "Select * From newpayment( $1 );" )
		    ps.Bind( 0, theEIPLpkid )
		    theRecordSet = ps.SQLSelect
		    
		    If otis.db.Error Then
		      logErrorMessage( 4, "DBase", otis.db.ErrorMessage )
		    End If
		    
		    // Extract the new payment pkid
		    thePaymentpkid = theRecordSet.Field( "newpayment" ).StringValue
		    
		    // Reload the payments listbox and select the new payment
		    Listbox_Payments.loadMe
		    Listbox_Payments.searchMePKID( thePaymentpkid )
		    
		  Else
		    logErrorMessage( 2, "User", "No EIPL selected. Please select EIPL before adding a payment" )
		  End if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub populateContactListbox()
		  dim theFilterText as text
		  dim theFilterColumns() as string
		  
		  //  Populating Contact Listbox
		  //edTableContacts.fkFilterValue = TextField_Event_PKID.Text.ToText
		  //edTableContacts.loadFromDB( 2, "" )
		  //edTableContacts.controlSet( "Listbox_EventContact", -2, theFilterText, theFilterColumns() )
		  
		  
		  //Listbox_EventContact.Refresh
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub populateVenueListbox()
		  dim theFilterText as text
		  dim theFilterColumns() as string
		  
		  //  Populating Contact Listbox
		  
		  
		  
		  Listbox_EventVenue.Refresh
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub printEIPL()
		  dim deagle as new printFormModule.drawEstimate
		  dim thePicture() as Picture
		  
		  Window_PrintPreview.p() = deagle.drawMe( true )
		  
		  Window_PrintPreview.pageDimensions() = deagle.pageDimentions()
		  
		  Window_PrintPreview.Height = deagle.pageDimentions(1) / deagle.masterMult + 40
		  Window_PrintPreview.Width = deagle.pageDimentions(0) / deagle.masterMult + 40
		  
		  Window_PrintPreview.index = 0
		  Window_PrintPreview.Canvas_preview.Backdrop = Window_PrintPreview.p(0)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub reloadAll()
		  
		  
		  Listbox_Events.loadMe( True )
		  loadEvent
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub reloadFocusSection()
		  
		  If Focus <> Nil Then
		    
		    If InStr( Focus.Name, "Event" ) <> 0 Then
		      Listbox_Events.loadMe( True )
		      loadEvent
		    ElseIf InStr( Focus.Name, "EIPL" ) <> 0 Then
		      EIPL.controls_load( True )
		    End If
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub searchListbox(pListboxName as text, pSearchColumn as integer, pSearchValue as Text)
		  dim theControlName as Text
		  dim theControl as Control
		  dim theColumn as integer
		  dim theSearch as Text
		  dim x1 as integer
		  
		  
		  theControlName = pListboxName
		  theColumn = pSearchColumn
		  theSearch = pSearchValue
		  
		  
		  // Put our control in a variable
		  x1 = findControlByName( theControlName )
		  theControl = me.Control( x1 )
		  
		  For i1 as integer = 0 to Listbox( theControl ).ListCount - 1
		    
		    If Instr( Listbox( theControl ).Cell( i1, theColumn ).ToText, theSearch ) > 0 Then
		      
		      Listbox( theControl ).ListIndex = i1
		      Listbox( theControl ).SetFocus
		      Return
		      
		    End If
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetControlColors()
		  'dim theControlIndex as integer
		  'dim theControl as control
		  
		  me.BackColor = ColorTron.GetColor( 0, "C0V4" )
		  
		  'For theControlIndex = 0 To me.ControlCount - 1
		  'theControl = me.Control( theControlIndex )
		  
		  'If theControl IsA TextField then
		  'TextField( theControl ).BackColor = ColorTron.GetColor( 0, "C0V3" )
		  'end if
		  
		  'if theControl IsA TextArea then
		  'TextArea( theControl ).BackColor = ColorTron.GetColor( 0, "C0V3" )
		  'end if
		  
		  'next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateLITotals()
		  dim theFilterText as text
		  dim theFilterColumns() as string
		  
		  dim theTableFieldArray() as string
		  redim theTableFieldArray(0)
		  theTableFieldArray(0) = "lineitems.total_"
		  
		  'edTableLineItems.loadFromDB( 3, "", theTableFieldArray() )
		  'edTableLineItems.controlSet( "Listbox_LineItems", -2, theFilterText, theFilterColumns() )
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		eventNameList() As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		lineItemsListboxRowColumn() As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PLlineItemsListboxRowColumn() As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events eventList_Listbox
	#tag Event
		Sub DoubleClick()
		  dim theListboxHeaders(), theListboxFields() as text
		  dim theTableNameKeyValue as text
		  dim theFilterText as text
		  dim theFilterColumns() as string
		  
		  // Get the Primary Key
		  theTableNameKeyValue = me.RowTag( me.ListIndex )
		  //  Set Event controls ( ControlName, Row, FilterText, FilterColumns() )  
		  //edTableEvents_.controlSet ( "Control", me.ListIndex, theFilterText, theFilterColumns() )
		  
		  //  EIPL
		  // Load the Data using the DB Table Info. 
		  //edTableEIPL_eventFiltered.loadFromDB( 0, "SELECT * FROM " + edTableEIPL_eventFiltered.tableName + " WHERE fkevents_ = '" + theTableNameKeyValue + "' ;" )
		  
		  // Populate the Data into the ListBox
		  //edTableEIPL_eventFiltered.controlSet( "Label_EIPLContact_City", -2,  theFilterText, theFilterColumns() )  // -2 = all records
		  
		  //  Change PagePanel
		  mainWindow_PagePanel.Value = 1
		  
		  populateContactListbox
		  populateVenueListbox
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  
		  
		  // controlsave( pControlName as text, pTableKeyValue as text, pControlValue as text, Optional pColumn as integer )
		  //edTableEvents_.controlSave( me.Name.ToText, str( me.RowTag(row) ).ToText, me.Cell(row, column).ToText, column )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_EIPL
	#tag Event
		Sub DoubleClick()
		  
		  EIPL.controls_load( True )
		  
		  //  Change Panel
		  'mainWindow_PagePanel.Value = 2
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  // Add some items
		  base.Append( new MenuItem( "Delete" ) )
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  if hitItem <> Nil then
		    if hitItem.Text = "Delete" then
		      me.deleteRow
		      
		      me.loadMe(true)
		      
		    end if
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub Change()
		  If me.ListIndex = -1 Then
		    Return
		  End If
		  
		  If Not me.RowIsFolder(me.ListIndex) Then
		    EIPL.controls_load( False )
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Events
	#tag Event
		Sub Change()
		  loadEvent
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  // Add some items
		  base.Append( new MenuItem( "Delete" ) )
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  if hitItem <> Nil then
		    if hitItem.Text = "Delete" then
		      me.deleteRow
		      
		      me.loadMe(true)
		      
		    end if
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_EIPL_LineItems
	#tag Event
		Sub Action()
		  PagePanel_EIPL.Value = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Print
	#tag Event
		Sub Action()
		  printEIPL
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_searchEventGo
	#tag Event
		Sub Action()
		  logErrorMessage( 2, "Test", "Searching" )
		  Listbox_Events.searchMe( TextField_searchEvents.Text )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_Event_Name
	#tag Event
		Sub Saved()
		  dim theRowTag as mdRowTag
		  dim thePKID as string
		  
		  
		  
		  
		  // We want to reload the event listbox so that the event name is correct again
		  
		  
		  // First save the pkid of the currently selected event
		  theRowTag = Listbox_Events.RowTag( Listbox_Events.ListIndex )
		  thePKID = theRowTag.pkid
		  
		  // Then load the event listbox
		  Listbox_Events.loadMe
		  
		  // Then search the listbox for the previously selected event and select it
		  Listbox_Events.searchMePKID( thePKID )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_EventVenue
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  // Add some items
		  base.Append( new MenuItem( "Delete" ) )
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  if hitItem <> Nil then
		    if hitItem.Text = "Delete" then
		      me.deleteRow
		      
		      me.loadMe(true)
		      
		    end if
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_EventContact
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  // Add some items
		  base.Append( new MenuItem( "Delete" ) )
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  if hitItem <> Nil then
		    if hitItem.Text = "Delete" then
		      me.deleteRow
		      
		      me.loadMe(true)
		      
		    end if
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_addContact
	#tag Event
		Sub Action()
		  
		  
		  dim m as new Window_Contact
		  
		  m.myOpen( 1 )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_addVenue
	#tag Event
		Sub Action()
		  
		  dim m as new Window_Venue
		  
		  m.myOpen( 1 )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_chooseLoadInDate
	#tag Event
		Sub Action()
		  dim theStartingDateSelection as new date
		  dim theReturnedDate as new date
		  dim calendar as new CalendarWindow
		  dim theX as integer
		  dim theY as integer
		  
		  theStartingDateSelection.SQLDateTime = formatMyValueDB( TextField_Event_LoadInDate.Text, TextField_Event_LoadInTime.Text, 13 )
		  
		  theX = me.Window.Left + me.Left
		  theY = me.Window.Top + me.Top
		  theReturnedDate.TotalSeconds = calendar.GetDate( theStartingDateSelection, theX, theY )
		  TextField_Event_LoadInDate.Text = theReturnedDate.ShortDate
		  TextField_Event_LoadInDate.SetFocus
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_chooseEventStartDate
	#tag Event
		Sub Action()
		  dim theStartingDateSelection as new date
		  dim theReturnedDate as new date
		  dim calendar as new CalendarWindow
		  dim theX as integer
		  dim theY as integer
		  
		  theStartingDateSelection.SQLDateTime = formatMyValueDB( TextField_Event_StartDate.Text, "", 13 )
		  
		  theX = me.Window.Left + me.Left
		  theY = me.Window.Top + me.Top
		  theReturnedDate.TotalSeconds = calendar.GetDate( theStartingDateSelection, theX, theY )
		  TextField_Event_StartDate.Text = theReturnedDate.ShortDate
		  TextField_Event_StartDate.SetFocus
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_chooseEventEndDate
	#tag Event
		Sub Action()
		  dim theStartingDateSelection as new date
		  dim theReturnedDate as new date
		  dim calendar as new CalendarWindow
		  dim theX as integer
		  dim theY as integer
		  
		  theStartingDateSelection.SQLDateTime = formatMyValueDB( TextField_Event_EndDate.Text, TextField_Event_EndTime.Text, 13 )
		  
		  theX = me.Window.Left + me.Left
		  theY = me.Window.Top + me.Top
		  theReturnedDate.TotalSeconds = calendar.GetDate( theStartingDateSelection, theX, theY )
		  TextField_Event_EndDate.Text = theReturnedDate.ShortDate
		  TextField_Event_EndDate.SetFocus
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_chooseLoadOutDate
	#tag Event
		Sub Action()
		  dim theStartingDateSelection as new date
		  dim theReturnedDate as new date
		  dim calendar as new CalendarWindow
		  dim theX as integer
		  dim theY as integer
		  
		  theStartingDateSelection.SQLDateTime = formatMyValueDB( TextField_Event_LoadOutDate.Text, TextField_Event_LoadOutTime.Text, 13 )
		  
		  theX = me.Window.Left + me.Left
		  theY = me.Window.Top + me.Top
		  theReturnedDate.TotalSeconds = calendar.GetDate( theStartingDateSelection, theX, theY )
		  TextField_Event_LoadOutDate.Text = theReturnedDate.ShortDate
		  TextField_Event_LoadOutDate.SetFocus
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_EIPL_Details
	#tag Event
		Sub Action()
		  PagePanel_EIPL.Value = 1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_newLineItem
	#tag Event
		Sub Action()
		  eipl.add_lineitem
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_addToInventory
	#tag Event
		Sub Action()
		  if addLineItemtoInventory then
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_SwitchConVen
	#tag Event
		Sub Action()
		  If PagePanel_ConVen.Value = 0 Then
		    PagePanel_ConVen.Value = 1
		  ElseIf PagePanel_ConVen.Value = 1 Then
		    PagePanel_ConVen.Value = 0
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Change
	#tag Event
		Sub Action()
		  
		  
		  
		  If PagePanel_ConVen.Value = 0 Then 'contact
		    
		    dim m as new Window_Contact
		    
		    m.myOpen( 2 )
		    
		  ElseIf PagePanel_ConVen.Value = 1 Then 'venue
		    
		    dim m as new Window_Venue
		    
		    m.myOpen( 2 )
		    
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ComboBox_EIPL_TypeSelector
	#tag Event
		Sub Change()
		  
		  //edTableEIPL_eventFiltered.controlSave(  "ComboBox_EIPL_TypeSelector", TextField_eipl_pkid.Text.ToText, me.Text.ToText )
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_chooseDueDate
	#tag Event
		Sub Action()
		  dim theStartingDateSelection as new date
		  dim theReturnedDate as new date
		  dim calendar as new CalendarWindow
		  dim theX as integer
		  dim theY as integer
		  
		  theStartingDateSelection.SQLDateTime = formatMyValueDB( TextField_EIPL_DueDate.Text, "", 12 ) + " 00:00:00"
		  
		  theX = me.Window.Left + me.Left
		  theY = me.Window.Top + me.Top
		  theReturnedDate.TotalSeconds = calendar.GetDate( theStartingDateSelection, theX, theY )
		  TextField_EIPL_DueDate.Text = theReturnedDate.ShortDate
		  TextField_EIPL_DueDate.SetFocus
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_EIPLDiscounts
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  if hitItem <> Nil then
		    if hitItem.Text = "Delete" then
		      me.deleteRow
		      
		      me.loadMe(true)
		      
		    end if
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  // Add some items
		  base.Append( new MenuItem( "Delete" ) )
		  
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_Payments
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  // Add some items
		  base.Append( new MenuItem( "Delete" ) )
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  if hitItem <> Nil then
		    if hitItem.Text = "Delete" then
		      me.deleteRow
		      
		      me.loadMe(true)
		      
		    end if
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_NewPayment
	#tag Event
		Sub Action()
		  newPayment
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_searchInventoryGo
	#tag Event
		Sub Action()
		  
		  
		  searchListbox( "Listbox_EIPL_Inventory", 0, TextField_searchInventory.Text.ToText )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_LineItems
	#tag Event
		Sub Change()
		  
		  
		  if me.ListIndex = -1 then return
		  
		  If me.RowIsFolder( me.ListIndex ) Then
		    
		  Else
		    
		    me.populateExtControls
		    TextField_LineItems_QTY.SetFocus
		    
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  // Add some items
		  base.Append( new MenuItem( "Delete" ) )
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  if hitItem <> Nil then
		    if hitItem.Text = "Delete" then
		      me.deleteRow
		      
		      me.loadMe(true)
		      
		    end if
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  dim theRow as integer
		  dim theColumn as integer
		  
		  theRow = lineItemsListboxRowColumn(0)
		  theColumn = lineItemsListboxRowColumn(1)
		  
		  Select Case theColumn
		  Case 0  'Name
		    TextField_LineItems_Name.SetFocus
		  Case 1  'Department
		    TextField_LineItems_Department.SetFocus
		  Case 2  'Time
		    TextField_LineItems_Time.SetFocus
		  Case 3  'Rate
		    TextField_LineItems_Rate.SetFocus
		  Case 4  'QTY
		    TextField_LineItems_QTY.SetFocus
		  Case 5  'Price
		    TextField_LineItems_Price.SetFocus
		    TextField_LineItems_Price.SelStart = 1
		  Case 6  'Disc$
		    TextField_LineItems_DiscountAmount.SetFocus
		    TextField_LineItems_DiscountAmount.SelStart = 1
		  Case 7  'Disc%
		    TextField_LineItems_DiscountPerc.SetFocus
		    dim x1 as integer = TextField_LineItems_DiscountPerc.SelLength
		    TextField_LineItems_DiscountPerc.SelLength = x1 - 1
		    
		    
		  End Select
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  lineItemsListboxRowColumn() = Array( row, column )
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		  
		  
		  me.ColumnWidths = "20% ,17% ,3% ,5% ,4% ,12% ,12% ,12% ,15% ,0%"
		  
		  Me.Width = Me.Width - 1
		  Me.Width = Me.Width + 1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ComboBox_InventoryDepartmentFilter
	#tag Event
		Sub TextChanged()
		  dim groupName as string
		  dim SQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim theRecordSet as RecordSet
		  dim theDataDict() as Dictionary
		  dim theFieldName as string
		  dim theFieldValue as Variant
		  
		  
		  
		  If me.Text = "All" Then
		    Listbox_EIPL_Inventory.loadMe( False )
		  Else
		    
		    // Grab the name of the group we want
		    groupName = me.Text
		    
		    // Prepare our SQL
		    SQL = "Select * From Inventory Where department = $1 ;"
		    ps = otis.db.Prepare( SQL )
		    ps.Bind( 0, groupName )
		    
		    // Execute 
		    theRecordSet = ps.SQLSelect
		    
		    dim x1 as integer
		    
		    // Clear the theDataDict
		    ReDim theDataDict( -1 )
		    
		    // Transfer all the records into our mdDataDict
		    While Not theRecordSet.EOF
		      
		      x1 = theDataDict.Ubound + 1
		      
		      // Redim the theDataDict array to include the new record
		      ReDim theDataDict( x1 )
		      theDataDict( x1 ) = new Dictionary
		      
		      // Loop through all of the fields in the RecordSet
		      For i1 as integer = 1 to theRecordSet.FieldCount
		        
		        // Get the fieldName and value
		        theFieldName = theRecordSet.IdxField( i1 ).Name
		        theFieldValue = theRecordSet.IdxField( i1 ).Value
		        
		        // Set the dictionary record value
		        theDataDict( x1 ).Value( theFieldName ) = theFieldValue
		        
		        
		      Next
		      
		      theRecordSet.MoveNext
		      
		    Wend
		    
		  End If
		  
		  If theDataDict.Ubound <> -1 Then
		    Listbox_EIPL_Inventory.loadMe( theDataDict )
		  Else
		    loadInventory
		  End If
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_EIPL_Inventory
	#tag Event
		Sub DoubleClick()
		  dim theControl as Control
		  dim theInventorypkid as string
		  dim theEIPLpkid as string
		  dim theRowTag as mdRowTag
		  dim theRecordSet as RecordSet
		  dim thePKID as string
		  
		  
		  
		  // Checking to make sure eipl and inventory items are selected
		  If me.ListIndex = -1 Or ListBox_EIPL.ListIndex = -1 Then
		    If me.ListIndex = -1 Then
		      logErrorMessage( 3, "DblClick_LB_Inven", "Could not get inventory pkid, no item selected 0005" )
		    End If
		    If ListBox_EIPL.ListIndex = -1 Then
		      logErrorMessage( 3, "DblClick_LB_Inven", "Could not get EIPL pkid, no EIPL selected 0006" )
		    End If
		    'sdoreturn
		    Return
		  End If 
		  
		  // Grabbing the Rowtag and extracting pkid Inventory
		  theRowTag = me.RowTag( me.ListIndex )
		  theInventorypkid = theRowTag.pkid
		  
		  // Grabbing the Rowtag and extracting pkid Inventory
		  theRowTag = ListBox_EIPL.RowTag( ListBox_EIPL.ListIndex )
		  theEIPLpkid = theRowTag.pkid
		  
		  // Executing the script on server
		  theRecordSet = otis.db.SQLSelect( "SELECT inventory_to_lineitem( '" + theInventorypkid + "', '" + theEIPLpkid + "' ) ;" )
		  If otis.db.error Then
		    logErrorMessage( 4, "DBase", otis.db.errormessage )
		  End If
		  
		  // Reload LineItems
		  Listbox_LineItems.loadMe( True )
		  
		  // Grab the returned pkid to select the line item
		  thepkid = theRecordSet.Field( "inventory_to_lineitem" ).StringValue.ToText
		  Listbox_LineItems.searchMePKID( thePKID )
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_PL_newLineItem
	#tag Event
		Sub Action()
		  
		  eipl.add_lineitem
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_PL_addToInventory
	#tag Event
		Sub Action()
		  if addLineItemtoInventory then
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_SwitchConVen1
	#tag Event
		Sub Action()
		  If PagePanel_PL_ConVen.Value = 0 Then
		    PagePanel_PL_ConVen.Value = 1
		  ElseIf PagePanel_PL_ConVen.Value = 1 Then
		    PagePanel_PL_ConVen.Value = 0
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_PL_Change
	#tag Event
		Sub Action()
		  
		  
		  
		  If PagePanel_PL_ConVen.Value = 0 Then 'contact
		    
		    dim m as new Window_Contact
		    
		    m.myOpen( 2 )
		    
		  ElseIf PagePanel_PL_ConVen.Value = 1 Then 'venue
		    
		    dim m as new Window_Venue
		    
		    m.myOpen( 2 )
		    
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ComboBox_PL_TypeSelector
	#tag Event
		Sub Change()
		  
		  //edTableEIPL_eventFiltered.controlSave(  "ComboBox_EIPL_TypeSelector", TextField_eipl_pkid.Text.ToText, me.Text.ToText )
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_PL_searchInventoryGo
	#tag Event
		Sub Action()
		  
		  
		  searchListbox( "Listbox_PL_Inventory", 0, TextField_PL_searchInventory.Text.ToText )
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_PL_LineItems
	#tag Event
		Sub Change()
		  
		  
		  if me.ListIndex = -1 then return
		  
		  If me.RowIsFolder( me.ListIndex ) Then
		    
		  Else
		    
		    me.populateExtControls
		    TextField_PL_LineItems_QTY.SetFocus
		    
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  // Add some items
		  base.Append( new MenuItem( "Delete" ) )
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  if hitItem <> Nil then
		    if hitItem.Text = "Delete" then
		      me.deleteRow
		      
		      me.loadMe(true)
		      
		    end if
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ComboBox_PL_InventoryDepartmentFilter
	#tag Event
		Sub TextChanged()
		  dim groupName as string
		  dim SQL as string
		  dim ps as PostgreSQLPreparedStatement
		  dim theRecordSet as RecordSet
		  dim theDataDict() as Dictionary
		  dim theFieldName as string
		  dim theFieldValue as Variant
		  
		  
		  
		  If me.Text = "All" Then
		    Listbox_PL_Inventory.loadMe( False )
		  Else
		    
		    // Grab the name of the group we want
		    groupName = me.Text
		    
		    // Prepare our SQL
		    SQL = "Select * From Inventory Where department = $1 ;"
		    ps = otis.db.Prepare( SQL )
		    ps.Bind( 0, groupName )
		    
		    // Execute 
		    theRecordSet = ps.SQLSelect
		    
		    dim x1 as integer
		    
		    // Clear the theDataDict
		    ReDim theDataDict( -1 )
		    
		    // Transfer all the records into our mdDataDict
		    While Not theRecordSet.EOF
		      
		      x1 = theDataDict.Ubound + 1
		      
		      // Redim the theDataDict array to include the new record
		      ReDim theDataDict( x1 )
		      theDataDict( x1 ) = new Dictionary
		      
		      // Loop through all of the fields in the RecordSet
		      For i1 as integer = 1 to theRecordSet.FieldCount
		        
		        // Get the fieldName and value
		        theFieldName = theRecordSet.IdxField( i1 ).Name
		        theFieldValue = theRecordSet.IdxField( i1 ).Value
		        
		        // Set the dictionary record value
		        theDataDict( x1 ).Value( theFieldName ) = theFieldValue
		        
		        
		      Next
		      
		      theRecordSet.MoveNext
		      
		    Wend
		    
		  End If
		  
		  If theDataDict.Ubound <> -1 Then
		    Listbox_PL_Inventory.loadMe( theDataDict )
		  Else
		    loadInventory
		  End If
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox_PL_Inventory
	#tag Event
		Sub DoubleClick()
		  dim theControl as Control
		  dim theInventorypkid as string
		  dim theEIPLpkid as string
		  dim theRowTag as mdRowTag
		  dim theRecordSet as RecordSet
		  dim thePKID as string
		  
		  
		  
		  // Checking to make sure eipl and inventory items are selected
		  If me.ListIndex = -1 Or ListBox_EIPL.ListIndex = -1 Then
		    If me.ListIndex = -1 Then
		      logErrorMessage( 3, "DblClick_LB_Inven", "Could not get inventory pkid, no item selected 0005" )
		    End If
		    If ListBox_EIPL.ListIndex = -1 Then
		      logErrorMessage( 3, "DblClick_LB_Inven", "Could not get EIPL pkid, no EIPL selected 0006" )
		    End If
		    'sdoreturn
		    Return
		  End If 
		  
		  // Grabbing the Rowtag and extracting pkid Inventory
		  theRowTag = me.RowTag( me.ListIndex )
		  theInventorypkid = theRowTag.pkid
		  
		  // Grabbing the Rowtag and extracting pkid EIPL
		  theRowTag = ListBox_EIPL.RowTag( ListBox_EIPL.ListIndex )
		  theEIPLpkid = theRowTag.pkid
		  
		  // Executing the script on server
		  theRecordSet = otis.db.SQLSelect( "SELECT inventory_to_lineitem( '" + theInventorypkid + "', '" + theEIPLpkid + "' ) ;" )
		  If otis.db.error Then
		    logErrorMessage( 4, "DBase", otis.db.errormessage )
		  End If
		  
		  // Reload LineItems
		  Listbox_PL_LineItems.loadMe( True )
		  
		  // Grab the returned pkid to select the line item
		  thepkid = theRecordSet.Field( "inventory_to_lineitem" ).StringValue.ToText
		  Listbox_PL_LineItems.searchMePKID( thePKID )
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_PL_Details
	#tag Event
		Sub Action()
		  PagePanel_PL.Value = 1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_EIPL_LineItems1
	#tag Event
		Sub Action()
		  PagePanel_PL.Value = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_PL_Print
	#tag Event
		Sub Action()
		  printEIPL
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events mainWindow_Toolbar
	#tag Event
		Sub Open()
		  
		  //  Buttons!
		  Dim eventDetailsButton As New ToolButton
		  Dim eiplButton as new toolbutton
		  
		  
		  eventDetailsButton.Caption = "Event Details"
		  eventDetailsButton.Name = "eventDetailsButton"
		  eventDetailsButton.Style = ToolButton.ToolStylePushButton
		  'eventListButton.Icon = 
		  
		  eiplButton.Caption = "EIPL"
		  eiplButton.Name = "eiplButton"
		  eiplButton.Style = ToolButton.ToolStylePushButton
		  
		  me.Append eventDetailsButton
		  me.Append eiplButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action(item As ToolItem)
		  Select Case Item.Name
		  Case "eventDetailsButton"
		    mainWindow_PagePanel.Value = 1
		  Case "eiplButton"
		    if ListBox_EIPL.ListIndex <> -1 then
		      EIPL.gui_changing
		    Else 
		      logErrorMessage( 2, "UserPrev", "Please Select an EIPL first" )
		      'app.msgboxalert( "Process Terminated", "Please Select an EIPL first", "Ok" )
		    end if
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer_check_notifications
	#tag Event
		Sub Action()
		  
		  If app.logged_in Then
		    otis.db.checkfornotifications
		  End If
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
