#tag Menu
Begin Menu MainMenuBar
   Begin MenuItem FileMenu
      SpecialMenu = 0
      Text = "&File"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem FileRefresh
         SpecialMenu = 0
         Text = "Refresh"
         Index = -2147483648
         ShortcutKey = "r"
         Shortcut = "Cmd+r"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileRefreshAll
         SpecialMenu = 0
         Text = "RefreshAll"
         Index = -2147483648
         ShortcutKey = "r"
         Shortcut = "Cmd+Shift+r"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FilePrintPreview
         SpecialMenu = 0
         Text = "Print Preview"
         Index = -2147483648
         ShortcutKey = "p"
         Shortcut = "Cmd+p"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator0
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin QuitMenuItem FileQuit
         SpecialMenu = 0
         Text = "#App.kFileQuit"
         Index = -2147483648
         ShortcutKey = "#App.kFileQuitShortcut"
         Shortcut = "#App.kFileQuitShortcut"
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem EditMenu
      SpecialMenu = 0
      Text = "&Edit"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem EditUndo
         SpecialMenu = 0
         Text = "&Undo"
         Index = -2147483648
         ShortcutKey = "Z"
         Shortcut = "Cmd+Z"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditSeparator1
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCut
         SpecialMenu = 0
         Text = "Cu&t"
         Index = -2147483648
         ShortcutKey = "X"
         Shortcut = "Cmd+X"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCopy
         SpecialMenu = 0
         Text = "&Copy"
         Index = -2147483648
         ShortcutKey = "C"
         Shortcut = "Cmd+C"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditPaste
         SpecialMenu = 0
         Text = "&Paste"
         Index = -2147483648
         ShortcutKey = "V"
         Shortcut = "Cmd+V"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditClear
         SpecialMenu = 0
         Text = "#App.kEditClear"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditSeparator2
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditSelectAll
         SpecialMenu = 0
         Text = "Select &All"
         Index = -2147483648
         ShortcutKey = "A"
         Shortcut = "Cmd+A"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem EventMenu
      SpecialMenu = 0
      Text = "Event"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem EventNewEvent
         SpecialMenu = 0
         Text = "New Event"
         Index = -2147483648
         ShortcutKey = "d"
         Shortcut = "Cmd+d"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem EIPLMenu
      SpecialMenu = 0
      Text = "EIPL"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem EIPLNewEIPL
         SpecialMenu = 0
         Text = "New EIPL"
         Index = -2147483648
         ShortcutKey = "e"
         Shortcut = "Cmd+e"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EIPLAdvanceEIPL
         SpecialMenu = 0
         Text = "Advance EIPL"
         Index = -2147483648
         ShortcutKey = "e"
         Shortcut = "Cmd+Shift+e"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem DuplicateEIPL
         SpecialMenu = 0
         Text = "Duplicate EIPL"
         Index = -2147483648
         ShortcutKey = "e"
         Shortcut = "Cmd+Option+e"
         MenuModifier = True
         MacOptionKey = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EIPLPayments
         SpecialMenu = 0
         Text = "Payments"
         Index = -2147483648
         AutoEnable = True
         SubMenu = True
         Visible = True
         Begin MenuItem PaymentsNewPayment
            SpecialMenu = 0
            Text = "New Payment"
            Index = -2147483648
            ShortcutKey = "p"
            Shortcut = "Cmd+p"
            MenuModifier = True
            AutoEnable = True
            Visible = True
         End
      End
      Begin MenuItem EIPLLineItems
         SpecialMenu = 0
         Text = "Line Items"
         Index = -2147483648
         AutoEnable = True
         SubMenu = True
         Visible = True
         Begin MenuItem LineItemsUp
            SpecialMenu = 0
            Text = "Up"
            Index = -2147483648
            ShortcutKey = "'"
            Shortcut = "Control+'"
            MacControlKey = True
            AutoEnable = True
            Visible = True
         End
         Begin MenuItem LineItemsDown
            SpecialMenu = 0
            Text = "Down"
            Index = -2147483648
            ShortcutKey = "/"
            Shortcut = "Control+/"
            MacControlKey = True
            AutoEnable = True
            Visible = True
         End
      End
   End
   Begin MenuItem InventoryMenu
      SpecialMenu = 0
      Text = "Inventory"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem NewInventoryItem
         SpecialMenu = 0
         Text = "New Item"
         Index = -2147483648
         ShortcutKey = "i"
         Shortcut = "Cmd+i"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem WindowMenu
      SpecialMenu = 0
      Text = "Window"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem WindowInventory
         SpecialMenu = 0
         Text = "Inventory"
         Index = -2147483648
         ShortcutKey = "i"
         Shortcut = "Control+i"
         MacControlKey = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem WindowContacts
         SpecialMenu = 0
         Text = "Contacts"
         Index = -2147483648
         ShortcutKey = "c"
         Shortcut = "Control+c"
         MacControlKey = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem WindowVenues
         SpecialMenu = 0
         Text = "Venues"
         Index = -2147483648
         ShortcutKey = "v"
         Shortcut = "Control+v"
         MacControlKey = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem HelpMenu
      SpecialMenu = 0
      Text = "Help"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem HelpAboutOtis
         SpecialMenu = 0
         Text = "About Otis"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
End
#tag EndMenu
