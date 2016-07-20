#tag Class
Protected Class drawEstimate
	#tag Method, Flags = &h21
		Private Function drawConVenInfo(yStart as integer) As integer
		  dim x, y as integer
		  dim x1, y1, x2, y2 as integer
		  dim boxWidth as integer
		  dim infoDictContact() as string
		  dim infoDictVenue() as string
		  dim bodyLineHeight as integer
		  dim wrapWidth as integer
		  dim n1, n2, n3, n4 as integer
		  
		  // Settings
		  dim largeBoxHeaderSeparator as integer = 15 * masterMult
		  dim headerTextSize as integer = 11 * masterMult
		  dim infoTextSize as integer = 10 * masterMult
		  dim spaceFromBottomLinetoText as integer = 2 * masterMult
		  dim spaceFromLeftLinetoText as Integer = 2 * masterMult
		  g.TextFont = "Helvetica"
		  
		  
		  
		  // Contact Info Dictionary population
		  If 1=1 Then
		    
		    ReDim infoDictContact( 7 )
		    
		    'Header
		    infoDictContact(0) = "Contact"
		    
		    'Company
		    infoDictContact(1) = MainWindow.mdLabel_Contact_Company.Text
		    
		    'Name
		    infoDictContact(2) = MainWindow.mdLabel_Contact_NameFirst.Text + MainWindow.mdLabel_Contact_NameLast.Text
		    
		    'Address Line 1
		    infoDictContact(3) = MainWindow.mdLabel_EIPL_Contact_AddressLine1.Text
		    
		    'Address Line 2
		    infoDictContact(4) = MainWindow.mdLabel_EIPL_Contact_AddressLine2.Text
		    
		    'City State, Zip
		    infoDictContact(5) = MainWindow.mdLabel_Contact_City.Text 
		    If MainWindow.mdLabel_Contact_City.Text <> "" Or MainWindow.mdLabel_Contact_State.Text <> "" Then
		      infoDictContact(5) = infoDictContact(5) + ", "
		    End If
		    infoDictContact(5) = infoDictContact(5) + MainWindow.mdLabel_Contact_State.Text + " " + MainWindow.mdLabel_Contact_Zip.Text
		    
		    'Phone
		    infoDictContact(6) = MainWindow.mdLabel_Contact_Phone.Text
		    
		    'Email
		    infoDictContact(7) = MainWindow.mdLabel_Contact_Email.Text
		    
		    
		  End If
		  
		  // Contact Info Dictionary population
		  If 1=1 Then
		    
		    ReDim infoDictVenue( 7 )
		    
		    
		    'Header
		    infoDictVenue(0) = "Venue / Site"
		    
		    'Company
		    infoDictVenue(1) = MainWindow.mdLabel_Venue_Company.Text
		    
		    'Name
		    infoDictVenue(2) = MainWindow.mdLabel_Venue_Name.Text
		    
		    'Address Line 1
		    infoDictVenue(3) = MainWindow.mdLabel_Venue_AddressLine1.Text
		    
		    'Address Line 2
		    infoDictVenue(4) = MainWindow.mdLabel_Venue_AddressLine2.Text
		    
		    'City State, Zip
		    infoDictVenue(5) = MainWindow.mdLabel_Venue_City.Text 
		    If MainWindow.mdLabel_Venue_City.Text <> "" Or MainWindow.mdLabel_Venue_State.Text <> "" Then
		      infoDictVenue(5) = infoDictVenue(5) + ", "
		    End If
		    infoDictVenue(5) = infoDictVenue(5) + MainWindow.mdLabel_Venue_State.Text + " " + MainWindow.mdLabel_Venue_Zip.Text
		    
		    
		    'Phone
		    infoDictVenue(6) = MainWindow.mdLabel_Venue_Phone.Text
		    
		    'Email
		    infoDictVenue(7) = MainWindow.mdLabel_Venue_Email.Text
		    
		    
		  End If
		  
		  g.TextSize = headerTextSize
		  largeBoxHeight = g.TextHeight + spaceFromBottomLinetoText
		  g.TextSize = infoTextSize
		  n3 = infoDictContact.Ubound
		  n4 = g.TextHeight
		  n1 = n3 * n4
		  n2 = spaceFromBottomLinetoText * infoDictContact.Ubound
		  largeBoxHeight =  largeBoxHeight + n1 + n2
		  
		  // Determin the width of the ConVen Boxes
		  boxWidth = ( pageDimentions( 0 ) - margin * 2 - sectionSpacing ) / 2
		  
		  // Draw Vertical Lines
		  If 1=1 Then
		    'left side contact box
		    x1 = margin
		    y1 = yStart + sectionSpacing
		    x2 = x1
		    y2 = y1 + largeBoxHeight
		    'g.DrawLine( x1, y1, x2, y2 )
		    g.FillRect( x1, y1, lineWidth, largeBoxHeight )
		    
		    'right side contact box
		    x1 = x1 + boxWidth
		    x2 = x1
		    'g.DrawLine( x1, y1, x2, y2 )
		    g.FillRect( x1, y1, lineWidth, largeBoxHeight )
		    
		    'left side venue box
		    x1 = x1 + sectionSpacing
		    x2 = x1
		    'g.DrawLine( x1, y1, x2, y2 )
		    g.FillRect( x1, y1, lineWidth, largeBoxHeight )
		    
		    'right side venue box
		    x1 = x1 + boxWidth
		    x2 = x1
		    'g.DrawLine( x1, y1, x2, y2 )
		    g.FillRect( x1, y1, lineWidth, largeBoxHeight )
		  End If
		  
		  // Draw Horizontal Lines
		  if 1=1 Then
		    'top side contact box
		    x1 = margin
		    y1 = yStart + sectionSpacing
		    x2 = x1 + boxWidth
		    y2 = y1
		    'g.DrawLine( x1, y1, x2, y2 )
		    g.FillRect( x1, y1, boxWidth, lineWidth )
		    
		    'header Separator
		    y1 = y1 + largeBoxHeaderSeparator
		    y2 = y1
		    'g.DrawLine( x1, y1, x2, y2 )
		    g.FillRect( x1, y1, boxWidth, lineWidth )
		    
		    'reset y1 for correct calculation from the top of box instead of from header Separator
		    y1 = yStart + sectionSpacing
		    
		    'bottom side contact box
		    y1 = y1 + largeBoxHeight
		    y2 = y1
		    'g.DrawLine( x1, y1, x2, y2 )
		    g.FillRect( x1, y1, boxWidth, lineWidth )
		    
		    'top side venue box
		    x1 = margin + boxWidth + sectionSpacing
		    y1 = yStart + sectionSpacing
		    x2 = x1 + boxWidth
		    y2 = y1
		    'g.DrawLine( x1, y1, x2, y2 )
		    g.FillRect( x1, y1, boxWidth, lineWidth )
		    
		    
		    'header Separator
		    y1 = y1 + largeBoxHeaderSeparator
		    y2 = y1
		    'g.DrawLine( x1, y1, x2, y2 )
		    g.FillRect( x1, y1, boxWidth, lineWidth )
		    
		    'reset y1 for correct calculation from the top of box instead of from header Separator
		    y1 = yStart + sectionSpacing
		    
		    'bottom side venue box
		    y1 = y1 + largeBoxHeight
		    y2 = y1
		    'g.DrawLine( x1, y1, x2, y2 )
		    g.FillRect( x1, y1, boxWidth, lineWidth )
		    
		    
		  end if
		  
		  // Draw Header Text
		  If 1=1 Then
		    
		    g.TextSize = headerTextSize
		    g.Bold = True
		    
		    // Contact Box
		    'Set coordinates
		    x = margin + spaceFromLeftLinetoText
		    y = yStart + sectionSpacing + largeBoxHeaderSeparator - spaceFromBottomLinetoText
		    
		    'Draw the line
		    g.DrawString( infoDictContact(0), x, y )
		    
		    
		    // Venue Box
		    'Set coordinates
		    x = margin + boxWidth + sectionSpacing + spaceFromLeftLinetoText
		    y = yStart + sectionSpacing + largeBoxHeaderSeparator - spaceFromBottomLinetoText
		    
		    'Draw the line
		    g.DrawString( infoDictVenue(0), x, y )
		    
		  End If
		  
		  // Draw body text
		  If 1=1 Then
		    
		    g.TextSize = infoTextSize
		    g.Bold = False
		    
		    // Contact Box
		    bodyLineHeight = ( largeBoxHeight - largeBoxHeaderSeparator ) / infoDictContact.Ubound
		    
		    x = margin + spaceFromLeftLinetoText
		    y = yStart + sectionSpacing + largeBoxHeaderSeparator + bodyLineHeight - spaceFromBottomLinetoText
		    wrapWidth = boxWidth - spaceFromLeftLinetoText
		    
		    // Loop through all lines
		    For i1 as integer = 1 To infoDictContact.Ubound
		      
		      'draw line
		      g.DrawString( infoDictContact( i1 ), x, y, wrapWidth )
		      
		      'move y to new line
		      y = y + bodyLineHeight
		      
		    Next
		    
		    // Venue Box
		    bodyLineHeight = ( largeBoxHeight - largeBoxHeaderSeparator ) / infoDictContact.Ubound
		    
		    x = margin + boxWidth + sectionSpacing + spaceFromLeftLinetoText
		    y = yStart + sectionSpacing + largeBoxHeaderSeparator + bodyLineHeight - spaceFromBottomLinetoText
		    wrapWidth = boxWidth - spaceFromLeftLinetoText
		    
		    // Loop through all lines
		    For i1 as integer = 1 To infoDictVenue.Ubound
		      
		      'draw line
		      g.DrawString( infoDictVenue( i1 ), x, y, wrapWidth )
		      
		      'move y to new line
		      y = y + bodyLineHeight
		      
		    Next
		    
		  End If
		  
		  Return yStart + sectionSpacing + largeBoxHeight
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawFooter()
		  dim x, y as integer
		  dim n1, n2, n3, n4 as double
		  dim numberOfPages as integer
		  dim s1, s2, s3, s4 as string
		  
		  
		  
		  
		  // Page Number
		  
		  // Determining pages
		  numberOfPages = Window_PrintPreview.p.Ubound + 1
		  
		  // Setting the text
		  s1 = "Page " + page.ToText + " of " + numberOfPages.ToText
		  
		  // Settings
		  g.TextSize = 8 * masterMult
		  g.Bold = False
		  
		  // Coordinates
		  x = pageDimentions(0) - margin - g.StringWidth( s1 )
		  y = pageDimentions(1) - g.TextHeight
		  
		  // Draw
		  g.DrawString( s1, x, y )
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function drawHeader(yStart as integer) As integer
		  dim x1, y1, x2, y2 as integer
		  dim n1, n2, n3, n4 as Double
		  dim width1, width2, height1, height2 as integer
		  dim theImage as Picture
		  
		  theImage = img0
		  
		  
		  // ??????????????
		  // Logo
		  
		  // Coordinates
		  x1 = margin
		  y1 = yStart
		  x2 = 0
		  y2 = 0
		  
		  // Scaling
		  'destination
		  n1 = theImage.Height / headerHeight
		  width1 = theImage.Width / n1
		  height1 = headerHeight
		  
		  'source
		  width2 = theImage.Width
		  height2 = theImage.Height
		  
		  g.DrawPicture( theImage, x1, y1, width1, height1, x2, y2, width2, height2 )
		  
		  
		  
		  // ??????????????
		  // Text
		  
		  dim info(2) as string
		  dim textSizes() as integer = Array( 16 * masterMult, 12 * masterMult, 12 * masterMult )
		  dim x, y as integer
		  dim startingPercentPosition as double = 0.75
		  dim startingPosition as integer = Floor( pageDimentions(0) * startingPercentPosition )
		  dim spaceFromBaseLine as integer = 0 * masterMult
		  
		  // Set the info to be drawn
		  info() = Array( MainWindow.ComboBox_EIPL_TypeSelector.Text, MainWindow.Label_EIPL_Number.Text, MainWindow.TextField_Event_Name.Text )
		  
		  g.TextSize = textSizes(0)
		  y = margin + g.TextHeight + g.TextHeight
		  
		  // Loop through each line
		  For i1 as integer = 0 To info.Ubound
		    
		    If i1 <> 0 Then
		      y = y + g.TextHeight + spaceFromBaseLine
		      g.Bold = False
		    Else
		      g.Bold = True
		    End If
		    
		    g.TextSize = textSizes(i1)
		    
		    // determine coordinates
		    n1 = g.StringWidth( info(i1) ) / 2
		    x = startingPosition - n1
		    
		    g.DrawString( info(i1), x, y )
		    
		  Next
		  
		  Return yStart + headerHeight
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawInfoBox()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawLine(x as integer, y as integer, pInfo() as string, pColumnWidths() as integer, pJustification() as String, pShowColumn() as Boolean)
		  dim wrapWidth as integer
		  dim boxWidth as integer
		  dim n1, n2, n3, n4 as integer
		  dim d1, d2, d3, d4 as Double
		  dim x1, y1 as integer
		  dim originalx as integer = x
		  dim contentWidth as integer
		  dim checkboxWidth as integer = g.TextHeight
		  dim x11, thewidth, y11, theheight as integer
		  
		  x1 = x
		  y1 = y
		  
		  // Check to make sure we have info
		  If pInfo.Ubound <> -1 Then
		    
		    // Loop through each column of info
		    For i1 as integer = 0 To pInfo.Ubound
		      
		      // Calculate the box and wrapWidths
		      n2 = pageDimentions(0) - originalx
		      n4 = pColumnWidths(i1)
		      d1 = n4 / 100 
		      boxWidth = n2 * d1
		      wrapWidth = boxWidth
		      
		      If pInfo(i1) <> "drawbox" Then
		        contentWidth = g.StringWidth( pInfo(i1) )
		      ElseIf pInfo(i1) = "drawbox" Then
		        contentWidth = checkboxWidth
		      End If
		      
		      // Calculate x
		      If pJustification(i1) = "Left" Then
		        x1 = x
		      ElseIf pJustification(i1) = "Center" Then
		        n1 = ( boxWidth / 2 ) - ( contentWidth / 2 )
		        x1 = x + n1
		      ElseIf pJustification(i1) = "Right" Then
		        x1 = x + boxWidth - contentWidth
		      End If
		      
		      If pInfo(i1) <> "drawbox" Then
		        
		        If pShowColumn(i1) Then
		          // Draw the Line column
		          g.DrawString( pinfo(i1), x1, y1, wrapWidth, True )
		        End If
		        
		      ElseIf pInfo(i1) = "drawbox" Then
		        
		        // Vertical
		        'left
		        x11 = x1
		        y11 = y1 - g.TextHeight
		        thewidth = g.TextHeight
		        theheight = g.TextHeight
		        g.DrawRect( x11, y11, thewidth, theheight )
		        
		        
		        
		      End If
		      
		      // Move our cursor down the line
		      x = x + boxWidth
		      
		    Next
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function drawLineItemSection(yStart as integer) As Boolean
		  dim linesOnPage as integer
		  dim n1, n2, n3, n4 as integer
		  dim s1, s2, s3, s4 as string
		  dim info() as string
		  dim x, y, yinfobox as integer
		  dim groupIndex as integer = 0
		  dim recordIndex as integer
		  dim thegroupDict() as Dictionary
		  dim groupStart as integer
		  dim groupEnd as integer
		  dim groupName as String
		  dim lineType as string
		  dim eiplPKID as string
		  dim theRowtag as mdRowTag
		  dim summaryIndex as integer
		  dim finalSummaryIndex as integer
		  dim theDataDict() as Dictionary
		  dim estimateInfoBoxText as String
		  dim invoiceInfoBoxText as String
		  
		  dim groupSummaryDone as Boolean
		  dim finalSummaryDone as Boolean
		  dim groupDone as Boolean
		  dim allGroupsDone as Boolean
		  dim groupHeaderDone as Boolean
		  
		  dim showSubTotal as Boolean
		  dim showDiscount as Boolean
		  dim summaryDict() as Dictionary
		  dim finalSummaryDict() as Dictionary
		  dim infoBoxDict() as string
		  
		  dim finalSummaryLineisZero as Boolean
		  
		  
		  dim headers() as string 
		  dim columns() as integer
		  dim columnWidths() as integer 
		  dim justification() as string 
		  dim showColumn() as Boolean
		  
		  dim infoBoxWidth as integer 
		  
		  // Settings
		  If Type = "Estimate" Or Type = "Invoice" Then
		    g.TextSize = 9 * MasterMult
		  ElseIf Type = "Pack List" Then
		    g.TextSize = 12
		  End If
		  
		  // Set info box info
		  estimateInfoBoxText = "Please note that this estimate serves only as a proposal and is no way a contract for services to be provided.  If you wish to contract the proposed services please contact us to confirm your acceptance of this proposal.  This estimate is valid for 30 days.  Thank You. "
		  invoiceInfoBoxText = "Thank you for your business! We look forward to continuing to work with you on great events in the future!  Please remit payment to: Northern Sun Productions, 522 6th Ave NW, Rochester, MN. 55901.  Thank You."
		  
		  dim sourceListbox as mdListbox
		  
		  If Type = "Estimate" Or Type = "Invoice" Then
		    
		    sourceListbox = MainWindow.Listbox_LineItems
		    
		    headers()  = Array ( "Name", "Time", "Rate", "QTY", "Price", "DiscSum", "DiscPerc", "Total"  )
		    columns()  = Array ( 0,2,3,4,5,6,7,8 )
		    columnWidths()  = Array ( 23,8,10,8,12,12,12, 15 )
		    justification()  = Array( "Left", "Center", "Center", "Center", "Center", "Center", "Center", "Center" )
		    showColumn()  = Array( True, True, True, True, True, True, True, True )
		    
		  ElseIf Type = "Pack List" Then
		    
		    sourceListbox = MainWindow.Listbox_PL_LineItems
		    
		    headers()  = Array ( "Qty", "Name", "Notes", "Case", "Truck"  )
		    columns()  = Array ( 0,1,3,-1,-1 )
		    columnWidths()  = Array ( 10,35,35,10,10 )
		    justification()  = Array( "Center", "Left", "Left", "Center", "Center" )
		    showColumn()  = Array( True, True, True, True, True )
		    
		  End If
		  
		  dim spaceAboveLine as integer = 1 * MasterMult
		  dim spaceBelowLine as integer = 1 * MasterMult
		  dim summaryXValue as integer = 400 * MasterMult
		  
		  If Type = "Estimate" Or Type = "Invoice" Then
		    // Check for discounts
		    dim showDiscountAmount as Boolean
		    dim showDiscountPerc as Boolean
		    
		    'check if there are any discounts in the line items
		    For i1 as integer = 0 to sourceListbox.mdDataDict.Ubound
		      If sourceListbox.mdDataDict(i1).Value( "discountamount_" ) <> 0 Then
		        showDiscountAmount = True
		      End If
		      If sourceListbox.mdDataDict(i1).Value( "discountperc_" ) <> 0 Then
		        showDiscountPerc = True
		      End If
		    Next
		    
		    'adjust arrays accordingly
		    If Not showDiscountAmount then
		      showColumn(5) = False
		    End If
		    If Not showDiscountPerc Then
		      showColumn(6) = False
		    End If
		    
		    
		    redim summaryDict(2) 
		    summaryDict(0) = new Dictionary
		    summaryDict(0).Value("Header") = "SubTotal"
		    summaryDict(0).Value("Field Name") = "subtotal_"
		    summaryDict(1) = new Dictionary
		    summaryDict(1).Value("Header") = "Discount"
		    summaryDict(1).Value("Field Name" ) = "amount_"
		    summaryDict(2) = new Dictionary
		    summaryDict(2).Value("Header") = "Total"
		    summaryDict(2).Value("Field Name" ) = "grandtotal_"
		    
		    If Type = "Invoice" Then
		      redim finalSummaryDict(5) 
		    ElseIf Type = "Estimate" Then
		      ReDim finalSummaryDict(3)
		    End If
		    finalSummaryDict(0) = new Dictionary
		    finalSummaryDict(0).Value("Header") = "SubTotal"
		    finalSummaryDict(0).Value("Field Name") = "subtotal_"
		    finalSummaryDict(1) = new Dictionary
		    finalSummaryDict(1).Value("Header") = "Discount"
		    finalSummaryDict(1).Value("Field Name" ) = "discount_"
		    finalSummaryDict(2) = new Dictionary
		    finalSummaryDict(2).Value("Header") = "Sales Tax"
		    finalSummaryDict(2).Value("Field Name" ) = "taxtotal_"
		    finalSummaryDict(3) = new Dictionary
		    finalSummaryDict(3).Value("Header") = "GrandTotal"
		    finalSummaryDict(3).Value("Field Name" ) = "grandtotal_"
		    If Type = "Invoice" Then
		      'only apply to invoices
		      finalSummaryDict(4) = new Dictionary
		      finalSummaryDict(4).Value("Header") = "Applied Payments"
		      finalSummaryDict(4).Value("Field Name" ) = "totalpaid_"
		      finalSummaryDict(5) = new Dictionary
		      finalSummaryDict(5).Value("Header") = "Balance Due"
		      finalSummaryDict(5).Value("Field Name" ) = "balance_"
		    End If
		    
		    If Type = "Estimate" Then
		      
		      ReDim infoBoxDict(2)
		      infoBoxDict(0) = "This is just an Estimate"
		      infoBoxDict(1) = "Contact Northern Sun Producitons to book services"
		      infoBoxDict(2) = ""
		      
		    ElseIf Type = "Invoice" Then
		      
		      ReDim infoBoxDict(2)
		      infoBoxDict(0) = "Please make checks payable to Northern Sun Productions"
		      infoBoxDict(1) = "Mail to 522 6th Ave. NW Rochester MN, 55901"
		      infoBoxDict(2) = ""
		      
		    End If
		    
		  Elseif Type = "Pack List" Then
		    redim summaryDict(-1) 
		    redim finalSummaryDict(-1) 
		  End If
		  
		  // Carry over values from the last page
		  If toNextPageDict <> Nil Then
		    recordIndex = toNextPageDict.Value( "recordIndex" )
		    summaryIndex = toNextPageDict.Value( "summaryIndex" )
		    groupIndex = toNextPageDict.Value( "currentGroup" )
		    allGroupsDone = toNextPageDict.Value( "allGroupsDone" )
		    groupDone = toNextPageDict.Value( "groupDone" )
		    groupSummaryDone = toNextPageDict.Value( "groupSummaryDone" )
		    finalSummaryDone = toNextPageDict.Value( "finalSummaryDone" )
		    groupHeaderDone = toNextPageDict.Value( "groupHeaderDone" )
		    
		  else
		    groupIndex = 0
		  End If
		  
		  
		  theRowtag = MainWindow.ListBox_EIPL.RowTag( MainWindow.ListBox_EIPL.ListIndex )
		  eiplPKID = theRowtag.pkid
		  
		  // Determine the amount of space we have left on the page
		  n1 = pageDimentions(1) - yStart - footerHeight
		  linesOnPage = Floor( n1 / ( g.TextHeight + spaceAboveLine + spaceBelowLine ) )
		  
		  // Get all of the goup directory information from the listbox
		  thegroupDict() = sourceListbox.mdGroupDict()
		  groupStart = thegroupDict(groupIndex).Value("Start")
		  groupEnd = thegroupDict(groupIndex).Value("End")
		  groupName = thegroupDict(groupIndex).Value("Name")
		  
		  x = margin
		  y = yStart +spaceAboveLine + g.TextHeight
		  
		  // Loop through each line available on the page
		  For i1 as integer = 1 to linesOnPage
		    
		    // Section 1: determine type of line
		    
		    
		    If 1=1 Then
		      
		      'Determine Line Type
		      If i1 = 1 Then
		        lineType = "Header"
		      ElseIf Not groupDone And recordIndex = groupStart And Not groupHeaderDone Then
		        lineType = "Group Header"
		      ElseIf Not groupDone And Not allGroupsDone And recordIndex <= sourceListbox.mdDataDict.Ubound And groupHeaderDone Then
		        lineType = "Line Item"
		      ElseIf groupDone And Not groupSummaryDone Then
		        lineType = "Group Summary"
		      ElseIf Not finalSummaryDone And allGroupsDone Then
		        lineType = "Final Summary"
		      ElseIf finalSummaryDone And allGroupsDone then
		        Return True
		      Else
		        lineType = "none"
		        logErrorMessage( 4, "drawLineItemSection", "We should not be here, a none line" )
		      End If
		      
		    End If
		    
		    // Section 2: Gather all information for line
		    If 1=1 Then
		      
		      // Set the info array
		      If lineType = "Header" Then
		        info() = headers()
		      ElseIf lineType = "Line Item" Then
		        
		        ReDim info( columns.Ubound )
		        
		        // Loop through each column
		        For i2 as integer = 0 To columns.Ubound
		          
		          If columns(i2) <> -1 Then
		            
		            dim fieldname as string = sourceListbox.mdFieldNames( columns( i2 ) )
		            
		            // Set the info array element to the datadict entry in the sourceListbox
		            info(i2) = formatMyValue( sourceListbox.mdDataDict(recordIndex).Value( fieldname ), sourceListbox.mdFormats( columns(i2) ) )
		            
		            If fieldname = "discountperc_" Or fieldname = "discountamount_" Then
		              If val( info(i2) ) = 0 Then
		                // Clear the value if it is a discount and equal to 0
		                info(i2) = ""
		              Else
		                
		                // Format the Value
		                info(i2) = formatMyValue( info(i2), sourceListbox.mdFormats( columns(i2) ) )
		              End If
		            End If
		            
		          Else
		            
		            info(i2) = "drawbox"
		            
		          End If
		          
		        Next
		        
		      ElseIf lineType = "Group Header" Then
		        
		        ReDim info(0)
		        info(0) = groupName
		        
		      ElseIf lineType = "Group Summary" Then
		        
		        If Type = "Estimate" Or Type = "Invoice" Then
		          // Get the summary information from the database
		          dim SQL as string
		          SQL = "Select subtotal_, grandtotal_, amount_ From discounts_ Where fkeipl = $1 And department_ = $2;"
		          dim ps as PostgreSQLPreparedStatement
		          ps = otis.db.Prepare( SQL )
		          ps.Bind( 0, eiplPKID )
		          ps.Bind( 1, groupName )
		          dim theRecordSet as RecordSet
		          theRecordSet = ps.SQLSelect
		          If otis.db.Error Then
		            logErrorMessage( 4, "DBase", otis.db.ErrorMessage )
		          End If
		          
		          // Check if there is a discount
		          If theRecordSet.Field( "amount_" ).IntegerValue <> 0 Then
		            showSubtotal = True
		            showDiscount =True
		          End If
		          
		          // Extract the information from the RecordSet
		          ReDim info(1)
		          info(0) = groupName + " " + summaryDict( summaryIndex ).Value( "Header" ) + ": "
		          s4 = theRecordSet.Field( summaryDict( summaryIndex ).Value( "Field Name" ) )
		          n4 = val( s4 )
		          info(1) = str( formatMyValue( n4 , 1 ) )
		          x = summaryXValue
		        End If
		        
		      ElseIf lineType = "Final Summary" Then
		        
		        If Type = "Estimate" Or Type = "Invoice" Then
		          dim SQL as string
		          SQL = "Select balance_, grandtotal_, subtotal_, discount_, totalpaid_, taxtotal_ From eipl Where pkid = $1;"
		          dim ps as PostgreSQLPreparedStatement
		          ps = otis.db.Prepare( SQL )
		          ps.Bind( 0, eiplPKID )
		          dim theRecordSet as RecordSet
		          theRecordSet = ps.SQLSelect
		          If otis.db.Error Then
		            logErrorMessage( 4, "DBase", otis.db.ErrorMessage )
		          End If
		          
		          '// Check the discount and see if we need to print it
		          'dim discountAmount as integer
		          'discountAmount = theRecordSet.Field( "discount_" )
		          'If discountAmount = 0 Then
		          'discount is equal to 0 
		          
		          'End If
		          
		          // Extract the information from the RecordSet
		          ReDim info(1)
		          info(0) = finalSummaryDict( finalSummaryIndex ).Value( "Header" ) + ": "
		          s4 = theRecordSet.Field( finalSummaryDict( finalSummaryIndex ).Value( "Field Name" ) )
		          n4 = val( s4 )
		          If n4 = 0 Then
		            finalSummaryLineisZero = True
		          Else
		            finalSummaryLineisZero = False
		          End If
		          info(1) = str( formatMyValue( n4, 1 ) )
		          x = summaryXValue
		        End If
		        
		      End If
		      
		    End If
		    
		    // Section 3: Draw the line
		    If 1=1 Then
		      
		      If lineType = "Header" Then
		        
		        // Draw the line
		        g.Bold = True
		        drawLine( x + 10, y, info(), columnWidths(), justification(), showColumn() )
		        g.Bold = False
		        
		      ElseIf lineType = "Group Header" Then
		        
		        // Draw the line
		        g.Bold = True
		        drawLine( x, y, info(), Array(100), Array("Left"), Array( True ) )
		        g.Bold = False
		        
		      ElseIf lineType = "Line Item" Then
		        
		        // Draw the line
		        drawLine( x + 10 * MasterMult, y, info(), columnWidths(), justification(), showColumn() )
		        
		      ElseIf lineType = "Group Summary" Then
		        If Type = "Estimate" Or Type = "Invoice" Then
		          dim drawLine as Boolean = True
		          
		          If summaryIndex = 0 And Not showSubTotal Then
		            drawLine = False
		            y = y - ( g.TextHeight +spaceAboveLine + spaceBelowLine )
		            i1 = i1 - 1
		          End If
		          
		          If summaryIndex = 1 And Not showDiscount Then
		            drawLine = False
		            y = y - ( g.TextHeight +spaceAboveLine + spaceBelowLine )
		            i1 = i1 - 1
		          End If
		          
		          If drawLine = True Then
		            // Draw the line
		            g.Bold = True
		            drawLine( x, y, info(), Array(50,50), Array( "Right", "Left" ), Array( True, True ) )
		            g.Bold = False
		          End If
		        End If
		        
		      ElseIf lineType = "Final Summary" Then
		        
		        dim boxX, boxY, boxW, boxH as integer
		        
		        // Draw the infobox
		        If finalSummaryIndex = 0 Then
		          
		          boxH = ( finalSummaryDict.Ubound + 1 ) * ( g.TextHeight +spaceAboveLine + spaceBelowLine ) + 4
		          boxW = summaryXValue - ( 90 * masterMult ) - margin
		          infoBoxWidth = boxW
		          
		          'Left Line
		          boxX = margin + ( 30 * masterMult )
		          boxY = y
		          g.FillRect( boxX, boxY, lineWidth, boxH )
		          
		          'Right Line
		          boxX = boxX + boxW
		          boxY = y
		          g.FillRect( boxX, boxY, lineWidth, boxH )
		          
		          'Top Line
		          boxX = margin + ( 30 * masterMult )
		          boxY = y
		          g.FillRect( boxX, boxY, boxW, lineWidth )
		          
		          'Bottom Line
		          boxX = margin + ( 30 * masterMult )
		          boxY = y + boxH
		          g.FillRect( boxX, boxY, boxW, lineWidth )
		          
		          'Set up a new y for the infobox
		          yinfobox = y
		          
		          y = y + g.TextHeight +spaceAboveLine + spaceBelowLine
		          
		        Else
		          
		          'If finalSummaryIndex - 1 >= 0 And finalSummaryIndex - 1 <= infoBoxDict.Ubound Then
		          If finalSummaryIndex = 1 Then
		            boxX = margin + ( 30 * masterMult ) + ( 10 * masterMult )
		            If Type = "Estimate" Then
		              'g.DrawString( infoBoxDict( finalSummaryIndex - 1 ), boxX, yinfobox )
		              g.DrawString( estimateInfoBoxText, boxX, yinfobox, infoBoxWidth - margin )
		            ElseIf Type = "Invoice" Then
		              g.DrawString( invoiceInfoBoxText, boxX, yinfobox, infoBoxWidth - margin )
		            End If
		            
		          End If
		          
		        End If
		        
		        If Type = "Estimate" Or Type = "Invoice" Then
		          If Not finalSummaryLineisZero Then
		            // Draw the line
		            g.Bold = True
		            drawLine( x - 100 * MasterMult, y, info(), Array(50,50), Array( "Right", "Left" ), Array( True, True ) )
		            g.Bold = False
		          Else
		            y = y - g.TextHeight - spaceAboveLine - spaceBelowLine
		          End If
		        End If
		        
		      End If
		      
		    End If
		    
		    // Section 4: Advance indexes and y value
		    If 1=1 Then
		      
		      y = y + g.TextHeight +spaceAboveLine + spaceBelowLine
		      x = margin
		      
		      If yinfobox <> 0 Then
		        yinfobox = yinfobox + g.TextHeight +spaceAboveLine + spaceBelowLine
		      End If
		      
		      If lineType = "Header" Then
		        
		      ElseIf lineType = "Group Header" Then
		        
		        groupHeaderDone = True
		        
		      ElseIf lineType = "Line Item" Then
		        
		        recordIndex = recordIndex + 1
		        If recordIndex > groupEnd Then
		          groupDone = True
		        End If
		        
		      ElseIf lineType = "Group Summary" Then
		        
		        summaryIndex = summaryIndex + 1
		        If summaryIndex > summaryDict.Ubound Then
		          groupSummaryDone = True
		          
		          'advance to the next group if there is another one
		          If groupIndex < thegroupDict.Ubound Then
		            groupIndex = groupIndex + 1
		            summaryIndex = 0
		            groupDone = False
		            groupSummaryDone = False
		            groupHeaderDone = False
		            showDiscount = False
		            showSubTotal = False
		            
		            groupStart = thegroupDict(groupIndex).Value("Start")
		            groupEnd = thegroupDict(groupIndex).Value("End")
		            groupName = thegroupDict(groupIndex).Value("Name")
		          Else
		            allGroupsDone = True
		          End If
		        End If
		        
		      ElseIf lineType = "Final Summary" Then
		        
		        finalSummaryIndex = finalSummaryIndex + 1
		        If finalSummaryIndex > finalSummaryDict.Ubound Then
		          finalSummaryDone = True
		        End If
		        
		      End If
		      
		    End If
		    
		  Next
		  
		  // Check if we have finished
		  If finalSummaryDone Then
		    'Finished
		    Return True
		    
		  Else 'Not Finished must continue on to next page
		    
		    toNextPageDict = new Dictionary
		    toNextPageDict.Value( "recordIndex" ) = recordIndex
		    toNextPageDict.Value( "summaryIndex" ) = summaryIndex
		    toNextPageDict.Value( "currentGroup" ) = groupIndex
		    toNextPageDict.Value( "allGroupsDone" ) = allGroupsDone
		    toNextPageDict.Value( "groupDone" ) = groupDone
		    toNextPageDict.Value( "groupSummaryDone" ) = groupSummaryDone
		    toNextPageDict.Value( "finalSummaryDone" ) = finalSummaryDone
		    toNextPageDict.Value( "groupHeaderDone" ) = groupHeaderDone
		    Return False
		    
		  End If
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function drawMe(pPreview as Boolean) As Picture()
		  dim y as integer
		  dim weDone as Boolean
		  dim finalPictures() as Picture
		  
		  ReDim pageDimentions( 1 )
		  pageDimentions() = Array( 593 * masterMult, 773 * masterMult )
		  
		  If Not pPreview Then
		    dim settings as string
		    dim pagesetup as PrinterSetup
		    pagesetup = new PrinterSetup
		    If pagesetup.PageSetupDialog Then
		      settings = pagesetup.SetupString
		    End If
		    g = OpenPrinterDialog(pagesetup)
		    masterMult = g.Height / pageDimentions(1)
		    pageDimentions(0) = g.Width
		    pageDimentions(1) = g.Height
		  End If
		  
		  headerHeight = headerHeight * masterMult
		  largeBoxHeight = largeBoxHeight * masterMult
		  margin = margin * masterMult
		  sectionSpacing = sectionSpacing * masterMult
		  smallBoxHeight = smallBoxHeight * masterMult
		  lineWidth = lineWidth * masterMult
		  
		  Type = MainWindow.ComboBox_EIPL_TypeSelector.Text
		  
		  If Type = "Pack List" Then
		    margin = 25
		  End If
		  
		  page = 1
		  
		  
		  
		  While Not weDone
		    
		    
		    y = margin
		    
		    If pPreview Then
		      p = new Picture ( pageDimentions(0), pageDimentions(1) )
		      
		      g = p.Graphics
		    End If
		    
		    
		    // Draw Background here
		    
		    
		    // Draw header here
		    y = drawHeader(y)
		    
		    If page = 1 Then
		      
		      If Type = "Estimate" Or Type = "Invoice" Then
		        // Draw ConVenBoxes Here
		        y = drawConVenInfo( y )
		      ElseIf Type = "Pack List" Then
		      End If
		      
		      // Draw Small Boxes Here
		      y = drawSmallBoxes( y )
		      
		    End If
		    
		    // Draw Line Items Here
		    weDone = drawLineItemSection(y)
		    
		    // Draw Footer Here
		    drawFooter
		    
		    page = page + 1
		    
		    // Advance and Save page
		    If pPreview Then
		      ReDim finalPictures( finalPictures.Ubound + 1 )
		      finalPictures( finalPictures.Ubound ) = new Picture( pageDimentions(0) / masterMult, pageDimentions(1) / masterMult )
		      finalPictures( finalPictures.Ubound ).Graphics.DrawPicture( p, 0, 0, pageDimentions(0) / masterMult, pageDimentions(1) / masterMult, 0, 0, pageDimentions(0), pageDimentions(1)  )
		    Else
		      if Not weDone Then
		        g.NextPage
		      End If
		    End If
		    
		    
		    
		  Wend
		  
		  Return finalPictures()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function drawSmallBoxes(yStart as integer) As integer
		  dim info() as string
		  dim headers() as string
		  dim boxWidth(1) as integer
		  dim numberOfBoxes(1) as integer
		  dim wrapWidth as integer
		  dim n1, n2, n3, n4 as integer
		  dim s1, s2 as string
		  
		  
		  dim x1, y1, x2, y2 as integer
		  dim x, y as integer
		  
		  
		  // Settings
		  dim numberOfRows as integer = 2
		  dim boxMult as Double = 2
		  dim headerFontSize as integer = 10 * masterMult
		  dim infoFontSize as integer = 9 * masterMult
		  dim textFont as string = "Helvetica"
		  dim spaceFromLeftLinetoText as Integer = 2 * masterMult
		  dim spaceFromBottomLinetoText as double = 0.5 * masterMult
		  
		  g.TextSize = headerFontSize
		  smallBoxHeight = g.TextHeight + spaceFromBottomLinetoText
		  
		  
		  If Type = "Estimate" Then
		    
		    'Set up headers and info sources
		    info() = Array( MainWindow.TextField_Event_AcountManager.Text, _
		    MainWindow.TextField_Event_StartTime.Text + "^^" + MainWindow.TextField_Event_StartDate.Text, _
		    MainWindow.TextField_Event_EndTime.Text + "^^" + MainWindow.TextField_Event_EndDate.Text, _
		    MainWindow.TextField_Event_LoadInTime.Text + "^^" + MainWindow.TextField_Event_LoadInDate.Text, _
		    MainWindow.TextField_Event_LoadOutTime.Text + "^^" + MainWindow.TextField_Event_LoadOutDate.Text, _
		    MainWindow.TextField_EIPL_DiscountPercent.Text + "^^" + MainWindow.TextField_EIPL_DiscountAmount.Text, _
		    MainWindow.TextField_EIPL_TaxRate.Text ) ' ^^ = next Line
		    headers() = Array( "Acount Manager", "Event Start", "Event End", "Load-In", "Load-Out", "Discount", "Tax" )
		    
		  ElseIf Type = "Invoice" Then
		    
		    'Set up headers and info sources
		    info() = Array( MainWindow.TextField_Event_AcountManager.Text, _
		    MainWindow.TextField_Event_StartTime.Text + "^^" + MainWindow.TextField_Event_StartDate.Text, _
		    MainWindow.TextField_Event_EndTime.Text + "^^" + MainWindow.TextField_Event_EndDate.Text, _
		    MainWindow.TextField_Event_LoadInTime.Text + "^^" + MainWindow.TextField_Event_LoadInDate.Text, _
		    MainWindow.TextField_Event_LoadOutTime.Text + "^^" + MainWindow.TextField_Event_LoadOutDate.Text, _
		    MainWindow.TextField_EIPL_DiscountPercent.Text + "^^" + MainWindow.TextField_EIPL_DiscountAmount.Text, _
		    MainWindow.TextField_EIPL_TaxRate.Text, _
		    MainWindow.TextField_EIPL_DueDate.Text ) ' ^^ = next Line
		    headers() = Array( "Acount Manager", "Event Start", "Event End", "Load-In", "Load-Out", "Discount", "Tax", "Payment Due"   )
		    
		  ElseIf Type = "Pack List" Then
		    
		    'Set up headers and info sources
		    info() = Array( MainWindow.TextField_Event_AcountManager.Text, _
		    MainWindow.TextField_Event_StartTime.Text + "^^" + MainWindow.TextField_Event_StartDate.Text, _
		    MainWindow.TextField_Event_EndTime.Text + "^^" + MainWindow.TextField_Event_EndDate.Text, _
		    MainWindow.TextField_Event_LoadInTime.Text + "^^" + MainWindow.TextField_Event_LoadInDate.Text, _
		    MainWindow.TextField_Event_LoadOutTime.Text + "^^" + MainWindow.TextField_Event_LoadOutDate.Text ) ' ^^ = next Line
		    headers() = Array( "Acount Manager", "Event Start", "Event End", "Load-In", "Load-Out" )
		    
		  End If
		  
		  // Find the number of boxes
		  numberOfBoxes(0) = Floor( info.Ubound / 2 )
		  
		  // Draw Borders
		  
		  // Vetical 
		  If 1=1 Then
		    
		    // Loop through each Row of double boxes
		    For i2 as integer = 1 To 2
		      
		      'set the first line values
		      x1 = margin
		      y1 = yStart + sectionSpacing
		      x2 = x1
		      y2 = y1 + smallBoxHeight + smallBoxHeight * boxMult
		      
		      If i2 = 2 Then
		        y1 = yStart + sectionSpacing + smallBoxHeight + smallBoxHeight * boxMult + sectionSpacing
		        y2 = y1 + smallBoxHeight + smallBoxHeight * boxMult
		        numberOfBoxes(1) = info.Ubound - numberOfBoxes(0) -1 
		      End If
		      
		      
		      
		      'Figure out smallbox width
		      boxWidth( i2 - 1 ) = ( pageDimentions(0) - margin * 2 ) / ( numberOfBoxes( i2 - 1 ) + 1 )
		      
		      // Loop through this row of small boxes
		      For i1 as integer = 0 To numberOfBoxes( i2 - 1 ) + 1
		        
		        // Draw the Line
		        'g.DrawLine( x1, y1, x2, y2 )
		        g.FillRect( x1, y1, lineWidth, smallBoxHeight + smallBoxHeight * boxMult )
		        
		        
		        If i1 <> numberOfBoxes( i2 - 1 ) + 1 Then
		          x1 = x1 + boxWidth( i2 - 1 )
		          x2 = x1
		        End If
		        
		      Next
		      
		    Next
		    
		  End If
		  
		  // Horizontal
		  If 1=1 Then
		    
		    'Top Line
		    x1 = margin
		    y1 = yStart + sectionSpacing
		    x2 = x1 + pageDimentions(0) - margin * 2
		    y2 = y1
		    'g.DrawLine( x1, y1, x2, y2 )
		    g.FillRect( x1, y1, pageDimentions(0) - margin * 2 - 2, lineWidth )
		    
		    'Header Seperator
		    y1 = y1 + smallBoxHeight
		    y2 = y1
		    'g.DrawLine( x1, y1, x2, y2 )
		    g.FillRect( x1, y1, pageDimentions(0) - margin * 2 - 2, lineWidth )
		    
		    'Bottom of 1st Boxes
		    y1 = y1 + smallBoxHeight * boxMult
		    y2 = y1
		    'g.DrawLine( x1, y1, x2, y2 )
		    g.FillRect( x1, y1, pageDimentions(0) - margin * 2 - 2, lineWidth )
		    
		    'Top of 2nd Boxes
		    y1 = y1 + sectionSpacing
		    y2 = y1
		    'g.DrawLine( x1, y1, x2, y2 )
		    g.FillRect( x1, y1, pageDimentions(0) - margin * 2 - 2, lineWidth )
		    
		    'Header Separator
		    y1 = y1 + smallBoxHeight
		    y2 = y1
		    'g.DrawLine( x1, y1, x2, y2 )
		    g.FillRect( x1, y1, pageDimentions(0) - margin * 2 - 2, lineWidth )
		    
		    'Bottom 2nd Boxes
		    y1 = y1 + smallBoxHeight * boxMult
		    y2 = y1 
		    'g.DrawLine( x1, y1, x2, y2 )
		    g.FillRect( x1, y1, pageDimentions(0) - margin * 2 - 2, lineWidth )
		    
		    
		  End If
		  
		  // Draw Text
		  If 1=1 Then
		    
		    g.TextFont = textFont
		    g.TextSize = headerFontSize
		    g.Bold = True
		    
		    // Loop for 2 rows of double boxes
		    For i1 as integer = 0 To 1
		      
		      // Set Coordinates For Header Text
		      x = margin + boxWidth( i1 ) / 2 
		      wrapWidth = boxWidth(i1)
		      
		      // Loop through each box for the row
		      For i2 as integer = 0 To numberOfBoxes( i1 )
		        
		        If i1 = 0 Then
		          n2 = i2 
		        Else
		          n2 = i2 + numberOfBoxes( 0) + 1
		        End If
		        
		        If headers( n2 ) <> "" Then
		          
		          g.Bold = True
		          g.TextSize = headerFontSize
		          
		          x1 = x - g.StringWidth(headers(n2) ) / 2
		          y = yStart + sectionSpacing + smallBoxHeight - spaceFromBottomLinetoText
		          if i1 = 1 then
		            y = y + smallBoxHeight + smallBoxHeight * boxMult + sectionSpacing
		          End If
		          
		          // Draw the Text
		          g.DrawString( headers(n2), x1, y, wrapWidth, True )
		          
		        End If
		        
		        s1 = ""
		        s2 = ""
		        
		        // Break apart the info text to both lines
		        n1 = InStr( info( n2 ), "^^" )
		        If n1 <> 0 Then
		          s1 = Left( info( n2 ), n1 - 1 )
		          s2 = Mid( info( n2 ), n1 + 2 )
		        Else
		          s1 = info( n2 )
		        End If
		        
		        If s1 <> "" Then
		          
		          g.Bold = False
		          g.TextSize = infoFontSize
		          
		          // Set Coordinates for First line of info text
		          x1 = x - g.StringWidth(s1) / 2
		          y = yStart + sectionSpacing + smallBoxHeight + ( smallBoxHeight * boxMult ) / 2 - spaceFromBottomLinetoText
		          if i1 = 1 then
		            y = y + smallBoxHeight + smallBoxHeight * boxMult + sectionSpacing
		          End If
		          wrapWidth = boxWidth(i1)
		          
		          // Draw the Text
		          g.DrawString( s1, x1, y, wrapWidth, True )
		          
		        End If
		        
		        If s2 <> "" Then
		          
		          g.Bold = False
		          g.TextSize = infoFontSize
		          
		          // Set Coordinates for First line of info text
		          x1 = x - g.StringWidth(s2) / 2
		          y = yStart + sectionSpacing + smallBoxHeight + smallBoxHeight * boxMult - spaceFromBottomLinetoText
		          if i1 = 1 then
		            y = y + smallBoxHeight + smallBoxHeight * boxMult + sectionSpacing
		          End If
		          wrapWidth = boxWidth(i1)
		          
		          // Draw the Text
		          g.DrawString( s2, x1, y, wrapWidth, True )
		          
		        End If
		        
		        x = x + boxWidth( i1 )
		        
		      Next
		      
		    Next
		    
		  End If
		  
		  Return y + sectionSpacing
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private dataDict() As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private footerHeight As Integer = 30
	#tag EndProperty

	#tag Property, Flags = &h21
		Private g As Graphics
	#tag EndProperty

	#tag Property, Flags = &h21
		Private groupDict() As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private headerHeight As Integer = 80
	#tag EndProperty

	#tag Property, Flags = &h21
		Private largeBoxHeight As Integer = 104
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lineWidth As Double = 1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private margin As Integer = 15
	#tag EndProperty

	#tag Property, Flags = &h0
		masterMult As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		p As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		page As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			width height
		#tag EndNote
		pageDimentions() As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private sectionSpacing As Integer = 10
	#tag EndProperty

	#tag Property, Flags = &h21
		Private smallBoxHeight As Integer = 15
	#tag EndProperty

	#tag Property, Flags = &h21
		Private toNextPageDict As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Type As String
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
			Name="masterMult"
			Group="Behavior"
			InitialValue="10"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="p"
			Group="Behavior"
			Type="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="page"
			Group="Behavior"
			Type="Integer"
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
End Class
#tag EndClass
