VERSION 5.00
Begin VB.Form frmGuildURL 
   BorderStyle     =   0  'None
   Caption         =   "Oficial Web Site"
   ClientHeight    =   1950
   ClientLeft      =   0
   ClientTop       =   -105
   ClientWidth     =   6450
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1950
   ScaleWidth      =   6450
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000006&
      ForeColor       =   &H80000005&
      Height          =   285
      Left            =   600
      TabIndex        =   0
      Top             =   840
      Width           =   5175
   End
   Begin VB.Image command1 
      Height          =   255
      Left            =   5640
      MouseIcon       =   "frmGuildURL.frx":0000
      MousePointer    =   99  'Custom
      Top             =   1680
      Width           =   735
   End
End
Attribute VB_Name = "frmGuildURL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'FenixAO DirectX8
'Engine By �Parra
'Arreglado By Thusing
'Algunas cosas tomadas del cliente de DarkTester


Private Sub command1_Click()
If Text1 <> "" Then _
    Call SendData("NEWWEBSI" & Text1)
Unload Me
End Sub

Private Sub Form_Load()
Me.Picture = LoadPicture(DirGraficos & "GuildURL.gif")
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

   If bmoving = False And Button = vbLeftButton Then

      Dx3 = X

      dy = Y

      bmoving = True

   End If


End Sub

 

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

   If bmoving And ((X <> Dx3) Or (Y <> dy)) Then

      Move Left + (X - Dx3), Top + (Y - dy)

   End If

   

End Sub

 

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

   If Button = vbLeftButton Then

      bmoving = False

   End If

   

End Sub
