#tag Class
Protected Class ColorTronClass
	#tag Method, Flags = &h0
		Sub Constructor()
		  dim theColorTronDictIndex as integer
		  
		  
		  theColorTronDictIndex = ColorTronDict.Ubound + 1
		  ReDim ColorTronDict( theColorTronDictIndex )
		  ColorTronDict( theColorTronDictIndex ) = new Dictionary
		  
		  ColorTronDict( theColorTronDictIndex ).Value( "C0V0" ) = &c383B3D
		  ColorTronDict( theColorTronDictIndex ).Value( "C0V1" ) = &c171A1C
		  ColorTronDict( theColorTronDictIndex ).Value( "C0V2" ) = &c212527
		  ColorTronDict( theColorTronDictIndex ).Value( "C0V3" ) = &c2D3032
		  ColorTronDict( theColorTronDictIndex ).Value( "C0V4" ) = &c465258
		  ColorTronDict( theColorTronDictIndex ).Value( "C1V0" ) = &c3E3E42
		  ColorTronDict( theColorTronDictIndex ).Value( "C1V1" ) = &c191A1E
		  ColorTronDict( theColorTronDictIndex ).Value( "C1V2" ) = &c25262A
		  ColorTronDict( theColorTronDictIndex ).Value( "C1V3" ) = &c313236
		  ColorTronDict( theColorTronDictIndex ).Value( "C1V4" ) = &c4E5060
		  ColorTronDict( theColorTronDictIndex ).Value( "C2V0" ) = &c605D59
		  ColorTronDict( theColorTronDictIndex ).Value( "C2V1" ) = &c2C2823
		  ColorTronDict( theColorTronDictIndex ).Value( "C2V2" ) = &c3D3935
		  ColorTronDict( theColorTronDictIndex ).Value( "C2V3" ) = &c4F4B47
		  ColorTronDict( theColorTronDictIndex ).Value( "C2V4" ) = &c8B7D6D
		  ColorTronDict( theColorTronDictIndex ).Value( "C3V0" ) = &c605E59
		  ColorTronDict( theColorTronDictIndex ).Value( "C3V1" ) = &c2C2A23
		  ColorTronDict( theColorTronDictIndex ).Value( "C3V2" ) = &c3D3B35
		  ColorTronDict( theColorTronDictIndex ).Value( "C3V3" ) = &c4F4D47
		  ColorTronDict( theColorTronDictIndex ).Value( "C3V4" ) = &c8B836D
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetColor(pScheme as integer, pColorName as string) As Color
		  
		  Return ColorTronDict( pScheme ).Value( pColorName )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetColorScheme()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ColorTronDict() As Dictionary
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
End Class
#tag EndClass
