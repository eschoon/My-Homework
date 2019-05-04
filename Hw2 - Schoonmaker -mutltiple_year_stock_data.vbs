Sub stockdata()

With ActiveSheet
    .Range("A1", .Range("A1").End(xlDown)).AdvancedFilter Action:=xlFilterCopy, CopyToRange:=.Range("I1"), Unique:=True
End With

 With Range("J2")
        .Formula = "=SUMIF(A:A, I2, G:G)"
        .AutoFill Destination:=Range("J2:J" & Range("I" & Rows.Count).End(xlUp).Row), Type:=xlFillDefault
    End With

With Range("K2")
        .Formula = "=SUMIF(A:A, I2, C:C)- SUMIF(A:A, I2, F:F)"
        .AutoFill Destination:=Range("K2:K" & Range("I" & Rows.Count).End(xlUp).Row), Type:=xlFillDefault
    End With

For i = 2 To 3169
      Set r1 = Range("K" & i)
      
      If r1.Value > 0 Then r1.Interior.ColorIndex = 4
      If r1.Value < 0 Then r1.Interior.ColorIndex = 3
     
   Next i
End Sub
