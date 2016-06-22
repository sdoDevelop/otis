#tag Module
Protected Module EIPL
	#tag Method, Flags = &h1
		Protected Sub controls_load(switch_window as Boolean)
		  dim theRowTag as mdRowTag
		  dim thePKID as String
		  dim s1 as string
		  dim r1 as RecordSet
		  
		  
		  If MainWindow.ListBox_EIPL.ListIndex = -1 Then
		    Return
		  End If
		  
		  initialize
		  
		  // Grabbing the pkid
		  theRowTag = MainWindow.ListBox_EIPL.RowTag( MainWindow.ListBox_EIPL.ListIndex )
		  thePKID = theRowTag.pkid
		  
		  // Populating external controls
		  MainWindow.ListBox_EIPL.populateExtControls
		  
		  If type = "Invoice" Or type = "Estimate" Then
		    
		    // Set Foreign Keys
		    MainWindow.Listbox_LineItems.mdfkValue = thePKID
		    MainWindow.Listbox_Payments.mdfkValue = thePKID
		    MainWindow.Listbox_EIPLDiscounts.mdfkValue = thePKID
		    
		    // Load Payments and Discounts
		    MainWindow.Listbox_Payments.mdfkValue = thePKID
		    MainWindow.Listbox_EIPLDiscounts.mdfkValue = thePKID
		    MainWindow.Listbox_Payments.loadMe( True )
		    MainWindow.Listbox_EIPLDiscounts.loadMe( True )
		    
		    If type = "Estimate" Then
		      
		      MainWindow.Label_EIPL_Payments.Visible = False
		      MainWindow.Listbox_Payments.Visible = False
		      MainWindow.PushButton_NewPayment.Visible = False
		      MainWindow.Label_eiplDueDate.Visible = False
		      MainWindow.TextField_EIPL_DueDate.Visible = False
		      MainWindow.PushButton_chooseDueDate.Visible = False
		      MainWindow.Label_EIPLBalance.Visible = False
		      MainWindow.Label_EIPL_BalanceValue.Visible = False
		      
		    ElseIf type = "Invoice" Then
		      
		      MainWindow.Label_EIPL_Payments.Visible = True
		      MainWindow.Listbox_Payments.Visible = True
		      MainWindow.PushButton_NewPayment.Visible = True
		      MainWindow.Label_eiplDueDate.Visible = True
		      MainWindow.TextField_EIPL_DueDate.Visible = True
		      MainWindow.PushButton_chooseDueDate.Visible = True
		      MainWindow.Label_EIPLBalance.Visible = True
		      MainWindow.Label_EIPL_BalanceValue.Visible = True
		      
		    End If
		    
		    // Populate Contact stuff
		    r1 = otis.db.SQLSelect( "Select fkcontacts From contact_venue_data Where fkeipl = '" + thePKID + "' And fkContacts <> '' ; " )
		    if otis.db.Error Then
		      logErrorMessage( 4, "DBase", otis.db.ErrorMessage )
		    end if
		    s1 = r1.Field( "fkcontacts" ).StringValue
		    loadAllFromDB( "contacts", s1 )
		    
		    // Populate Venue stuff
		    r1 = otis.db.SQLSelect( "Select fkvenues From contact_venue_data Where fkeipl = '" + thePKID + "' And fkVenues <> '' ; " )
		    if otis.db.Error Then
		      logErrorMessage( 4, "DBase", otis.db.ErrorMessage )
		    end if
		    s1 = r1.Field( "fkvenues" ).StringValue
		    loadAllFromDB( "venues", s1 )
		    
		    // Loading Lineitems
		    MainWindow.Listbox_LineItems.loadMe( True )
		    
		    // Loading Inventory
		    load_Inventory( True )
		    
		    
		  ElseIf type = "Pack List" Then
		    
		    // Set Foreign Keys
		    MainWindow.Listbox_PL_LineItems.mdfkValue = thePKID
		    
		    // Populate Contact stuff
		    r1 = otis.db.SQLSelect( "Select fkcontacts From contact_venue_data Where fkeipl = '" + thePKID + "' And fkContacts <> '' ; " )
		    if otis.db.Error Then
		      logErrorMessage( 4, "DBase", otis.db.ErrorMessage )
		    end if
		    s1 = r1.Field( "fkcontacts" ).StringValue
		    loadAllFromDB( "contacts", s1 )
		    
		    // Populate Venue stuff
		    r1 = otis.db.SQLSelect( "Select fkvenues From contact_venue_data Where fkeipl = '" + thePKID + "' And fkVenues <> '' ; " )
		    if otis.db.Error Then
		      logErrorMessage( 4, "DBase", otis.db.ErrorMessage )
		    end if
		    s1 = r1.Field( "fkvenues" ).StringValue
		    loadAllFromDB( "venues", s1 )
		    
		    // Loading Lineitems
		    MainWindow.Listbox_PL_LineItems.loadMe( True )
		    
		    // Loading Inventory
		    load_Inventory( True )
		    
		  End if
		  
		  If switch_window Then
		    gui_changing
		  End If
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub controls_prepare()
		  
		  If 1=1 Then
		    
		    // ========================
		    // Estimate and Invoice Page
		    
		    
		    // Search
		    MainWindow.TextField_searchInventory.searchField = True
		    MainWindow.TextField_searchInventory.searchListboxName = "Listbox_EIPL_Inventory"
		    
		    
		    // ========================
		    //  EIPL
		    
		    
		    //  Listbox_EIPL
		    MainWindow.ListBox_EIPL.mdTableName = "eipl"
		    MainWindow.ListBox_EIPL.mdHeaders() = Array( "EIPL", "Type" )
		    MainWindow.ListBox_EIPL.mdFieldNames() = Array ( "eipl_nmbr", "type_" )
		    MainWindow.ListBox_EIPL.mdpkFieldName = "pkid"
		    MainWindow.ListBox_EIPL.mdSortFields() = Array( "type_", "eipl_nmbr" )
		    MainWindow.ListBox_EIPL.mdColumnTypes() = Array( 0,0 )
		    MainWindow.ListBox_EIPL.mdFormats() = Array( 0,0 )
		    MainWindow.ListBox_EIPL.mdColumnWidths = "100%,0"
		    MainWindow.ListBox_EIPL.mdfkFieldName = "fkevents_"
		    
		    // Label_EIPL_Number
		    MainWindow.Label_EIPL_Number.mdTableName = "eipl"
		    MainWindow.Label_EIPL_Number.mdFieldName = "eipl_nmbr"
		    MainWindow.Label_EIPL_Number.mdFormat = 0
		    MainWindow.Label_EIPL_Number.mdpkFieldName = "pkid"
		    
		    // Label_EIPL_Type
		    MainWindow.Label_EIPL_Type.mdTableName = "eipl"
		    MainWindow.Label_EIPL_Type.mdFieldName = "type_"
		    MainWindow.Label_EIPL_Type.mdFormat = 0
		    MainWindow.Label_EIPL_Type.mdpkFieldName = "pkid"
		    
		    // ComboBox_EIPL_TypeSelector
		    MainWindow.ComboBox_EIPL_TypeSelector.mdTableName = "eipl"
		    MainWindow.ComboBox_EIPL_TypeSelector.mdFieldName = "type_"
		    MainWindow.ComboBox_EIPL_TypeSelector.mdFormat = 0
		    MainWindow.ComboBox_EIPL_TypeSelector.mdpkFieldName = "pkid"
		    MainWindow.ComboBox_EIPL_TypeSelector.parentSection = "ei"
		    MainWindow.ComboBox_EIPL_TypeSelector.AddRows Array( "Estimate", "Invoice", "Pack List" )
		    
		    // Label_EIPL_BalanceValue
		    MainWindow.Label_EIPL_BalanceValue.mdTableName = "eipl"
		    MainWindow.Label_EIPL_BalanceValue.mdFieldName = "balance_"
		    MainWindow.Label_EIPL_BalanceValue.mdFormat = 1
		    MainWindow.Label_EIPL_BalanceValue.mdpkFieldName = "pkid"
		    
		    // Label_EIPL_GrandTotal
		    MainWindow.Label_EIPL_GrandTotal.mdTableName = "eipl"
		    MainWindow.Label_EIPL_GrandTotal.mdFieldName = "grandtotal_"
		    MainWindow.Label_EIPL_GrandTotal.mdFormat = 1
		    MainWindow.Label_EIPL_GrandTotal.mdpkFieldName = "pkid"
		    
		    // MainWindow.TextField_EIPL_DiscountAmount
		    MainWindow.TextField_EIPL_DiscountAmount.mdTableName = "eipl"
		    MainWindow.TextField_EIPL_DiscountAmount.mdFieldName = "discountamount_"
		    MainWindow.TextField_EIPL_DiscountAmount.mdFormat = 1
		    MainWindow.TextField_EIPL_DiscountAmount.mdpkFieldName = "pkid"
		    MainWindow.TextField_EIPL_DiscountAmount.parentSection = "ei"
		    
		    // MainWindow.TextField_EIPL_DiscountPercent
		    MainWindow.TextField_EIPL_DiscountPercent.mdTableName = "eipl"
		    MainWindow.TextField_EIPL_DiscountPercent.mdFieldName = "discountperc_"
		    MainWindow.TextField_EIPL_DiscountPercent.mdFormat = 2
		    MainWindow.TextField_EIPL_DiscountPercent.mdpkFieldName = "pkid"
		    MainWindow.TextField_EIPL_DiscountPercent.parentSection = "ei"
		    
		    // MainWindow.TextField_EIPL_TaxRate
		    MainWindow.TextField_EIPL_TaxRate.mdTableName = "eipl"
		    MainWindow.TextField_EIPL_TaxRate.mdFieldName = "tax_"
		    MainWindow.TextField_EIPL_TaxRate.mdFormat = 2
		    MainWindow.TextField_EIPL_TaxRate.mdpkFieldName = "pkid"
		    MainWindow.TextField_EIPL_TaxRate.parentSection = "ei"
		    
		    // MainWindow.TextField_EIPL_ShippingMethod
		    MainWindow.TextField_EIPL_ShippingMethod.mdTableName = "eipl"
		    MainWindow.TextField_EIPL_ShippingMethod.mdFieldName = "shippingmethod_"
		    MainWindow.TextField_EIPL_ShippingMethod.mdFormat = 0
		    MainWindow.TextField_EIPL_ShippingMethod.mdpkFieldName = "pkid"
		    MainWindow.TextField_EIPL_ShippingMethod.parentSection = "ei"
		    
		    // MainWindow.TextField_EIPL_DueDate
		    MainWindow.TextField_EIPL_DueDate.mdTableName = "eipl"
		    MainWindow.TextField_EIPL_DueDate.mdFieldName = "duedate"
		    MainWindow.TextField_EIPL_DueDate.mdFormat = 12
		    MainWindow.TextField_EIPL_DueDate.mdpkFieldName = "pkid"
		    MainWindow.TextField_EIPL_DueDate.parentSection = "ei"
		    
		    
		    //  Line Items
		    
		    // Listbox_LineItems
		    MainWindow.Listbox_LineItems.mdTableName = "lineitems"
		    MainWindow.Listbox_LineItems.mdHeaders() = Array ( "Name", "Department", "Time", "Rate", "QTY", "Price", "DiscSum", "DiscPerc", "Total", "Notes"  )
		    MainWindow.Listbox_LineItems.mdFieldNames() = Array ( "name_", "department", "time_", "rate_", "quantity_", "price", "discountamount_", "discountperc_", "total_", "note_" )
		    MainWindow.Listbox_LineItems.mdpkFieldName = "pkid"
		    MainWindow.Listbox_LineItems.mdSortFields = Array( "department", "name_" )
		    MainWindow.Listbox_LineItems.mdColumnTypes() = Array ( 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 )
		    MainWindow.Listbox_LineItems.mdFormats() = Array ( 0, 0, 0, 0, 0, 1, 1 , 3, 1, 0 )
		    MainWindow.Listbox_LineItems.mdColumnWidths = "29% ,10% ,7% ,7% ,7% ,10% ,10% ,10% ,10% ,0%"
		    MainWindow.Listbox_LineItems.mdJustification = Array( 1,1,2,2,2,3,3,3,3,0)
		    MainWindow.Listbox_LineItems.mdfkFieldName = "fkeipl"
		    
		    // TextField_LineItems_Name
		    MainWindow.TextField_LineItems_Name.mdTableName = "lineitems"
		    MainWindow.TextField_LineItems_Name.mdFieldName = "name_"
		    MainWindow.TextField_LineItems_Name.mdFormat = 0
		    MainWindow.TextField_LineItems_Name.mdpkFieldName = "pkid"
		    MainWindow.TextField_LineItems_Name.parentSection = "ei"
		    
		    // TextField_LineItems_Manufacturer
		    MainWindow.TextField_LineItems_Manufacturer.mdTableName = "lineitems"
		    MainWindow.TextField_LineItems_Manufacturer.mdFieldName = "manufacturer"
		    MainWindow.TextField_LineItems_Manufacturer.mdFormat = 0
		    MainWindow.TextField_LineItems_Manufacturer.mdpkFieldName = "pkid"
		    MainWindow.TextField_LineItems_Manufacturer.parentSection = "ei"
		    
		    // TextField_LineItems_Model
		    MainWindow.TextField_LineItems_Model.mdTableName = "lineitems"
		    MainWindow.TextField_LineItems_Model.mdFieldName = "model"
		    MainWindow.TextField_LineItems_Model.mdFormat = 0
		    MainWindow.TextField_LineItems_Model.mdpkFieldName = "pkid"
		    MainWindow.TextField_LineItems_Model.parentSection = "ei"
		    
		    // TextField_LineItems_Department
		    MainWindow.TextField_LineItems_Department.mdTableName = "lineitems"
		    MainWindow.TextField_LineItems_Department.mdFieldName = "department"
		    MainWindow.TextField_LineItems_Department.mdFormat = 0
		    MainWindow.TextField_LineItems_Department.mdpkFieldName = "pkid"
		    MainWindow.TextField_LineItems_Department.parentSection = "ei"
		    
		    // TextField_LineItems_Category
		    MainWindow.TextField_LineItems_Category.mdTableName = "lineitems"
		    MainWindow.TextField_LineItems_Category.mdFieldName = "category"
		    MainWindow.TextField_LineItems_Category.mdFormat = 0
		    MainWindow.TextField_LineItems_Category.mdpkFieldName = "pkid"
		    MainWindow.TextField_LineItems_Category.parentSection = "ei"
		    
		    // TextField_LineItems_SubCategory
		    MainWindow.TextField_LineItems_SubCategory.mdTableName = "lineitems"
		    MainWindow.TextField_LineItems_SubCategory.mdFieldName = "subcategory"
		    MainWindow.TextField_LineItems_SubCategory.mdFormat = 0
		    MainWindow.TextField_LineItems_SubCategory.mdpkFieldName = "pkid"
		    MainWindow.TextField_LineItems_SubCategory.parentSection = "ei"
		    
		    // TextField_LineItems_Price
		    MainWindow.TextField_LineItems_Price.mdTableName = "lineitems"
		    MainWindow.TextField_LineItems_Price.mdFieldName = "price"
		    MainWindow.TextField_LineItems_Price.mdFormat = 1
		    MainWindow.TextField_LineItems_Price.mdpkFieldName = "pkid"
		    MainWindow.TextField_LineItems_Price.parentSection = "ei"
		    
		    // TextField_LineItems_Description
		    MainWindow.TextField_LineItems_Description.mdTableName = "lineitems"
		    MainWindow.TextField_LineItems_Description.mdFieldName = "note_"
		    MainWindow.TextField_LineItems_Description.mdFormat = 0
		    MainWindow.TextField_LineItems_Description.mdpkFieldName = "pkid"
		    MainWindow.TextField_LineItems_Description.parentSection = "ei"
		    
		    // TextField_LineItems_QTY
		    MainWindow.TextField_LineItems_QTY.mdTableName = "lineitems"
		    MainWindow.TextField_LineItems_QTY.mdFieldName = "quantity_"
		    MainWindow.TextField_LineItems_QTY.mdFormat = 0
		    MainWindow.TextField_LineItems_QTY.mdpkFieldName = "pkid"
		    MainWindow.TextField_LineItems_QTY.parentSection = "ei"
		    
		    // TextField_LineItems_Time
		    MainWindow.TextField_LineItems_Time.mdTableName = "lineitems"
		    MainWindow.TextField_LineItems_Time.mdFieldName = "time_"
		    MainWindow.TextField_LineItems_Time.mdFormat = 0
		    MainWindow.TextField_LineItems_Time.mdpkFieldName = "pkid"
		    MainWindow.TextField_LineItems_Time.parentSection = "ei"
		    
		    // TextField_LineItems_Rate
		    MainWindow.TextField_LineItems_Rate.mdTableName = "lineitems"
		    MainWindow.TextField_LineItems_Rate.mdFieldName = "rate_"
		    MainWindow.TextField_LineItems_Rate.mdFormat = 0
		    MainWindow.TextField_LineItems_Rate.mdpkFieldName = "pkid"
		    MainWindow.TextField_LineItems_Rate.parentSection = "ei"
		    
		    // TextField_LineItems_DiscountAmount
		    MainWindow.TextField_LineItems_DiscountAmount.mdTableName = "lineitems"
		    MainWindow.TextField_LineItems_DiscountAmount.mdFieldName = "discountamount_"
		    MainWindow.TextField_LineItems_DiscountAmount.mdFormat = 1
		    MainWindow.TextField_LineItems_DiscountAmount.mdpkFieldName ="pkid"
		    MainWindow.TextField_LineItems_DiscountAmount.parentSection = "ei"
		    
		    // TextField_LineItems_DiscountPerc
		    MainWindow.TextField_LineItems_DiscountPerc.mdTableName = "lineitems"
		    MainWindow.TextField_LineItems_DiscountPerc.mdFieldName = "discountperc_"
		    MainWindow.TextField_LineItems_DiscountPerc.mdFormat = 2
		    MainWindow.TextField_LineItems_DiscountPerc.mdpkFieldName ="pkid"
		    MainWindow.TextField_LineItems_DiscountPerc.parentSection = "ei"
		    
		    
		    // Inventory
		    
		    //  Listbox_EIPL_Inventory
		    MainWindow.Listbox_EIPL_Inventory.mdTableName = "inventory"
		    MainWindow.Listbox_EIPL_Inventory.mdHeaders() = Array( "Name", "Department" )
		    MainWindow.Listbox_EIPL_Inventory.mdFieldNames() = Array( "name_", "department" )
		    MainWindow.Listbox_EIPL_Inventory.mdpkFieldName = "pkid"
		    MainWindow.Listbox_EIPL_Inventory.mdSortFields = Array( "department", "name_" )
		    MainWindow.Listbox_EIPL_Inventory.mdColumnTypes() = Array( 0, 0 )
		    MainWindow.Listbox_EIPL_Inventory.mdFormats() = Array ( 0,0 )
		    MainWindow.Listbox_EIPL_Inventory.mdColumnWidths = "100%,0%"
		    
		    
		    // Payments
		    
		    //  Listbox_Payments
		    // Loading Inventory
		    MainWindow.Listbox_Payments.mdTableName = "payments_"
		    MainWindow.Listbox_Payments.mdHeaders() = Array( "Date", "Memo", "Type", "Amount" )
		    MainWindow.Listbox_Payments.mdFieldNames() = Array( "date_", "memo_", "paymenttype_", "amount_" )
		    MainWindow.Listbox_Payments.mdpkFieldName = "pkid"
		    MainWindow.Listbox_Payments.mdSortFields = Array( "date_" )
		    MainWindow.Listbox_Payments.mdColumnTypes() = Array( 3, 3, 3, 3 )
		    MainWindow.Listbox_Payments.mdFormats() = Array ( 12, 0, 0, 1  )
		    MainWindow.Listbox_Payments.mdfkFieldName = "fkeipl"
		    
		    
		    // EIPL Discounts
		    
		    //  Listbox_EIPLDiscounts
		    MainWindow.Listbox_EIPLDiscounts.mdTableName = "discounts_"
		    MainWindow.Listbox_EIPLDiscounts.mdHeaders() = Array( "Department", "Percent", "Amount" )
		    MainWindow.Listbox_EIPLDiscounts.mdFieldNames() = Array( "department_", "discountperc_", "discountamount_" )
		    MainWindow.Listbox_EIPLDiscounts.mdpkFieldName = "pkid"
		    MainWindow.Listbox_EIPLDiscounts.mdSortFields = Array( "department_" )
		    MainWindow.Listbox_EIPLDiscounts.mdColumnTypes() = Array( 3, 3, 3 )
		    MainWindow.Listbox_EIPLDiscounts.mdFormats() = Array ( 0, 2, 1  )
		    MainWindow.Listbox_EIPLDiscounts.mdfkFieldName = "fkeipl"
		    
		    
		    //  EIPL Contact
		    
		    if 1=1 Then
		      // MainWindow.mdLabel_Contact_NameFirst
		      MainWindow.mdLabel_Contact_NameFirst.mdTableName = "contacts"
		      MainWindow.mdLabel_Contact_NameFirst.mdFieldName = "namefirst"
		      MainWindow.mdLabel_Contact_NameFirst.mdFormat = 0
		      MainWindow.mdLabel_Contact_NameFirst.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Contact_NameLast
		      MainWindow.mdLabel_Contact_NameLast.mdTableName = "contacts"
		      MainWindow.mdLabel_Contact_NameLast.mdFieldName = "namelast"
		      MainWindow.mdLabel_Contact_NameLast.mdFormat = 0
		      MainWindow.mdLabel_Contact_NameLast.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Contact_jobTitle
		      MainWindow.mdLabel_Contact_jobTitle.mdTableName = "contacts"
		      MainWindow.mdLabel_Contact_jobTitle.mdFieldName = "jobtitle"
		      MainWindow.mdLabel_Contact_jobTitle.mdFormat = 0
		      MainWindow.mdLabel_Contact_jobTitle.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Contact_Company
		      MainWindow.mdLabel_Contact_Company.mdTableName = "contacts"
		      MainWindow.mdLabel_Contact_Company.mdFieldName = "company"
		      MainWindow.mdLabel_Contact_Company.mdFormat = 0
		      MainWindow.mdLabel_Contact_Company.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Contact_Email
		      MainWindow.mdLabel_Contact_Email.mdTableName = "contacts"
		      MainWindow.mdLabel_Contact_Email.mdFieldName = "email"
		      MainWindow.mdLabel_Contact_Email.mdFormat = 0
		      MainWindow.mdLabel_Contact_Email.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Contact_Phone
		      MainWindow.mdLabel_Contact_Phone.mdTableName = "contacts"
		      MainWindow.mdLabel_Contact_Phone.mdFieldName = "phonemain"
		      MainWindow.mdLabel_Contact_Phone.mdFormat = 0
		      MainWindow.mdLabel_Contact_Phone.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_EIPL_Contact_AddressLine1
		      MainWindow.mdLabel_EIPL_Contact_AddressLine1.mdTableName = "contacts"
		      MainWindow.mdLabel_EIPL_Contact_AddressLine1.mdFieldName = "addressline1"
		      MainWindow.mdLabel_EIPL_Contact_AddressLine1.mdFormat = 0
		      MainWindow.mdLabel_EIPL_Contact_AddressLine1.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_EIPL_Contact_AddressLine2
		      MainWindow.mdLabel_EIPL_Contact_AddressLine2.mdTableName = "contacts"
		      MainWindow.mdLabel_EIPL_Contact_AddressLine2.mdFieldName = "addressline2"
		      MainWindow.mdLabel_EIPL_Contact_AddressLine2.mdFormat = 0
		      MainWindow.mdLabel_EIPL_Contact_AddressLine2.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Contact_City
		      MainWindow.mdLabel_Contact_City.mdTableName = "contacts"
		      MainWindow.mdLabel_Contact_City.mdFieldName = "addresscity"
		      MainWindow.mdLabel_Contact_City.mdFormat = 0
		      MainWindow.mdLabel_Contact_City.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Contact_State
		      MainWindow.mdLabel_Contact_State.mdTableName = "contacts"
		      MainWindow.mdLabel_Contact_State.mdFieldName = "addressstate"
		      MainWindow.mdLabel_Contact_State.mdFormat = 0
		      MainWindow.mdLabel_Contact_State.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Contact_Zip
		      MainWindow.mdLabel_Contact_Zip.mdTableName = "contacts"
		      MainWindow.mdLabel_Contact_Zip.mdFieldName = "addresszip"
		      MainWindow.mdLabel_Contact_Zip.mdFormat = 0
		      MainWindow.mdLabel_Contact_Zip.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Contact_Country
		      MainWindow.mdLabel_Contact_Country.mdTableName = "contacts"
		      MainWindow.mdLabel_Contact_Country.mdFieldName = "addresscountry"
		      MainWindow.mdLabel_Contact_Country.mdFormat = 0
		      MainWindow.mdLabel_Contact_Country.mdpkFieldName = "pkid"
		      
		    end if
		    
		    
		    //  EIPL Venue
		    
		    if 1=1 Then
		      // MainWindow.mdLabel_Venue_Name
		      MainWindow.mdLabel_Venue_Name.mdTableName = "venues"
		      MainWindow.mdLabel_Venue_Name.mdFieldName = "name"
		      MainWindow.mdLabel_Venue_Name.mdFormat = 0
		      MainWindow.mdLabel_Venue_Name.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Venue_Type
		      MainWindow.mdLabel_Venue_Type.mdTableName = "venues"
		      MainWindow.mdLabel_Venue_Type.mdFieldName = "type"
		      MainWindow.mdLabel_Venue_Type.mdFormat = 0
		      MainWindow.mdLabel_Venue_Type.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Venue_Company
		      MainWindow.mdLabel_Venue_Company.mdTableName = "venues"
		      MainWindow.mdLabel_Venue_Company.mdFieldName = "company"
		      MainWindow.mdLabel_Venue_Company.mdFormat = 0
		      MainWindow.mdLabel_Venue_Company.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Venue_Email
		      MainWindow.mdLabel_Venue_Email.mdTableName = "venues"
		      MainWindow.mdLabel_Venue_Email.mdFieldName = "email"
		      MainWindow.mdLabel_Venue_Email.mdFormat = 0
		      MainWindow.mdLabel_Venue_Email.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Venue_Phone
		      MainWindow.mdLabel_Venue_Phone.mdTableName = "venues"
		      MainWindow.mdLabel_Venue_Phone.mdFieldName = "phonemain"
		      MainWindow.mdLabel_Venue_Phone.mdFormat = 0
		      MainWindow.mdLabel_Venue_Phone.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Venue_addressline1
		      MainWindow.mdLabel_Venue_addressline1.mdTableName = "venues"
		      MainWindow.mdLabel_Venue_addressline1.mdFieldName = "addressline1"
		      MainWindow.mdLabel_Venue_addressline1.mdFormat = 0
		      MainWindow.mdLabel_Venue_addressline1.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Venue_addressline2
		      MainWindow.mdLabel_Venue_addressline2.mdTableName = "venues"
		      MainWindow.mdLabel_Venue_addressline2.mdFieldName = "addressline2"
		      MainWindow.mdLabel_Venue_addressline2.mdFormat = 0
		      MainWindow.mdLabel_Venue_addressline2.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Venue_City
		      MainWindow.mdLabel_Venue_City.mdTableName = "venues"
		      MainWindow.mdLabel_Venue_City.mdFieldName = "addresscity"
		      MainWindow.mdLabel_Venue_City.mdFormat = 0
		      MainWindow.mdLabel_Venue_City.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Venue_State
		      MainWindow.mdLabel_Venue_State.mdTableName = "venues"
		      MainWindow.mdLabel_Venue_State.mdFieldName = "addressstate"
		      MainWindow.mdLabel_Venue_State.mdFormat = 0
		      MainWindow.mdLabel_Venue_State.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Venue_Zip
		      MainWindow.mdLabel_Venue_Zip.mdTableName = "venues"
		      MainWindow.mdLabel_Venue_Zip.mdFieldName = "addresszip"
		      MainWindow.mdLabel_Venue_Zip.mdFormat = 0
		      MainWindow.mdLabel_Venue_Zip.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_Venue_Country
		      MainWindow.mdLabel_Venue_Country.mdTableName = "venues"
		      MainWindow.mdLabel_Venue_Country.mdFieldName = "addresscountry"
		      MainWindow.mdLabel_Venue_Country.mdFormat = 0
		      MainWindow.mdLabel_Venue_Country.mdpkFieldName = "pkid"
		      
		    end if
		    
		    
		  End If
		  
		  If 1 = 1 Then
		    
		    // ========================
		    // PackList Page
		    
		    MainWindow.TextField_PL_searchInventory.searchField = True
		    MainWindow.TextField_PL_searchInventory.searchListboxName = "Listbox_PL_Inventory"
		    
		    // ========================
		    //  EIPL
		    
		    
		    //  Listbox_EIPL
		    MainWindow.Listbox_PL_Inventory.mdTableName = "eipl"
		    MainWindow.Listbox_PL_Inventory.mdHeaders() = Array( "EIPL", "Type" )
		    MainWindow.Listbox_PL_Inventory.mdFieldNames() = Array ( "eipl_nmbr", "type_" )
		    MainWindow.Listbox_PL_Inventory.mdpkFieldName = "pkid"
		    MainWindow.Listbox_PL_Inventory.mdSortFields() = Array( "type_", "eipl_nmbr" )
		    MainWindow.Listbox_PL_Inventory.mdColumnTypes() = Array( 0,0 )
		    MainWindow.Listbox_PL_Inventory.mdFormats() = Array( 0,0 )
		    MainWindow.Listbox_PL_Inventory.mdColumnWidths = "100%,0"
		    MainWindow.Listbox_PL_Inventory.mdfkFieldName = "fkevents_"
		    
		    // Label_EIPL_Number
		    MainWindow.Label_PL_Number.mdTableName = "eipl"
		    MainWindow.Label_PL_Number.mdFieldName = "eipl_nmbr"
		    MainWindow.Label_PL_Number.mdFormat = 0
		    MainWindow.Label_PL_Number.mdpkFieldName = "pkid"
		    
		    // Label_EIPL_Type
		    MainWindow.Label_PL_Type.mdTableName = "eipl"
		    MainWindow.Label_PL_Type.mdFieldName = "type_"
		    MainWindow.Label_PL_Type.mdFormat = 0
		    MainWindow.Label_PL_Type.mdpkFieldName = "pkid"
		    
		    // ComboBox_EIPL_TypeSelector
		    MainWindow.ComboBox_PL_TypeSelector.mdTableName = "eipl"
		    MainWindow.ComboBox_PL_TypeSelector.mdFieldName = "type_"
		    MainWindow.ComboBox_PL_TypeSelector.mdFormat = 0
		    MainWindow.ComboBox_PL_TypeSelector.mdpkFieldName = "pkid"
		    MainWindow.ComboBox_PL_TypeSelector.parentSection = "pl"
		    MainWindow.ComboBox_PL_TypeSelector.AddRows Array( "Estimate", "Invoice", "Pack List" )
		    
		    // MainWindow.TextField_PL_ShippingMethod
		    MainWindow.TextField_PL_ShippingMethod.mdTableName = "eipl"
		    MainWindow.TextField_PL_ShippingMethod.mdFieldName = "shippingmethod_"
		    MainWindow.TextField_PL_ShippingMethod.mdFormat = 0
		    MainWindow.TextField_PL_ShippingMethod.mdpkFieldName = "pkid"
		    MainWindow.TextField_PL_ShippingMethod.parentSection = "pl"
		    
		    
		    // Line Items
		    
		    // Listbox_LineItems
		    MainWindow.Listbox_PL_LineItems.mdTableName = "lineitems"
		    MainWindow.Listbox_PL_LineItems.mdHeaders() = Array ( "QTY", "Name", "Department", "Notes"  )
		    MainWindow.Listbox_PL_LineItems.mdFieldNames() = Array ( "quantity_", "name_", "department", "note_" )
		    MainWindow.Listbox_PL_LineItems.mdpkFieldName = "pkid"
		    MainWindow.Listbox_PL_LineItems.mdSortFields = Array( "department", "name_" )
		    MainWindow.Listbox_PL_LineItems.mdColumnTypes() = Array ( 0,0,0,0 )
		    MainWindow.Listbox_PL_LineItems.mdFormats() = Array ( 0,0,0,0 )
		    MainWindow.Listbox_PL_LineItems.mdColumnWidths = "10%,30%,30%,30%"
		    MainWindow.Listbox_PL_LineItems.mdJustification = Array( 1,0,0,0)
		    MainWindow.Listbox_PL_LineItems.mdfkFieldName = "fkeipl"
		    
		    // TextField_LineItems_Name
		    MainWindow.TextField_PL_LineItems_Name.mdTableName = "lineitems"
		    MainWindow.TextField_PL_LineItems_Name.mdFieldName = "name_"
		    MainWindow.TextField_PL_LineItems_Name.mdFormat = 0
		    MainWindow.TextField_PL_LineItems_Name.mdpkFieldName = "pkid"
		    MainWindow.TextField_PL_LineItems_Name.parentSection = "pl"
		    
		    // TextField_LineItems_Manufacturer
		    MainWindow.TextField_PL_LineItems_Manufacturer.mdTableName = "lineitems"
		    MainWindow.TextField_PL_LineItems_Manufacturer.mdFieldName = "manufacturer"
		    MainWindow.TextField_PL_LineItems_Manufacturer.mdFormat = 0
		    MainWindow.TextField_PL_LineItems_Manufacturer.mdpkFieldName = "pkid"
		    MainWindow.TextField_PL_LineItems_Manufacturer.parentSection = "pl"
		    
		    // TextField_LineItems_Model
		    MainWindow.TextField_PL_LineItems_Model.mdTableName = "lineitems"
		    MainWindow.TextField_PL_LineItems_Model.mdFieldName = "model"
		    MainWindow.TextField_PL_LineItems_Model.mdFormat = 0
		    MainWindow.TextField_PL_LineItems_Model.mdpkFieldName = "pkid"
		    MainWindow.TextField_PL_LineItems_Model.parentSection = "pl"
		    
		    // TextField_LineItems_Department
		    MainWindow.TextField_PL_LineItems_Department.mdTableName = "lineitems"
		    MainWindow.TextField_PL_LineItems_Department.mdFieldName = "department"
		    MainWindow.TextField_PL_LineItems_Department.mdFormat = 0
		    MainWindow.TextField_PL_LineItems_Department.mdpkFieldName = "pkid"
		    MainWindow.TextField_PL_LineItems_Department.parentSection = "pl"
		    
		    // TextField_LineItems_Category
		    MainWindow.TextField_PL_LineItems_Category.mdTableName = "lineitems"
		    MainWindow.TextField_PL_LineItems_Category.mdFieldName = "category"
		    MainWindow.TextField_PL_LineItems_Category.mdFormat = 0
		    MainWindow.TextField_PL_LineItems_Category.mdpkFieldName = "pkid"
		    MainWindow.TextField_PL_LineItems_Category.parentSection = "pl"
		    
		    // TextField_LineItems_SubCategory
		    MainWindow.TextField_PL_LineItems_SubCategory.mdTableName = "lineitems"
		    MainWindow.TextField_PL_LineItems_SubCategory.mdFieldName = "subcategory"
		    MainWindow.TextField_PL_LineItems_SubCategory.mdFormat = 0
		    MainWindow.TextField_PL_LineItems_SubCategory.mdpkFieldName = "pkid"
		    MainWindow.TextField_PL_LineItems_SubCategory.parentSection = "pl"
		    
		    // TextField_LineItems_Description
		    MainWindow.TextField_PL_LineItems_Description.mdTableName = "lineitems"
		    MainWindow.TextField_PL_LineItems_Description.mdFieldName = "note_"
		    MainWindow.TextField_PL_LineItems_Description.mdFormat = 0
		    MainWindow.TextField_PL_LineItems_Description.mdpkFieldName = "pkid"
		    MainWindow.TextField_PL_LineItems_Description.parentSection = "pl"
		    
		    // TextField_LineItems_QTY
		    MainWindow.TextField_PL_LineItems_QTY.mdTableName = "lineitems"
		    MainWindow.TextField_PL_LineItems_QTY.mdFieldName = "quantity_"
		    MainWindow.TextField_PL_LineItems_QTY.mdFormat = 0
		    MainWindow.TextField_PL_LineItems_QTY.mdpkFieldName = "pkid"
		    MainWindow.TextField_PL_LineItems_QTY.parentSection = "pl"
		    
		    
		    // Inventory
		    
		    //  Listbox_EIPL_Inventory
		    MainWindow.Listbox_PL_Inventory.mdTableName = "inventory"
		    MainWindow.Listbox_PL_Inventory.mdHeaders() = Array( "Name", "Department" )
		    MainWindow.Listbox_PL_Inventory.mdFieldNames() = Array( "name_", "department" )
		    MainWindow.Listbox_PL_Inventory.mdpkFieldName = "pkid"
		    MainWindow.Listbox_PL_Inventory.mdSortFields = Array( "department", "name_" )
		    MainWindow.Listbox_PL_Inventory.mdColumnTypes() = Array( 0, 0 )
		    MainWindow.Listbox_PL_Inventory.mdFormats() = Array ( 0,0 )
		    MainWindow.Listbox_PL_Inventory.mdColumnWidths = "100%,0%"
		    
		    
		    //  EIPL Contact
		    
		    if 1=1 Then
		      // MainWindow.mdLabel_PL_Contact_NameFirst
		      MainWindow.mdLabel_PL_Contact_NameFirst.mdTableName = "contacts"
		      MainWindow.mdLabel_PL_Contact_NameFirst.mdFieldName = "namefirst"
		      MainWindow.mdLabel_PL_Contact_NameFirst.mdFormat = 0
		      MainWindow.mdLabel_PL_Contact_NameFirst.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Contact_NameLast
		      MainWindow.mdLabel_PL_Contact_NameLast.mdTableName = "contacts"
		      MainWindow.mdLabel_PL_Contact_NameLast.mdFieldName = "namelast"
		      MainWindow.mdLabel_PL_Contact_NameLast.mdFormat = 0
		      MainWindow.mdLabel_PL_Contact_NameLast.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Contact_jobTitle
		      MainWindow.mdLabel_PL_Contact_jobTitle.mdTableName = "contacts"
		      MainWindow.mdLabel_PL_Contact_jobTitle.mdFieldName = "jobtitle"
		      MainWindow.mdLabel_PL_Contact_jobTitle.mdFormat = 0
		      MainWindow.mdLabel_PL_Contact_jobTitle.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Contact_Company
		      MainWindow.mdLabel_PL_Contact_Company.mdTableName = "contacts"
		      MainWindow.mdLabel_PL_Contact_Company.mdFieldName = "company"
		      MainWindow.mdLabel_PL_Contact_Company.mdFormat = 0
		      MainWindow.mdLabel_PL_Contact_Company.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Contact_Email
		      MainWindow.mdLabel_PL_Contact_Email.mdTableName = "contacts"
		      MainWindow.mdLabel_PL_Contact_Email.mdFieldName = "email"
		      MainWindow.mdLabel_PL_Contact_Email.mdFormat = 0
		      MainWindow.mdLabel_PL_Contact_Email.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Contact_Phone
		      MainWindow.mdLabel_PL_Contact_Phone.mdTableName = "contacts"
		      MainWindow.mdLabel_PL_Contact_Phone.mdFieldName = "phonemain"
		      MainWindow.mdLabel_PL_Contact_Phone.mdFormat = 0
		      MainWindow.mdLabel_PL_Contact_Phone.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_EIPL_Contact_AddressLine1
		      MainWindow.mdLabel_PL_Contact_AddressLine1.mdTableName = "contacts"
		      MainWindow.mdLabel_PL_Contact_AddressLine1.mdFieldName = "addressline1"
		      MainWindow.mdLabel_PL_Contact_AddressLine1.mdFormat = 0
		      MainWindow.mdLabel_PL_Contact_AddressLine1.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_EIPL_Contact_AddressLine2
		      MainWindow.mdLabel_PL_Contact_AddressLine2.mdTableName = "contacts"
		      MainWindow.mdLabel_PL_Contact_AddressLine2.mdFieldName = "addressline2"
		      MainWindow.mdLabel_PL_Contact_AddressLine2.mdFormat = 0
		      MainWindow.mdLabel_PL_Contact_AddressLine2.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Contact_City
		      MainWindow.mdLabel_PL_Contact_City.mdTableName = "contacts"
		      MainWindow.mdLabel_PL_Contact_City.mdFieldName = "addresscity"
		      MainWindow.mdLabel_PL_Contact_City.mdFormat = 0
		      MainWindow.mdLabel_PL_Contact_City.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Contact_State
		      MainWindow.mdLabel_PL_Contact_State.mdTableName = "contacts"
		      MainWindow.mdLabel_PL_Contact_State.mdFieldName = "addressstate"
		      MainWindow.mdLabel_PL_Contact_State.mdFormat = 0
		      MainWindow.mdLabel_PL_Contact_State.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Contact_Zip
		      MainWindow.mdLabel_PL_Contact_Zip.mdTableName = "contacts"
		      MainWindow.mdLabel_PL_Contact_Zip.mdFieldName = "addresszip"
		      MainWindow.mdLabel_PL_Contact_Zip.mdFormat = 0
		      MainWindow.mdLabel_PL_Contact_Zip.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Contact_Country
		      MainWindow.mdLabel_PL_Contact_Country.mdTableName = "contacts"
		      MainWindow.mdLabel_PL_Contact_Country.mdFieldName = "addresscountry"
		      MainWindow.mdLabel_PL_Contact_Country.mdFormat = 0
		      MainWindow.mdLabel_PL_Contact_Country.mdpkFieldName = "pkid"
		      
		    end if
		    
		    
		    //  EIPL Venue
		    
		    if 1=1 Then
		      // MainWindow.mdLabel_PL_Venue_Name
		      MainWindow.mdLabel_PL_Venue_Name.mdTableName = "venues"
		      MainWindow.mdLabel_PL_Venue_Name.mdFieldName = "name"
		      MainWindow.mdLabel_PL_Venue_Name.mdFormat = 0
		      MainWindow.mdLabel_PL_Venue_Name.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Venue_Type
		      MainWindow.mdLabel_PL_Venue_Type.mdTableName = "venues"
		      MainWindow.mdLabel_PL_Venue_Type.mdFieldName = "type"
		      MainWindow.mdLabel_PL_Venue_Type.mdFormat = 0
		      MainWindow.mdLabel_PL_Venue_Type.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Venue_Company
		      MainWindow.mdLabel_PL_Venue_Company.mdTableName = "venues"
		      MainWindow.mdLabel_PL_Venue_Company.mdFieldName = "company"
		      MainWindow.mdLabel_PL_Venue_Company.mdFormat = 0
		      MainWindow.mdLabel_PL_Venue_Company.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Venue_Email
		      MainWindow.mdLabel_PL_Venue_Email.mdTableName = "venues"
		      MainWindow.mdLabel_PL_Venue_Email.mdFieldName = "email"
		      MainWindow.mdLabel_PL_Venue_Email.mdFormat = 0
		      MainWindow.mdLabel_PL_Venue_Email.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Venue_Phone
		      MainWindow.mdLabel_PL_Venue_Phone.mdTableName = "venues"
		      MainWindow.mdLabel_PL_Venue_Phone.mdFieldName = "phonemain"
		      MainWindow.mdLabel_PL_Venue_Phone.mdFormat = 0
		      MainWindow.mdLabel_PL_Venue_Phone.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Venue_addressline1
		      MainWindow.mdLabel_PL_Venue_addressline1.mdTableName = "venues"
		      MainWindow.mdLabel_PL_Venue_addressline1.mdFieldName = "addressline1"
		      MainWindow.mdLabel_PL_Venue_addressline1.mdFormat = 0
		      MainWindow.mdLabel_PL_Venue_addressline1.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Venue_addressline2
		      MainWindow.mdLabel_PL_Venue_addressline2.mdTableName = "venues"
		      MainWindow.mdLabel_PL_Venue_addressline2.mdFieldName = "addressline2"
		      MainWindow.mdLabel_PL_Venue_addressline2.mdFormat = 0
		      MainWindow.mdLabel_PL_Venue_addressline2.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Venue_City
		      MainWindow.mdLabel_PL_Venue_City.mdTableName = "venues"
		      MainWindow.mdLabel_PL_Venue_City.mdFieldName = "addresscity"
		      MainWindow.mdLabel_PL_Venue_City.mdFormat = 0
		      MainWindow.mdLabel_PL_Venue_City.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Venue_State
		      MainWindow.mdLabel_PL_Venue_State.mdTableName = "venues"
		      MainWindow.mdLabel_PL_Venue_State.mdFieldName = "addressstate"
		      MainWindow.mdLabel_PL_Venue_State.mdFormat = 0
		      MainWindow.mdLabel_PL_Venue_State.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Venue_Zip
		      MainWindow.mdLabel_PL_Venue_Zip.mdTableName = "venues"
		      MainWindow.mdLabel_PL_Venue_Zip.mdFieldName = "addresszip"
		      MainWindow.mdLabel_PL_Venue_Zip.mdFormat = 0
		      MainWindow.mdLabel_PL_Venue_Zip.mdpkFieldName = "pkid"
		      
		      // MainWindow.mdLabel_PL_Venue_Country
		      MainWindow.mdLabel_PL_Venue_Country.mdTableName = "venues"
		      MainWindow.mdLabel_PL_Venue_Country.mdFieldName = "addresscountry"
		      MainWindow.mdLabel_PL_Venue_Country.mdFormat = 0
		      MainWindow.mdLabel_PL_Venue_Country.mdpkFieldName = "pkid"
		      
		    end if
		    
		    
		    
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub gui_changing()
		  
		  
		  
		  If type = "Estimate" Or type = "Invoice" Then
		    
		    MainWindow.mainWindow_PagePanel.Value = 2
		    MainWindow.PagePanel_EIPL.Value = 0
		    
		  ElseIf type = "Pack List" Then
		    
		    MainWindow.mainWindow_PagePanel.Value = 3
		    MainWindow.PagePanel_PL.Value = 0
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub initialize()
		  dim theControl as Control
		  dim thePKID as string
		  dim theRowTag as mdRowTag
		  dim n1,n2,n3,n4 as Integer
		  
		  
		  theRowTag = MainWindow.ListBox_EIPL.RowTag( MainWindow.ListBox_EIPL.ListIndex )
		  thePKID = theRowTag.pkid
		  n1 = MainWindow.findControlByName( "ComboBox_EIPL_TypeSelector" )
		  theControl = MainWindow.Control( n1 )
		  setControlpkid( theControl, thePKID )
		  
		  // Grab the EIPL type, tells us whether this is an Estimate Invoice or Pack List
		  'first we must load the type control
		  MainWindow.ComboBox_EIPL_TypeSelector.loadFromDB
		  
		  'then we can grab the text from the control
		  type = MainWindow.ComboBox_EIPL_TypeSelector.Text
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub load_inventory(keep_selection as Boolean)
		  
		  MainWindow.Listbox_EIPL_Inventory.loadMe( keep_selection )
		  MainWindow.Listbox_PL_Inventory.loadMe( keep_selection )
		  
		  
		  // Grab all departments in EIPL Inventory
		  dim theGroups() as string
		  dim theValue as string
		  
		  dim groupColumnNumber as integer = 1
		  
		  
		  // Gather all of the group names
		  For i1 as integer = 0 To MainWindow.Listbox_EIPL_Inventory.ListCount - 1
		    
		    theValue = MainWindow.Listbox_EIPL_Inventory.Cell( i1, groupColumnNumber )
		    
		    If theGroups.IndexOf( theValue ) = -1 Then
		      
		      theGroups.Append( theValue )
		      
		    End If
		    
		  Next
		  
		  // Put group names into the combobox
		  MainWindow.ComboBox_InventoryDepartmentFilter.AddRows( theGroups() ) 
		  
		  
		  
		  // Gather all of the group names
		  For i1 as integer = 0 To MainWindow.Listbox_PL_Inventory.ListCount - 1
		    
		    theValue = MainWindow.Listbox_PL_Inventory.Cell( i1, groupColumnNumber )
		    
		    If theGroups.IndexOf( theValue ) = -1 Then
		      
		      theGroups.Append( theValue )
		      
		    End If
		    
		  Next
		  
		  // Put group names into the combobox
		  MainWindow.ComboBox_PL_InventoryDepartmentFilter.AddRows( theGroups() ) 
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected pkid As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected type As String
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
End Module
#tag EndModule
