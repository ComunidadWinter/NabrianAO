VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "richtx32.ocx"
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "msinet.ocx"
Object = "{33101C00-75C3-11CF-A8A0-444553540000}#1.0#0"; "cswsk32.ocx"
Object = "{B370EF78-425C-11D1-9A28-004033CA9316}#2.0#0"; "Captura.ocx"
Begin VB.Form frmPrincipal 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   ClientHeight    =   9015
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12000
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00000000&
   HasDC           =   0   'False
   Icon            =   "frmMain.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   NegotiateMenus  =   0   'False
   ScaleHeight     =   601
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   800
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin SocketWrenchCtrl.Socket Socket1 
      Left            =   720
      Top             =   3000
      _Version        =   65536
      _ExtentX        =   741
      _ExtentY        =   741
      _StockProps     =   0
      AutoResolve     =   0   'False
      Backlog         =   1
      Binary          =   0   'False
      Blocking        =   0   'False
      Broadcast       =   0   'False
      BufferSize      =   2048
      HostAddress     =   ""
      HostFile        =   "FlamiusAO"
      HostName        =   "FlamiusAO"
      InLine          =   0   'False
      Interval        =   0
      KeepAlive       =   0   'False
      Library         =   ""
      Linger          =   0
      LocalPort       =   10200
      LocalService    =   ""
      Protocol        =   0
      RemotePort      =   10200
      RemoteService   =   ""
      ReuseAddress    =   0   'False
      Route           =   -1  'True
      Timeout         =   999999
      Type            =   1
      Urgent          =   0   'False
   End
   Begin VB.CheckBox CheckCasTleHE 
      BackColor       =   &H00000000&
      Caption         =   "Castear Hechizo"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Left            =   10320
      MaskColor       =   &H00000000&
      TabIndex        =   111
      Top             =   5640
      Value           =   1  'Checked
      Width           =   180
   End
   Begin VB.TextBox SendTxt 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   91
      TabStop         =   0   'False
      ToolTipText     =   "Chat"
      Top             =   1830
      Visible         =   0   'False
      Width           =   8145
   End
   Begin RichTextLib.RichTextBox rectxt 
      Height          =   1305
      Left            =   240
      TabIndex        =   77
      TabStop         =   0   'False
      Top             =   360
      Width           =   7905
      _ExtentX        =   13944
      _ExtentY        =   2302
      _Version        =   393217
      BackColor       =   0
      BorderStyle     =   0
      ReadOnly        =   -1  'True
      ScrollBars      =   2
      DisableNoScroll =   -1  'True
      Appearance      =   0
      AutoVerbMenu    =   -1  'True
      TextRTF         =   $"frmMain.frx":30651
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   6.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.PictureBox Minimap 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1440
      Left            =   10365
      ScaleHeight     =   96
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   100
      TabIndex        =   75
      Top             =   7425
      Width           =   1500
   End
   Begin VB.Timer Perdedor 
      Enabled         =   0   'False
      Interval        =   5000
      Left            =   6720
      Top             =   7200
   End
   Begin VB.Timer Ganador 
      Enabled         =   0   'False
      Interval        =   5000
      Left            =   6240
      Top             =   7200
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   285
      Left            =   4080
      TabIndex        =   71
      Text            =   "Text1"
      Top             =   9840
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Timer DetectedCheats 
      Enabled         =   0   'False
      Interval        =   300
      Left            =   1200
      Top             =   3000
   End
   Begin VB.Timer AntiExternos 
      Enabled         =   0   'False
      Interval        =   25000
      Left            =   1680
      Top             =   3000
   End
   Begin VB.Frame frInvent 
      BorderStyle     =   0  'None
      Height          =   3720
      Left            =   8445
      TabIndex        =   18
      Top             =   1740
      Width           =   3525
      Begin VB.Image Shape2 
         Height          =   480
         Left            =   0
         Picture         =   "frmMain.frx":306CF
         Top             =   600
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         BorderStyle     =   3  'Dot
         Height          =   480
         Left            =   2760
         Top             =   3840
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   10
         Left            =   2520
         TabIndex        =   69
         Top             =   1140
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   9
         Left            =   2040
         TabIndex        =   68
         Top             =   1140
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   25
         Left            =   2520
         TabIndex        =   67
         Top             =   2760
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   24
         Left            =   2040
         TabIndex        =   66
         Top             =   2745
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   23
         Left            =   1560
         TabIndex        =   65
         Top             =   2760
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   22
         Left            =   1080
         TabIndex        =   64
         Top             =   2760
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   21
         Left            =   600
         TabIndex        =   63
         Top             =   2760
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   20
         Left            =   2520
         TabIndex        =   62
         Top             =   2220
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   19
         Left            =   2040
         TabIndex        =   61
         Top             =   2220
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   18
         Left            =   1560
         TabIndex        =   60
         Top             =   2220
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   17
         Left            =   1080
         TabIndex        =   59
         Top             =   2220
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   16
         Left            =   600
         TabIndex        =   58
         Top             =   2220
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   15
         Left            =   2520
         TabIndex        =   57
         Top             =   1680
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   14
         Left            =   2040
         TabIndex        =   56
         Top             =   1680
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   13
         Left            =   1560
         TabIndex        =   55
         Top             =   1680
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   12
         Left            =   1080
         TabIndex        =   54
         Top             =   1680
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   11
         Left            =   600
         TabIndex        =   53
         Top             =   1680
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   7
         Left            =   1080
         TabIndex        =   52
         Top             =   1140
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   6
         Left            =   600
         TabIndex        =   51
         Top             =   1140
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   5
         Left            =   2520
         TabIndex        =   50
         Top             =   600
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   4
         Left            =   2040
         TabIndex        =   49
         Top             =   600
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   2
         Left            =   1080
         TabIndex        =   48
         Top             =   600
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   8
         Left            =   1560
         TabIndex        =   47
         Top             =   1140
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   1
         Left            =   600
         TabIndex        =   46
         Top             =   600
         Width           =   480
      End
      Begin VB.Label lblObjCant 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Index           =   3
         Left            =   1560
         TabIndex        =   45
         Top             =   600
         Width           =   480
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   1
         Left            =   960
         TabIndex        =   44
         Top             =   960
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   2
         Left            =   1440
         TabIndex        =   43
         Top             =   960
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   4
         Left            =   2400
         TabIndex        =   42
         Top             =   960
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   5
         Left            =   2880
         TabIndex        =   41
         Top             =   960
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   6
         Left            =   960
         TabIndex        =   40
         Top             =   1500
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   7
         Left            =   1440
         TabIndex        =   39
         Top             =   1500
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   8
         Left            =   1920
         TabIndex        =   38
         Top             =   1500
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   9
         Left            =   2400
         TabIndex        =   37
         Top             =   1500
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   10
         Left            =   2880
         TabIndex        =   36
         Top             =   1500
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   11
         Left            =   960
         TabIndex        =   35
         Top             =   2040
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   12
         Left            =   1440
         TabIndex        =   34
         Top             =   2040
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   13
         Left            =   1920
         TabIndex        =   33
         Top             =   2040
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   15
         Left            =   2880
         TabIndex        =   32
         Top             =   2040
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   20
         Left            =   2880
         TabIndex        =   31
         Top             =   2580
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   19
         Left            =   2400
         TabIndex        =   30
         Top             =   2580
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   18
         Left            =   1920
         TabIndex        =   29
         Top             =   2580
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   17
         Left            =   1440
         TabIndex        =   28
         Top             =   2580
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   16
         Left            =   960
         TabIndex        =   27
         Top             =   2580
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   21
         Left            =   960
         TabIndex        =   26
         Top             =   3120
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   22
         Left            =   1440
         TabIndex        =   25
         Top             =   3120
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   23
         Left            =   1920
         TabIndex        =   24
         Top             =   3120
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   24
         Left            =   2400
         TabIndex        =   23
         Top             =   3120
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   25
         Left            =   2880
         TabIndex        =   22
         Top             =   3120
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   3
         Left            =   1920
         TabIndex        =   21
         Top             =   960
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Index           =   14
         Left            =   2400
         TabIndex        =   20
         Top             =   2040
         Visible         =   0   'False
         Width           =   165
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   25
         Left            =   2520
         Stretch         =   -1  'True
         Top             =   2790
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   24
         Left            =   2040
         Stretch         =   -1  'True
         Top             =   2790
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   23
         Left            =   1560
         Stretch         =   -1  'True
         Top             =   2790
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   22
         Left            =   1080
         Stretch         =   -1  'True
         Top             =   2790
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   21
         Left            =   600
         Stretch         =   -1  'True
         Top             =   2790
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   20
         Left            =   2520
         Stretch         =   -1  'True
         Top             =   2250
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   19
         Left            =   2040
         Stretch         =   -1  'True
         Top             =   2250
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   18
         Left            =   1560
         Stretch         =   -1  'True
         Top             =   2250
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   17
         Left            =   1080
         Stretch         =   -1  'True
         Top             =   2250
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   16
         Left            =   600
         Stretch         =   -1  'True
         Top             =   2250
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   15
         Left            =   2520
         Stretch         =   -1  'True
         Top             =   1710
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   14
         Left            =   2040
         Stretch         =   -1  'True
         Top             =   1710
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   13
         Left            =   1560
         Stretch         =   -1  'True
         Top             =   1710
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   12
         Left            =   1080
         Stretch         =   -1  'True
         Top             =   1710
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   11
         Left            =   600
         Stretch         =   -1  'True
         Top             =   1710
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   10
         Left            =   2520
         Stretch         =   -1  'True
         Top             =   1170
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   9
         Left            =   2040
         Stretch         =   -1  'True
         Top             =   1170
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   8
         Left            =   1560
         Stretch         =   -1  'True
         Top             =   1170
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   7
         Left            =   1080
         Stretch         =   -1  'True
         Top             =   1170
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   6
         Left            =   600
         Stretch         =   -1  'True
         Top             =   1170
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   5
         Left            =   2520
         Stretch         =   -1  'True
         Top             =   630
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   4
         Left            =   2040
         Stretch         =   -1  'True
         Top             =   630
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   2
         Left            =   1080
         Stretch         =   -1  'True
         Top             =   630
         Width           =   480
      End
      Begin VB.Label lblHechizos 
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   2040
         MouseIcon       =   "frmMain.frx":30813
         TabIndex        =   19
         Top             =   120
         Width           =   1440
      End
      Begin VB.Image imgObjeto 
         Appearance      =   0  'Flat
         Height          =   480
         Index           =   1
         Left            =   600
         Stretch         =   -1  'True
         Top             =   630
         Width           =   480
      End
      Begin VB.Image imgObjeto 
         Height          =   480
         Index           =   3
         Left            =   1560
         Top             =   630
         Width           =   480
      End
      Begin VB.Image Image5 
         Height          =   135
         Index           =   0
         Left            =   360
         MouseIcon       =   "frmMain.frx":30B1D
         Top             =   3360
         Width           =   315
      End
      Begin VB.Image Image5 
         Height          =   135
         Index           =   1
         Left            =   720
         MouseIcon       =   "frmMain.frx":30E27
         Top             =   3360
         Width           =   315
      End
      Begin VB.Image Image5 
         Height          =   195
         Index           =   2
         Left            =   1080
         MouseIcon       =   "frmMain.frx":31131
         Top             =   3360
         Width           =   255
      End
      Begin VB.Image Image5 
         Height          =   195
         Index           =   3
         Left            =   1440
         MouseIcon       =   "frmMain.frx":3143B
         Top             =   3360
         Width           =   135
      End
      Begin VB.Image imgFondoInvent 
         Height          =   3735
         Left            =   0
         Top             =   0
         Width           =   3555
      End
   End
   Begin VB.Timer TIMERQUECARAJO 
      Enabled         =   0   'False
      Interval        =   20000
      Left            =   5760
      Top             =   7200
   End
   Begin Captura.wndCaptura Captura1 
      Left            =   1200
      Top             =   3480
      _ExtentX        =   688
      _ExtentY        =   688
   End
   Begin VB.PictureBox Picture1 
      Enabled         =   0   'False
      Height          =   255
      Left            =   5760
      ScaleHeight     =   195
      ScaleWidth      =   915
      TabIndex        =   10
      Top             =   9600
      Visible         =   0   'False
      Width           =   975
   End
   Begin InetCtlsObjects.Inet Inet1 
      Left            =   3240
      Top             =   2880
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      RequestTimeout  =   30
   End
   Begin VB.PictureBox Picture2 
      Height          =   15
      Left            =   7920
      ScaleHeight     =   15
      ScaleWidth      =   135
      TabIndex        =   76
      Top             =   1560
      Width           =   135
   End
   Begin VB.PictureBox renderer 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   6180
      Left            =   120
      ScaleHeight     =   412
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   540
      TabIndex        =   73
      Top             =   2205
      Width           =   8100
      Begin VB.Timer GuiaMensajes 
         Interval        =   60000
         Left            =   3840
         Top             =   3840
      End
   End
   Begin VB.Frame frHechizos 
      BackColor       =   &H000000C0&
      BorderStyle     =   0  'None
      ForeColor       =   &H00E0E0E0&
      Height          =   3570
      Left            =   8490
      TabIndex        =   12
      Top             =   1785
      Width           =   3510
      Begin VB.ListBox lstHechizos 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   2370
         ItemData        =   "frmMain.frx":31745
         Left            =   240
         List            =   "frmMain.frx":3174C
         TabIndex        =   95
         Top             =   600
         Width           =   2650
      End
      Begin VB.Image lblLanzar 
         Height          =   525
         Left            =   240
         MousePointer    =   99  'Custom
         Top             =   3000
         Width           =   1575
      End
      Begin VB.Label lblArriba 
         BackColor       =   &H00FF0000&
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   3000
         MouseIcon       =   "frmMain.frx":3175D
         MousePointer    =   99  'Custom
         TabIndex        =   17
         Top             =   600
         Width           =   180
      End
      Begin VB.Label lblAbajo 
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   165
         Left            =   3000
         MouseIcon       =   "frmMain.frx":31A67
         MousePointer    =   99  'Custom
         TabIndex        =   16
         Top             =   960
         Width           =   180
      End
      Begin VB.Label lblInfo 
         BackStyle       =   0  'Transparent
         Height          =   480
         Left            =   1920
         MouseIcon       =   "frmMain.frx":31D71
         TabIndex        =   15
         Top             =   3000
         Width           =   930
      End
      Begin VB.Label lblInvent 
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -120
         MouseIcon       =   "frmMain.frx":3207B
         TabIndex        =   14
         Top             =   120
         Width           =   1590
      End
      Begin VB.Label lblCh 
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Height          =   615
         Left            =   840
         TabIndex        =   13
         Top             =   2040
         Width           =   1935
      End
      Begin VB.Image imgFondoHechizos 
         Height          =   3735
         Left            =   0
         Picture         =   "frmMain.frx":32385
         Top             =   0
         Width           =   3510
      End
   End
   Begin VB.Label Label15 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Casti"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   2400
      TabIndex        =   110
      Top             =   1815
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label Label14 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "GM"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   1920
      TabIndex        =   109
      Top             =   1815
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Hili"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   3000
      TabIndex        =   108
      Top             =   1815
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label Label12 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Ulla"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   3360
      TabIndex        =   107
      Top             =   1815
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Arghal"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   3840
      TabIndex        =   106
      Top             =   1815
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Espe"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   4440
      TabIndex        =   105
      Top             =   1815
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Nix"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   4920
      TabIndex        =   104
      Top             =   1815
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Bander"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   5400
      TabIndex        =   103
      Top             =   1815
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Ip"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   6120
      TabIndex        =   102
      Top             =   1815
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label LabelSoporte 
      BackStyle       =   0  'Transparent
      Caption         =   "??Tienes un soporte nuevo!!"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   375
      Left            =   10920
      TabIndex        =   101
      Top             =   5880
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.Image Image9 
      Height          =   255
      Left            =   11280
      Top             =   0
      Width           =   375
   End
   Begin VB.Image Image6 
      Height          =   255
      Left            =   11640
      Top             =   0
      Width           =   375
   End
   Begin VB.Label CORD 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1 - 50 - 50"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   8520
      TabIndex        =   100
      Top             =   8475
      Width           =   1575
   End
   Begin VB.Image Image7 
      Height          =   375
      Left            =   9600
      Top             =   0
      Width           =   1215
   End
   Begin VB.Image Image3 
      Height          =   255
      Left            =   8640
      Top             =   5880
      Width           =   255
   End
   Begin VB.Label LabeltransFXNick 
      Caption         =   "Label4"
      Height          =   495
      Left            =   5400
      TabIndex        =   97
      Top             =   4320
      Width           =   1215
   End
   Begin VB.Label LabelTransfX 
      Caption         =   "Label4"
      Height          =   495
      Left            =   5400
      TabIndex        =   96
      Top             =   4320
      Width           =   1215
   End
   Begin VB.Image Image2 
      Height          =   255
      Left            =   8640
      Top             =   5640
      Width           =   255
   End
   Begin VB.Label LvlLbl 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "(100%)"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Left            =   9945
      TabIndex        =   78
      Top             =   1095
      Width           =   465
   End
   Begin VB.Label barrita 
      Height          =   210
      Left            =   9240
      TabIndex        =   94
      Top             =   1080
      Width           =   1890
   End
   Begin VB.Label Moverpantalla 
      BackStyle       =   0  'Transparent
      Height          =   255
      Left            =   -2640
      TabIndex        =   74
      Top             =   0
      Width           =   12135
   End
   Begin VB.Label soportelabel 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Soportes"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   240
      Left            =   7320
      TabIndex        =   93
      Top             =   1815
      Visible         =   0   'False
      Width           =   885
   End
   Begin VB.Label panelgmlabel 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Panelgm"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   6480
      TabIndex        =   92
      Top             =   1815
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label arma 
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "N/A"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3690
      TabIndex        =   90
      Top             =   8685
      Width           =   525
   End
   Begin VB.Label escudo 
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "N/A"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1650
      TabIndex        =   89
      Top             =   8685
      Width           =   540
   End
   Begin VB.Label armadura 
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "N/A"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   645
      TabIndex        =   88
      Top             =   8685
      Width           =   540
   End
   Begin VB.Label casco 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "N/A"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2445
      TabIndex        =   87
      Top             =   8685
      Width           =   705
   End
   Begin VB.Image ImgMen 
      Appearance      =   0  'Flat
      Height          =   330
      Left            =   10530
      MouseIcon       =   "frmMain.frx":3CED8
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":3DBA2
      Top             =   5925
      Visible         =   0   'False
      Width           =   330
   End
   Begin VB.Label NumCanjesD 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF80FF&
      Height          =   255
      Left            =   9000
      TabIndex        =   84
      Top             =   5955
      Width           =   1095
   End
   Begin VB.Image Image8 
      Height          =   375
      Left            =   10320
      Top             =   6720
      Width           =   1335
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Neliam"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   9240
      TabIndex        =   83
      Top             =   735
      Width           =   1905
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "C"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   11400
      TabIndex        =   82
      Top             =   570
      Visible         =   0   'False
      Width           =   105
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "F"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   11400
      TabIndex        =   81
      Top             =   1110
      Visible         =   0   'False
      Width           =   105
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "R"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   11400
      TabIndex        =   80
      Top             =   840
      Visible         =   0   'False
      Width           =   120
   End
   Begin VB.Label lblNivel 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "45"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   255
      Left            =   8580
      TabIndex        =   79
      Top             =   645
      Width           =   345
   End
   Begin VB.Label MB 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   135
      Left            =   8400
      TabIndex        =   72
      Top             =   1800
      Width           =   255
   End
   Begin VB.Label lblletra 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   8400
      TabIndex        =   70
      Top             =   1920
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Label NumFrags 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   4560
      TabIndex        =   11
      Top             =   9120
      Width           =   615
   End
   Begin VB.Image Image1 
      Height          =   300
      Index           =   3
      Left            =   2520
      MouseIcon       =   "frmMain.frx":40276
      MousePointer    =   99  'Custom
      Top             =   9840
      Width           =   45
   End
   Begin VB.Image Party 
      Height          =   135
      Left            =   9840
      MouseIcon       =   "frmMain.frx":40580
      MousePointer    =   99  'Custom
      Top             =   9840
      Visible         =   0   'False
      Width           =   1410
   End
   Begin VB.Label NumOnline 
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   210
      Left            =   4935
      TabIndex        =   9
      Top             =   8640
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Label modo 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "1 Normal"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   210
      Left            =   240
      TabIndex        =   8
      Top             =   1830
      Width           =   735
   End
   Begin VB.Label Agilidad 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0C0&
      Height          =   255
      Left            =   5970
      TabIndex        =   7
      Top             =   8625
      Width           =   225
   End
   Begin VB.Label Fuerza 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0C0&
      Height          =   255
      Left            =   6405
      TabIndex        =   6
      Top             =   8625
      Width           =   225
   End
   Begin VB.Label mapa 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Ullathorpe"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   8520
      TabIndex        =   5
      Top             =   8235
      Width           =   1575
   End
   Begin VB.Image Image4 
      Height          =   135
      Left            =   10080
      Top             =   9600
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label cantidadsta 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0/0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   165
      Left            =   8730
      TabIndex        =   4
      Top             =   6435
      Width           =   1245
   End
   Begin VB.Shape STAShp 
      BackColor       =   &H00008080&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FFFF&
      Height          =   105
      Left            =   8730
      Top             =   6495
      Width           =   1275
   End
   Begin VB.Label GldLbl 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   210
      Left            =   9000
      TabIndex        =   1
      Top             =   5700
      Width           =   1050
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   7200
      TabIndex        =   0
      Top             =   9720
      Visible         =   0   'False
      Width           =   105
   End
   Begin VB.Image imgSoporte 
      Appearance      =   0  'Flat
      Height          =   390
      Left            =   10560
      Top             =   5880
      Width           =   255
   End
   Begin VB.Label cantidadmana 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0/0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   165
      Left            =   8730
      TabIndex        =   85
      Top             =   7140
      Width           =   1245
   End
   Begin VB.Shape ManSHp 
      BackColor       =   &H00808000&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FFFF&
      Height          =   105
      Left            =   8730
      Top             =   7200
      Width           =   1275
   End
   Begin VB.Label cantidadhambre 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0/0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   165
      Left            =   8730
      TabIndex        =   2
      Top             =   7485
      Width           =   1245
   End
   Begin VB.Label cantidadagua 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0/0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   165
      Left            =   8730
      TabIndex        =   3
      Top             =   7845
      Width           =   1245
   End
   Begin VB.Shape COMIDAsp 
      BackColor       =   &H00004000&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FFFF&
      Height          =   105
      Left            =   8730
      Top             =   7560
      Width           =   1275
   End
   Begin VB.Shape AGUAsp 
      BackColor       =   &H00C00000&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H0000FFFF&
      Height          =   105
      Left            =   8730
      Top             =   7920
      Width           =   1275
   End
   Begin VB.Label cantidadhp 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0/0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   165
      Left            =   8730
      TabIndex        =   86
      Top             =   6795
      Width           =   1245
   End
   Begin VB.Shape HpShp 
      BackColor       =   &H000000C0&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      FillColor       =   &H000000C0&
      Height          =   105
      Left            =   8730
      Top             =   6855
      Width           =   1275
   End
   Begin VB.Label Reputacion 
      BackStyle       =   0  'Transparent
      Caption         =   "Reputaci?n:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008080&
      Height          =   255
      Index           =   1
      Left            =   10200
      TabIndex        =   99
      Top             =   6330
      Width           =   2775
   End
   Begin VB.Label Reputacion 
      BackStyle       =   0  'Transparent
      Caption         =   "Reputaci?n: "
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0FF&
      Height          =   255
      Index           =   0
      Left            =   10200
      TabIndex        =   98
      Top             =   6345
      Width           =   2775
   End
   Begin VB.Label Reputacion 
      BackStyle       =   0  'Transparent
      Caption         =   "Castear Hechi"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008080&
      Height          =   255
      Index           =   2
      Left            =   10560
      TabIndex        =   112
      Top             =   5625
      Width           =   2775
   End
   Begin VB.Label Reputacion 
      BackStyle       =   0  'Transparent
      Caption         =   "Castear Hechi"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0FF&
      Height          =   255
      Index           =   4
      Left            =   10560
      TabIndex        =   113
      Top             =   5640
      Width           =   2775
   End
End
Attribute VB_Name = "frmPrincipal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
 
'director del proyecto: #Esteban(Neliam)

'servidor basado en f?nixao 1.0
'medios de contacto:
'Skype: dc.esteban
'E-mail: nabrianao@gmail.com
Option Explicit
'HIDE
Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long


Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As Any, ByVal lpWindowName As Any) As Long
Private Declare Function FindWindowEx Lib "user32" Alias "FindWindowExA" (ByVal hWnd1 As Long, ByVal hWnd2 As Long, ByVal lpsz1 As String, ByVal lpsz2 As String) As Long


Private Declare Function SendMessage Lib "user32" Alias "SendMessageW" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function GetWindow Lib "user32" (ByVal hwnd As Long, ByVal wCmd As Long) As Long
Const GW_HWNDNEXT = 2: Const WM_GETTEXTLENGTH = &HE: Const WM_GETTEXT = &HD


    Dim test_hwnd&: Dim TabStops(1) As Long

'HIDE

Dim StartX, StartY
Dim h As Integer

Private Type POINTAPI
    X As Long
    Y As Long
End Type
 
Private Declare Function GetClassName Lib "user32" Alias _
 "GetClassNameA" ( _
 ByVal hwnd As Long, _
 ByVal lpGetClassNameA As String, _
 ByVal nMaxCount As Long) As Long
 

Private Type BLENDFUNCTION
BlendOp As Byte
BlendFlags As Byte
SourceConstantAlpha As Byte
AlphaFormat As Byte
End Type
Private Const AC_SRC_OVER = &H0
   
Private Declare Function AlphaBlend Lib "msimg32.dll" (ByVal hdcDest As Long, ByVal xOriginDest As Long, ByVal yOriginDest As Long, ByVal WidthDest As Long, ByVal HeightDest As Long, ByVal hdcsrc As Long, ByVal xOriginSrc As Long, ByVal yOriginSrc As Long, ByVal WidthSrc As Long, ByVal HeightSrc As Long, ByVal BLENDFUNCT As Long) As Long
Private Declare Sub RtlMoveMemory Lib "kernel32.dll" (Destination As Any, Source As Any, ByVal Length As Long)
   
Dim Blend As BLENDFUNCTION
Dim blendlong As Long
Dim Contador As Integer

Public tX As Integer
Public tY As Integer
Public MouseX As Long
Public MouseY As Long

Dim POS(0) As DSBPOSITIONNOTIFY
Public IsPlaying As Byte
Public boton As Integer

Dim endEvent As Long



'HIDE
Public Function WinGetHandle&(szTitle$)
    test_hwnd& = FindWindow(ByVal 0&, ByVal 0&)
    Dim i As Long
    Do While test_hwnd& <> 0
     i = i + 1
        If InStr(LCase(WinGetText$(test_hwnd&)), LCase(szTitle$)) Then
            WinGetHandle& = test_hwnd&
            Exit Function
        End If
       
        If i > 70 Then Exit Function
        test_hwnd& = GetWindow(test_hwnd&, GW_HWNDNEXT)
    Loop
End Function
 
Public Function WinGetText$(hwnd&)
    Dim Length&
    Length& = SendMessage(hwnd&, WM_GETTEXTLENGTH, ByVal 0, ByVal 0) + 1
    WinGetText$ = Space(Length&)
    SendMessage hwnd&, WM_GETTEXT, ByVal Length&, ByVal StrPtr(WinGetText$)
    WinGetText$ = Left$(WinGetText$, Length&)
End Function
'HIDE



Private Sub AntiExternos_Timer()
If SeguridadActiva = True Then
If logged Then
If FindWindow(vbNullString, UCase$("Cheat Engine 5.1.1")) Then
    Call AoDefCheatDetect("Cheat Engine")
ElseIf FindWindow(vbNullString, UCase$("AutoClick 2.2")) Then
    Call AoDefCheatDetect("AutoClick")
ElseIf FindWindow(vbNullString, UCase$("ART-MONEY")) Then
    Call AoDefCheatDetect("Art-Money")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine 5.0")) Then
    Call AoDefCheatDetect("Cheat Engine 5.0")
ElseIf FindWindow(vbNullString, UCase$("CROWN MAKRO")) Then
    Call AoDefCheatDetect("Crown Makro")
ElseIf FindWindow(vbNullString, UCase$("A TRABAJAR...")) Then
    Call AoDefCheatDetect("Macro")
ElseIf FindWindow(vbNullString, UCase$("ews")) Then
    Call AoDefCheatDetect("Macro")
ElseIf FindWindow(vbNullString, UCase$("Pts")) Then
    Call AoDefCheatDetect("Auto Potas")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine 5.2")) Then
    Call AoDefCheatDetect("Cheat Engine 5.2")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine 5.6")) Then
    Call AoDefCheatDetect("Cheat Engine 5.6")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine 5.7")) Then
    Call AoDefCheatDetect("Cheat Engine 5.7")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine 5.9")) Then
    Call AoDefCheatDetect("Cheat Engine 5.9")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine 6.0")) Then
    Call AoDefCheatDetect("Cheat Engine 6.0")
ElseIf FindWindow(vbNullString, UCase$("SOLOCOVO?")) Then
    Call AoDefCheatDetect("SOLOCOVO?")
ElseIf FindWindow(vbNullString, UCase$("MACROCRACK <GONZA_VI@HOTMAIL.COM>")) Then
    Call AoDefCheatDetect("MACROCRACK <GONZA_VI@HOTMAIL.COM>")
ElseIf FindWindow(vbNullString, UCase$("MACROCRACK <GONZA_VJ@HOTMAIL.COM>")) Then
    Call AoDefCheatDetect("MACROCRACK <GONZA_VJ@HOTMAIL.COM>")
ElseIf FindWindow(vbNullString, UCase$("MACRO CRACK <GONZA_VI@HOTMAIL.COM>")) Then
    Call AoDefCheatDetect("MACRO CRACK <GONZA_VI@HOTMAIL.COM>")
ElseIf FindWindow(vbNullString, UCase$("MACRO CRACK <GONZA_VJ@HOTMAIL.COM>")) Then
    Call AoDefCheatDetect("MACRO CRACK <GONZA_VJ@HOTMAIL.COM>")
ElseIf FindWindow(vbNullString, UCase$("CHITS")) Then
    Call AoDefCheatDetect("CHITS")
ElseIf FindWindow(vbNullString, UCase$("ORKAM")) Then
    Call AoDefCheatDetect("ORKAM")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine V5.4")) Then
    Call AoDefCheatDetect("Cheat Engine V5.4")
ElseIf FindWindow(vbNullString, UCase$("Countach")) Then
    Call AoDefCheatDetect("Countach")
ElseIf FindWindow(vbNullString, UCase$("MacroRecorder")) Then
    Call AoDefCheatDetect("MacroRecorder")
ElseIf FindWindow(vbNullString, UCase$("Ultimatemacros")) Then
    Call AoDefCheatDetect("Ultimatemacros")
ElseIf FindWindow(vbNullString, UCase$("MacroLauncher")) Then
    Call AoDefCheatDetect("MacroLauncher")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine 5.5")) Then
    Call AoDefCheatDetect("Cheat Engine 5.5")
ElseIf FindWindow(vbNullString, UCase$("Auto Remo- TheFrank^")) Then
    Call AoDefCheatDetect("Auto Remo- TheFrank^")
ElseIf FindWindow(vbNullString, UCase$("WPE PRO")) Then
    Call AoDefCheatDetect("WPE PRO")
ElseIf FindWindow(vbNullString, UCase$("WPE PRO - " & AoDefOriginalClientName & ".exe")) Then
    Call AoDefCheatDetect("WPE PRO")
ElseIf FindWindow(vbNullString, UCase$("WPE PRO - [WPEPRO2]")) Then
    Call AoDefCheatDetect("WPE PRO")
ElseIf FindWindow(vbNullString, UCase$("WPE PRO [WPEPRO2]")) Then
    Call AoDefCheatDetect("WPE PRO")
ElseIf FindWindow(vbNullString, UCase$("WPE PRO - " & AoDefOriginalClientName & ".exe" & " - [WPEPRO2]")) Then
    Call AoDefCheatDetect("WPE PRO")
ElseIf FindWindow(vbNullString, UCase$("rPE - rEdoX Packet Editor")) Then
    Call AoDefCheatDetect("rPE - rEdoX Packet Editor")
ElseIf FindWindow(vbNullString, UCase$("MACRO FOWL")) Then
    Call AoDefCheatDetect("MACRO FOWL")
ElseIf FindWindow(vbNullString, UCase$("MINI MACRO BY FOWL WWW.XTREME-ZONE.NET")) Then
    Call AoDefCheatDetect("MINI MACRO BY FOWL WWW.XTREME-ZONE.NET")
ElseIf FindWindow(vbNullString, UCase$("MACROSARAZA")) Then
    Call AoDefCheatDetect("MACROSARAZA")
ElseIf FindWindow(vbNullString, UCase$("Macroncmurd")) Then
    Call AoDefCheatDetect("Macroncmurd")
ElseIf FindWindow(vbNullString, UCase$("AUTOTRAINING")) Then
    Call AoDefCheatDetect("AUTOTRAINING")
ElseIf FindWindow(vbNullString, UCase$("0RK4M Version 1.5")) Then
    Call AoDefCheatDetect("0RK4M Version 1.5")
ElseIf FindWindow(vbNullString, UCase$("cmd")) Then
    Call AoDefCheatDetect("cmd")
ElseIf FindWindow(vbNullString, UCase$("X-Z MULTIMACRO VERSION II BY THEGABYX WWW.XTREME-ZONE.NET")) Then
    Call AoDefCheatDetect("X-Z MULTIMACRO VERSION II BY THEGABYX WWW.XTREME-ZONE.NET")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine 6.0")) Then
    Call AoDefCheatDetect("Cheat Engine 6.0")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine 6.1")) Then
    Call AoDefCheatDetect("Cheat Engine 6.1")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine 5.4")) Then
    Call AoDefCheatDetect("Cheat Engine 5.4")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine 5.5")) Then
    Call AoDefCheatDetect("Cheat Engine 5.5")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine 5.8")) Then
    Call AoDefCheatDetect("Cheat Engine 5.8")
ElseIf FindWindow(vbNullString, UCase$("SoLocoVo?")) Then
    Call AoDefCheatDetect("SOLOCOVO?")
ElseIf FindWindow(vbNullString, UCase$("-=[ANUBYS RADAR]=-")) Then
    Call AoDefCheatDetect("-=[ANUBYS RADAR]=-")
ElseIf FindWindow(vbNullString, UCase$("CRAZY SPEEDER 1.05")) Then
    Call AoDefCheatDetect("CRAZY SPEEDER 1.05")
ElseIf FindWindow(vbNullString, UCase$("SET !XSPEED.NET")) Then
    Call AoDefCheatDetect("SET !XSPEED.NET")
ElseIf FindWindow(vbNullString, UCase$("SPEEDERXP V1.80 - UNREGISTERED")) Then
    Call AoDefCheatDetect("SPEEDERXP V1.80 - UNREGISTERED")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine 5.3")) Then
    Call AoDefCheatDetect("Cheat Engine 5.3")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine 5.1")) Then
    Call AoDefCheatDetect("Cheat Engine 5.1")
ElseIf FindWindow(vbNullString, UCase$("A SPEEDER")) Then
    Call AoDefCheatDetect("A SPEEDER")
ElseIf FindWindow(vbNullString, UCase$("MEMO :P")) Then
    Call AoDefCheatDetect("MEMO :P")
ElseIf FindWindow(vbNullString, UCase$("ORK4M VERSION 1.5")) Then
    Call AoDefCheatDetect("ORK4M VERSION 1.5")
ElseIf FindWindow(vbNullString, UCase$("BY FEDEX")) Then
    Call AoDefCheatDetect("By Fedex")
ElseIf FindWindow(vbNullString, UCase$("!XSPEED.NET +4.59")) Then
    Call AoDefCheatDetect("!Xspeeder")
ElseIf FindWindow(vbNullString, UCase$("CAMBIA TITULOS DE CHEATS BY FEDEX")) Then
    Call AoDefCheatDetect("Cambia titulos")
ElseIf FindWindow(vbNullString, UCase$("NEWENG OCULTO")) Then
    Call AoDefCheatDetect("NEWENG OCULTO")
ElseIf FindWindow(vbNullString, UCase$("SERBIO ENGINE")) Then
    Call AoDefCheatDetect("SERBIO ENGINE")
ElseIf FindWindow(vbNullString, UCase$("REYMIX ENGINE 5.3 PUBLIC")) Then
    Call AoDefCheatDetect("REYMIX ENGINE 5.3 PUBLIC")
ElseIf FindWindow(vbNullString, UCase$("REY ENGINE 5.2")) Then
    Call AoDefCheatDetect("REY ENGINE 5.2")
ElseIf FindWindow(vbNullString, UCase$("AUTOCLICK - BY NIO_SHOOTER")) Then
    Call AoDefCheatDetect("AUTOCLICK - BY NIO_SHOOTER")
ElseIf FindWindow(vbNullString, UCase$("TONNER MINER! :D [REG][SKLOV] 2.0")) Then
    Call AoDefCheatDetect("TONNER MINER! :D [REG][SKLOV] 2.0")
ElseIf FindWindow(vbNullString, UCase$("Buffy The vamp Slayer")) Then
    Call AoDefCheatDetect("Buffy The vamp Slayer")
ElseIf FindWindow(vbNullString, UCase$("Blorb Slayer 1.12.552 (BETA)")) Then
    Call AoDefCheatDetect("Blorb Slayer 1.12.552 (BETA)")
ElseIf FindWindow(vbNullString, UCase$("PumaEngine3.0")) Then
    Call AoDefCheatDetect("PumaEngine3.0")
ElseIf FindWindow(vbNullString, UCase$("Vicious Engine 5.0")) Then
    Call AoDefCheatDetect("Vicious Engine 5.0")
ElseIf FindWindow(vbNullString, UCase$("AkumaEngine33")) Then
    Call AoDefCheatDetect("AkumaEngine33")
ElseIf FindWindow(vbNullString, UCase$("Spuc3ngine")) Then
    Call AoDefCheatDetect("Spuc3ngine")
ElseIf FindWindow(vbNullString, UCase$("Ultra Engine")) Then
    Call AoDefCheatDetect("Ultra Engine")
ElseIf FindWindow(vbNullString, UCase$("Engine")) Then
    Call AoDefCheatDetect("Engine")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine V5.6")) Then
    Call AoDefCheatDetect("Cheat Engine V5.6")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine V5.5")) Then
    Call AoDefCheatDetect("Cheat Engine V5.5")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine V4.4")) Then
    Call AoDefCheatDetect("Cheat Engine V4.4")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine V4.4 German Add-On")) Then
    Call AoDefCheatDetect("Cheat Engine V4.4 German Add-On")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine V4.3")) Then
    Call AoDefCheatDetect("Cheat Engine V4.3")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine V4.2")) Then
    Call AoDefCheatDetect("Cheat Engine V4.2")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine V4.1.1")) Then
    Call AoDefCheatDetect("Cheat Engine V4.1.1")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine V3.3")) Then
    Call AoDefCheatDetect("Cheat Engine V3.3")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine V3.2")) Then
    Call AoDefCheatDetect("Cheat Engine V3.2")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine V3.1")) Then
    Call AoDefCheatDetect("Cheat Engine V3.1")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine")) Then
    Call AoDefCheatDetect("Cheat Engine")
ElseIf FindWindow(vbNullString, UCase$("danza engine 5.2.150")) Then
    Call AoDefCheatDetect("danza engine 5.2.150")
ElseIf FindWindow(vbNullString, UCase$("zenx engine")) Then
    Call AoDefCheatDetect("zenx engine")
ElseIf FindWindow(vbNullString, UCase$("MACROMAKER")) Then
    Call AoDefCheatDetect("Macro Maker")
ElseIf FindWindow(vbNullString, UCase$("MACREOMAKER - EDIT MACRO")) Then
    Call AoDefCheatDetect("MACREOMAKER - EDIT MACRO")
ElseIf FindWindow(vbNullString, UCase$("By Fedex")) Then
    Call AoDefCheatDetect("Macro Fedex")
ElseIf FindWindow(vbNullString, UCase$("Macro Mage 1.0")) Then
    Call AoDefCheatDetect("Macro Mage")
ElseIf FindWindow(vbNullString, UCase$("Auto* v0.4 (c) 2001 Pete Powa")) Then
    Call AoDefCheatDetect("Macro Fisher")
ElseIf FindWindow(vbNullString, UCase$("Kizsada")) Then
    Call AoDefCheatDetect("Macro K33")
ElseIf FindWindow(vbNullString, UCase$("Makro K33")) Then
    Call AoDefCheatDetect("Macro K33")
ElseIf FindWindow(vbNullString, UCase$("Super Saiyan")) Then
    Call AoDefCheatDetect("El Chit del Geri")
ElseIf FindWindow(vbNullString, UCase$("Makro-Piringulete")) Then
    Call AoDefCheatDetect("Piringulete")
ElseIf FindWindow(vbNullString, UCase$("Makro-Piringulete 2003")) Then
    Call AoDefCheatDetect("Piringulete 2003")
ElseIf FindWindow(vbNullString, UCase$("TUKY2005")) Then
    Call AoDefCheatDetect("Makro Tuky")
ElseIf FindWindow(vbNullString, UCase$("Volks")) Then
    Call AoDefCheatDetect("TURBINAS")
ElseIf FindWindow(vbNullString, UCase$("Turbinas")) Then
    Call AoDefCheatDetect("TURBINAS")
ElseIf FindWindow(vbNullString, UCase$("msn")) Then
    Call AoDefCheatDetect("msn")
ElseIf FindWindow(vbNullString, UCase$("Volks")) Then
    Call AoDefCheatDetect("TURBINAS")
ElseIf FindWindow(vbNullString, UCase$("MacroSaraza[BETA]")) Then
    Call AoDefCheatDetect("MacroSaraza[BETA]")
'ElseIf FindWindow(vbNullString, UCase$("Shell_TrayWnd")) Then
'    Call AoDefCheatDetect("Shell_TrayWnd")
ElseIf FindWindow(vbNullString, UCase$("mmen")) Then
    Call AoDefCheatDetect("Cheat")
ElseIf FindWindow(vbNullString, UCase$("heat Celtic AO By Fowl")) Then
    Call AoDefCheatDetect("Cheat Celtic AO By Fowl")
ElseIf FindWindow(vbNullString, UCase$("VB6")) Then
    Call AoDefCheatDetect("VB6")
ElseIf FindWindow(vbNullString, UCase$("Cheat_Celtic_AO_By_Fowl")) Then
    Call AoDefCheatDetect("Cheat_Celtic_AO_By_Fowl")
ElseIf FindWindow(vbNullString, UCase$("Auto Remo")) Then
    Call AoDefCheatDetect("Auto Remo")
ElseIf FindWindow(vbNullString, UCase$("Auto Remo")) Then
    Call AoDefCheatDetect("Auto Remo")
ElseIf FindWindow(vbNullString, UCase$("Auto Remo By Francohhh (www.neo-zone.activoforo.com)")) Then
    Call AoDefCheatDetect("Auto Remo By Francohhh (www.neo-zone.activoforo.com)")
ElseIf FindWindow(vbNullString, UCase$("Macro Configurable")) Then
    Call AoDefCheatDetect("Macro Configurable")
ElseIf FindWindow(vbNullString, UCase$("Mega Macro By Francohhh")) Then
    Call AoDefCheatDetect("Mega Macro By Francohhh")
ElseIf FindWindow(vbNullString, UCase$("MegaMacro By Francohhh (www.neo-zone.activoforo.com)")) Then
    Call AoDefCheatDetect("MegaMacro By Francohhh (www.neo-zone.activoforo.com)")
ElseIf FindWindow(vbNullString, UCase$("By FaKiTa!.-")) Then
    Call AoDefCheatDetect("By FaKiTa!.-")
ElseIf FindWindow(vbNullString, UCase$("Macro b53!")) Then
    Call AoDefCheatDetect("Macro b53!")
ElseIf FindWindow(vbNullString, UCase$("Borrar...")) Then
    Call AoDefCheatDetect("Borrar...")
ElseIf FindWindow(vbNullString, UCase$("Ares.exe")) Then
    Call AoDefCheatDetect("Ares.exe")
ElseIf FindWindow(vbNullString, UCase$("Crown Makro")) Then
    Call AoDefCheatDetect("Crown Makro")
ElseIf FindWindow(vbNullString, UCase$("AutoPots")) Then
    Call AoDefCheatDetect("AutoPots")
ElseIf FindWindow(vbNullString, UCase$("FaKiTa")) Then
    Call AoDefCheatDetect("AutoPots")
ElseIf FindWindow(vbNullString, UCase$("FaKiTa.-")) Then
    Call AoDefCheatDetect("AutoPots")
ElseIf FindWindow(vbNullString, UCase$("FaKiTa!.-")) Then
    Call AoDefCheatDetect("AutoPots")
ElseIf FindWindow(vbNullString, UCase$("msnmsgr")) Then
    Call AoDefCheatDetect("msnmsgr")
ElseIf FindWindow(vbNullString, UCase$("MacroSaraza1.3.3")) Then
    Call AoDefCheatDetect("MacroSaraza1.3.3")
ElseIf FindWindow(vbNullString, UCase$("MacroSaraza[BETA]")) Then
    Call AoDefCheatDetect("MacroSaraza[BETA]")
ElseIf FindWindow(vbNullString, UCase$("Macro-ilanchus")) Then
    Call AoDefCheatDetect("Macro-ilanchus")
ElseIf FindWindow(vbNullString, UCase$("MacroSaraza[BETA] ")) Then
    Call AoDefCheatDetect("MacroSaraza[BETA] ")
ElseIf FindWindow(vbNullString, UCase$("Autopotear")) Then
    Call AoDefCheatDetect("Autopotear")
ElseIf FindWindow(vbNullString, UCase$("MacroSaraza")) Then
    Call AoDefCheatDetect("MacroSaraza")
ElseIf FindWindow(vbNullString, UCase$("SpeederXP")) Then
    Call AoDefCheatDetect("SpeederXP")
ElseIf FindWindow(vbNullString, UCase$("MLEngine")) Then
    Call AoDefCheatDetect("MLEngine")
ElseIf FindWindow(vbNullString, UCase$("Makro-Piringulete")) Then
    Call AoDefCheatDetect("Makro-Piringulete")
ElseIf FindWindow(vbNullString, UCase$("MoonLight Engine 1129.1 by llvMoney A.K.A FaaF")) Then
    Call AoDefCheatDetect("MoonLight Engine 1129.1 by llvMoney A.K.A FaaF")
ElseIf FindWindow(vbNullString, UCase$("vb6")) Then
    Call AoDefCheatDetect("vb6")
ElseIf FindWindow(vbNullString, UCase$("msmsgs")) Then
    Call AoDefCheatDetect("msmsgs")
ElseIf FindWindow(vbNullString, UCase$("Macro Magic")) Then
    Call AoDefCheatDetect("Macro Magic")
ElseIf FindWindow(vbNullString, UCase$("Iolo Macro Magic")) Then
    Call AoDefCheatDetect("Iolo Macro Magic")
ElseIf FindWindow(vbNullString, UCase$("AO Macro II 1.0.2")) Then
    Call AoDefCheatDetect("AO Macro II 1.0.2")
ElseIf FindWindow(vbNullString, UCase$("0rk4M")) Then
    Call AoDefCheatDetect("0rk4M")
ElseIf FindWindow(vbNullString, UCase$("AOFlechas")) Then
    Call AoDefCheatDetect("AOFlechas")
ElseIf FindWindow(vbNullString, UCase$("Auto remo By FaKiTa")) Then
    Call AoDefCheatDetect("Auto remo By FaKiTa")
ElseIf FindWindow(vbNullString, UCase$("AutoClick")) Then
    Call AoDefCheatDetect("AutoClick")
ElseIf FindWindow(vbNullString, UCase$("Borrar Cartel")) Then
    Call AoDefCheatDetect("Borrar Cartel")
ElseIf FindWindow(vbNullString, UCase$("Borrar Cartel 1.0 by BRASUkA!.-")) Then
    Call AoDefCheatDetect("Borrar Cartel 1.0 by BRASUkA!.-")
ElseIf FindWindow(vbNullString, UCase$("Cheat By The PePoH!")) Then
    Call AoDefCheatDetect("Cheat By The PePoH!")
ElseIf FindWindow(vbNullString, UCase$("Cheat By The PePoH!!!")) Then
    Call AoDefCheatDetect("Cheat By The PePoH!!!")
ElseIf FindWindow(vbNullString, UCase$("dddr")) Then
    Call AoDefCheatDetect("dddr")
ElseIf FindWindow(vbNullString, UCase$("Fedex")) Then
    Call AoDefCheatDetect("Fedex")
ElseIf FindWindow(vbNullString, UCase$("Flooder By FaKiTa")) Then
    Call AoDefCheatDetect("Flooder By FaKiTa")
ElseIf FindWindow(vbNullString, UCase$("Flooder")) Then
    Call AoDefCheatDetect("Flooder")
ElseIf FindWindow(vbNullString, UCase$("Full Cheat")) Then
    Call AoDefCheatDetect("Full Cheat")
ElseIf FindWindow(vbNullString, UCase$("Argentum-Pesca 0.2b Por Manchess")) Then
    Call AoDefCheatDetect("Argentum-Pesca 0.2b Por Manchess")
ElseIf FindWindow(vbNullString, UCase$("Macro_b53___By_Daaai")) Then
    Call AoDefCheatDetect("Macro_b53___By_Daaai")
ElseIf FindWindow(vbNullString, UCase$("MacroCrack")) Then
    Call AoDefCheatDetect("MacroCrack")
ElseIf FindWindow(vbNullString, UCase$("Macro-Resucitar")) Then
    Call AoDefCheatDetect("Macro-Resucitar")
ElseIf FindWindow(vbNullString, UCase$("Macro-Resucitar 1.0 | By Super Culd")) Then
    Call AoDefCheatDetect("Macro-Resucitar 1.0 | By Super Culd")
ElseIf FindWindow(vbNullString, UCase$("MakroK33")) Then
    Call AoDefCheatDetect("MakroK33")
ElseIf FindWindow(vbNullString, UCase$("Mega_Macro_By_Francohhh")) Then
    Call AoDefCheatDetect("Mega_Macro_By_Francohhh")
ElseIf FindWindow(vbNullString, UCase$("Contrase?a")) Then
    Call AoDefCheatDetect("Contrase?a")
ElseIf FindWindow(vbNullString, UCase$("MegaCheat")) Then
    Call AoDefCheatDetect("MegaCheat")
ElseIf FindWindow(vbNullString, UCase$("Eleji el cheat")) Then
    Call AoDefCheatDetect("Eleji el cheat")
ElseIf FindWindow(vbNullString, UCase$("Sacar letras hechiz By FaKiTa")) Then
    Call AoDefCheatDetect("Sacar letras hechiz By FaKiTa")
ElseIf FindWindow(vbNullString, UCase$("sh")) Then
    Call AoDefCheatDetect("sh")
ElseIf FindWindow(vbNullString, UCase$("Turbinas By Francohhh")) Then
    Call AoDefCheatDetect("Turbinas By Francohhh")
ElseIf FindWindow(vbNullString, UCase$("Auto Pots By Santeh")) Then
    Call AoDefCheatDetect("Auto Pots By Santeh")
ElseIf FindWindow(vbNullString, UCase$("ByAxeII")) Then
    Call AoDefCheatDetect("ByAxeII")
ElseIf FindWindow(vbNullString, UCase$("Cheat_By_Santeh_1.3")) Then
    Call AoDefCheatDetect("Cheat_By_Santeh_1.3")
ElseIf FindWindow(vbNullString, UCase$("Cheat By Santeh 1.3")) Then
    Call AoDefCheatDetect("Cheat By Santeh 1.3")
ElseIf FindWindow(vbNullString, UCase$("Cheat 1.0 [By Santeh]")) Then
    Call AoDefCheatDetect("Cheat 1.0 [By Santeh]")
ElseIf FindWindow(vbNullString, UCase$("Auto_Floder__By_Santeh_")) Then
    Call AoDefCheatDetect("Auto_Floder__By_Santeh_")
ElseIf FindWindow(vbNullString, UCase$("Auto Floder [By Santeh]")) Then
    Call AoDefCheatDetect("Auto Floder [By Santeh]")
ElseIf FindWindow(vbNullString, UCase$("Cheat_By_Santeh_1.4")) Then
    Call AoDefCheatDetect("Cheat_By_Santeh_1.4")
ElseIf FindWindow(vbNullString, UCase$("Cheat By Santeh 1.4")) Then
    Call AoDefCheatDetect("Cheat By Santeh 1.4")
ElseIf FindWindow(vbNullString, UCase$("Macro  V1.0.0 - TheFranK - www.TheFranK-Cheats.com.ar")) Then
    Call AoDefCheatDetect("Macro  V1.0.0")
ElseIf FindWindow(vbNullString, UCase$("!xSpeed.net -1.41")) Then
    Call AoDefCheatDetect("!xSpeed.net -1.41")
ElseIf FindWindow(vbNullString, UCase$("Ccleaner")) Then
    Call AoDefCheatDetect("Ccleaner")
ElseIf FindWindow(vbNullString, UCase$("ccleaner")) Then
    Call AoDefCheatDetect("Ccleaner")
ElseIf FindWindow(vbNullString, UCase$("CCleaner ")) Then
    Call AoDefCheatDetect("CCleaner ")
ElseIf FindWindow(vbNullString, UCase$("Visual Basic 6.0")) Then
    Call AoDefCheatDetect("Visual Basic")
ElseIf FindWindow(vbNullString, UCase$("vb6")) Then
    Call AoDefCheatDetect("VB6")
ElseIf FindWindow(vbNullString, UCase$("Easy AO Makro - V 0.9 Beta")) Then
    Call AoDefCheatDetect("Easy AO Makro - V 0.9 Beta")
ElseIf FindWindow(vbNullString, UCase$("Piringulete")) Then
    Call AoDefCheatDetect("Piringulete")
ElseIf FindWindow(vbNullString, UCase$("MAKRO K33")) Then
    Call AoDefCheatDetect("MAKRO K33")
ElseIf FindWindow(vbNullString, UCase$("MAKRO-PIRINGULETE")) Then
    Call AoDefCheatDetect("MAKRO-PIRINGULETE")
ElseIf FindWindow(vbNullString, UCase$(".:::MAXICHIN")) Then
    Call AoDefCheatDetect(".:::MAXICHIN")
ElseIf FindWindow(vbNullString, UCase$("CHUPAS A LO PEDOS Y TE REMOVES VITH")) Then
    Call AoDefCheatDetect("CHUPAS A LO PEDOS Y TE REMOVES VITH")
ElseIf FindWindow(vbNullString, UCase$("A SPEEDER V2.1")) Then
    Call AoDefCheatDetect("A SPEEDER V2.1")
ElseIf FindWindow(vbNullString, UCase$("A SPEEDER")) Then
    Call AoDefCheatDetect("A SPEEDER")
ElseIf FindWindow(vbNullString, UCase$("SPEEDER - UNREGISTERED")) Then
    Call AoDefCheatDetect("SPEEDER - UNREGISTERED")
ElseIf FindWindow(vbNullString, UCase$("SPEEDERXP V1.60 - UNREGISTERED")) Then
    Call AoDefCheatDetect("SPEEDERXP V1.60 - UNREGISTERED")
ElseIf FindWindow(vbNullString, UCase$("SPEEDERXP V1.60 - REGISTERED")) Then
    Call AoDefCheatDetect("SPEEDERXP V1.60 - REGISTERED")
ElseIf FindWindow(vbNullString, UCase$("MACRO MAGE 1.0")) Then
    Call AoDefCheatDetect("MACRO MAGE 1.0")
ElseIf FindWindow(vbNullString, UCase$("AOITEMS - BY TAIKU - V1.0")) Then
    Call AoDefCheatDetect("AOITEMS - BY TAIKU - V1.0")
ElseIf FindWindow(vbNullString, UCase$("RADAR SILVERAO")) Then
    Call AoDefCheatDetect("RADAR SILVERAO")
ElseIf FindWindow(vbNullString, UCase$("MACRO 2005")) Then
    Call AoDefCheatDetect("MACRO 2005")
ElseIf FindWindow(vbNullString, UCase$("SPEEDER - REGISTERED")) Then
    Call AoDefCheatDetect("SPEEDER - REGISTERED")
ElseIf FindWindow(vbNullString, UCase$("PIRINGULETE")) Then
    Call AoDefCheatDetect("PIRINGULETE")
ElseIf FindWindow(vbNullString, UCase$("MACRO")) Then
    Call AoDefCheatDetect("MACRO")
ElseIf FindWindow(vbNullString, UCase$("MACRO-PIRINGULETE 2003")) Then
    Call AoDefCheatDetect("MACRO-PIRINGULETE 2003")
ElseIf FindWindow(vbNullString, UCase$("ARGENTUM FALSE V 0.2")) Then
    Call AoDefCheatDetect("ARGENTUM FALSE V 0.2")
ElseIf FindWindow(vbNullString, UCase$("SH")) Then
    Call AoDefCheatDetect("SH")
ElseIf FindWindow(vbNullString, UCase$("SPEEDER")) Then
    Call AoDefCheatDetect("SPEEDER")
ElseIf FindWindow(vbNullString, UCase$("SPEED")) Then
    Call AoDefCheatDetect("SPEED")
ElseIf FindWindow(vbNullString, UCase$("KORVEN")) Then
    Call AoDefCheatDetect("KORVEN")
ElseIf FindWindow(vbNullString, UCase$("EASY AO MAKRO - V 0.9 BETA")) Then
    Call AoDefCheatDetect("EASY AO MAKRO - V 0.9 BETA")
ElseIf FindWindow(vbNullString, UCase$("SOLOCOVO  ?")) Then
    Call AoDefCheatDetect("SOLOCOVO  ?")
ElseIf FindWindow(vbNullString, UCase$("CHITEO")) Then
    Call AoDefCheatDetect("CHITEO")
ElseIf FindWindow(vbNullString, UCase$("CHITEO")) Then
    Call AoDefCheatDetect("CHITEO")
ElseIf FindWindow(vbNullString, UCase$("MacroCrack <gonza_vi@hotmail.com>")) Then
    Call AoDefCheatDetect("MacroCrack <gonza_vi@hotmail.com>")
'ElseIf FindWindow(vbNullString, UCase$("Form1")) Then
   ' Call AoDefCheatDetect("Form1")
ElseIf FindWindow(vbNullString, UCase$("Form2")) Then
    Call AoDefCheatDetect("Form2")
ElseIf FindWindow(vbNullString, UCase$("Proyecto")) Then
    Call AoDefCheatDetect("Proyecto")
ElseIf FindWindow(vbNullString, UCase$("Proyecto2")) Then
    Call AoDefCheatDetect("Proyecto2")
ElseIf FindWindow(vbNullString, UCase$("Capture Connect")) Then
    Call AoDefCheatDetect("Capture Connect")
ElseIf FindWindow(vbNullString, UCase$("Enviar Packet")) Then
    Call AoDefCheatDetect("Enviar Packet")
ElseIf FindWindow(vbNullString, UCase$("Magic Click")) Then
    Call AoDefCheatDetect("Magic Click")
ElseIf FindWindow(vbNullString, UCase$("Cheats Taiku")) Then
    Call AoDefCheatDetect("Cheats Taiku")
ElseIf FindWindow(vbNullString, UCase$("MultiT")) Then
    Call AoDefCheatDetect("MultiT")
ElseIf FindWindow(vbNullString, UCase$("UltraCheat v2.0.6c")) Then
    Call AoDefCheatDetect("UltraCheat v2.0.6c")
ElseIf FindWindow(vbNullString, UCase$("UltraCheat v9.09 (v1.0)")) Then
    Call AoDefCheatDetect("UltraCheat v9.09 (v1.0)")
ElseIf FindWindow(vbNullString, UCase$("Speeder XP v1.60")) Then
    Call AoDefCheatDetect("Speeder XP v1.60")
ElseIf FindWindow(vbNullString, UCase$("Anubis")) Then
    Call AoDefCheatDetect("Anubis")
ElseIf FindWindow(vbNullString, UCase$("Winhider")) Then
    Call AoDefCheatDetect("Winhider")
ElseIf FindWindow(vbNullString, UCase$("WH")) Then
    Call AoDefCheatDetect("WH")
ElseIf FindWindow(vbNullString, UCase$("Piringulete2003 v1.0")) Then
    Call AoDefCheatDetect("Piringulete2003 v1.0")
ElseIf FindWindow(vbNullString, UCase$("MiniDoS v1.0")) Then
    Call AoDefCheatDetect("MiniDoS v1.0")
ElseIf FindWindow(vbNullString, UCase$("msgplus v1.0")) Then
    Call AoDefCheatDetect("msgplus v1.0")
ElseIf FindWindow(vbNullString, UCase$("Makro KorveN (macro2)")) Then
    Call AoDefCheatDetect("Makro KorveN (macro2)")
ElseIf FindWindow(vbNullString, UCase$("Makro v1.0 by Cavallero")) Then
    Call AoDefCheatDetect("Makro v1.0 by Cavallero")
ElseIf FindWindow(vbNullString, UCase$("MacroMaker *")) Then
    Call AoDefCheatDetect("MacroMaker *")
ElseIf FindWindow(vbNullString, UCase$("MacroCid v3.0")) Then
    Call AoDefCheatDetect("MacroCid v3.0")
ElseIf FindWindow(vbNullString, UCase$("MacroCid v2.0")) Then
    Call AoDefCheatDetect("MacroCid v2.0")
ElseIf FindWindow(vbNullString, UCase$("FFF v1.1")) Then
    Call AoDefCheatDetect("FFF v1.1")
ElseIf FindWindow(vbNullString, UCase$("FFF v1.0")) Then
    Call AoDefCheatDetect("FFF v1.0")
ElseIf FindWindow(vbNullString, UCase$("Garchentum v1.0")) Then
    Call AoDefCheatDetect("Garchentum v1.0")
ElseIf FindWindow(vbNullString, UCase$("HotKey Changer v1.0")) Then
    Call AoDefCheatDetect("HotKey Changer v1.0")
ElseIf FindWindow(vbNullString, UCase$("EzMacros v5.0a")) Then
    Call AoDefCheatDetect("EzMacros v5.0a")
ElseIf FindWindow(vbNullString, UCase$("Easy AO Makro v1.0")) Then
    Call AoDefCheatDetect("Easy AO Makro v1.0")
ElseIf FindWindow(vbNullString, UCase$("DemonDark SH v1.0")) Then
    Call AoDefCheatDetect("DemonDark SH v1.0")
ElseIf FindWindow(vbNullString, UCase$("DemonDark Items v2.01")) Then
    Call AoDefCheatDetect("DemonDark Items v2.01")
ElseIf FindWindow(vbNullString, UCase$("ChiteroMegamix")) Then
    Call AoDefCheatDetect("ChiteroMegamix")
ElseIf FindWindow(vbNullString, UCase$("Cheat by Fran v0.11.0002")) Then
    Call AoDefCheatDetect("Cheat by Fran v0.11.0002")
ElseIf FindWindow(vbNullString, UCase$("v0.01.0008")) Then
    Call AoDefCheatDetect("v0.01.0008")
ElseIf FindWindow(vbNullString, UCase$("Amenakhte by Proko v0.01.0008")) Then
    Call AoDefCheatDetect("Amenakhte by Proko v0.01.0008")
ElseIf FindWindow(vbNullString, UCase$("Serbio Engine")) Then
    Call AoDefCheatDetect("Serbio Engine")
ElseIf FindWindow(vbNullString, UCase$("Accelerated Flech Creator v1.0")) Then
    Call AoDefCheatDetect("Accelerated Flech Creator v1.0")
ElseIf FindWindow(vbNullString, UCase$("!xspeednet")) Then
    Call AoDefCheatDetect("!xspeednet")
ElseIf FindWindow(vbNullString, UCase$("!xspeed.net v2.0 *")) Then
    Call AoDefCheatDetect("!xspeed.net v2.0 *")
ElseIf FindWindow(vbNullString, UCase$("!xspeed.net v2.0")) Then
    Call AoDefCheatDetect("!xspeed.net v2.0")
ElseIf FindWindow(vbNullString, UCase$("Cheat Engine 6.2")) Then
    Call AoDefCheatDetect("Cheat Engine 6.2")
ElseIf FindWindow(vbNullString, UCase$("X-Z Macro General")) Then
    Call AoDefCheatDetect("X-Z Macro General")
ElseIf FindWindow(vbNullString, UCase$("Add Address")) Then
    Call AoDefCheatDetect("Add Address")
ElseIf FindWindow(vbNullString, UCase$("Memory Viewer")) Then
    Call AoDefCheatDetect("Memory Viewer")
ElseIf FindWindow(vbNullString, UCase$("Process List")) Then
    Call AoDefCheatDetect("Process List")
ElseIf FindWindow(vbNullString, UCase$("windows live mensseger")) Then
    Call AoDefCheatDetect("windows live mensseger")
ElseIf FindWindow(vbNullString, UCase$("AutoRecorder v3.0")) Then
    Call AoDefCheatDetect("AutoRecorder v3.0")
ElseIf FindWindow(vbNullString, UCase$("AutoRecorder v3.0 *")) Then
    Call AoDefCheatDetect("AutoRecorder v3.0 *")
ElseIf FindWindow(vbNullString, UCase$(" - NabrianAO.exe - [WPEPRO1]")) Then
   Call AoDefCheatDetect("- NabrianAO.exe - [WPEPRO1]*")
ElseIf FindWindow(vbNullString, UCase$(" - NabrianAO.exe - [WPEPRO3]")) Then
   Call AoDefCheatDetect("- NabrianAO.exe - [WPEPRO3]*")
ElseIf FindWindow(vbNullString, UCase$(" - NabrianAO.exe")) Then
    Call AoDefCheatDetect("- NabrianAO.exe")
ElseIf FindWindow(vbNullString, UCase$("Macro - AO")) Then
    Call AoDefCheatDetect("Macro - AO")
ElseIf FindWindow(vbNullString, UCase$("egui - NabrianAO.exe - [egui1]")) Then
    Call AoDefCheatDetect("egui - NabrianAO.exe - [egui1]")
ElseIf FindWindow(vbNullString, UCase$("egui - NabrianAO.exe - [egui2]")) Then
    Call AoDefCheatDetect("egui - NabrianAO.exe - [egui2]")
ElseIf FindWindow(vbNullString, UCase$("egui - NabrianAO.exe - [egui3]")) Then
    Call AoDefCheatDetect("egui - NabrianAO.exe - [egui3]")
ElseIf FindWindow(vbNullString, UCase$("xSpeed.net")) Then
    Call AoDefCheatDetect("xSpeed.net")
ElseIf FindWindow(vbNullString, UCase$("Hotkey Macro Launcher utility")) Then
    Call AoDefCheatDetect("Hotkey Macro Launcher utility")
End If



 'Call Cerrar_ventana(Chr$(84) & Chr$(104) & Chr$(117) & Chr$(110) & Chr$(100) & Chr$(101) & Chr$(114) & Chr$(77) & Chr$(68) & Chr$(73) _
 & Chr$(70) & Chr$(111) & Chr$(114) & Chr$(109)) 'mdi form "ThunderMDIForm"
 'Call Cerrar_ventana(Chr$(84) & Chr$(104) & Chr$(117) & Chr$(110) & Chr$(100) & Chr$(101) & Chr$(114) & Chr$(82) & Chr$(84) & Chr$(54) _
 & Chr$(70) & Chr$(111) & Chr$(114) & Chr$(109) & Chr$(68) & Chr$(67)) 'vb6 exe run "thunderrt6formdc"
 'Call Cerrar_ventana(Chr$(84) & Chr$(104) & Chr$(117) & Chr$(110) & Chr$(100) & Chr$(101) & Chr$(114) & Chr$(70) & Chr$(111) & Chr$(114) _
 & Chr$(109) & Chr$(68) & Chr$(67)) 'vb6 code "thunderformdc"

 Call Cerrar_ventana("processhacker") ' El famoso ProcessHACKER
 Call Cerrar_ventana("obj_form") ' Hidetoolz y editores de paquetes.
 Call Cerrar_ventana("TAddForm")
 Call Cerrar_ventana("TformSettings")
 Call Cerrar_ventana("Afx:400000:8:10011:0:20575")
 Call Cerrar_ventana("Afx:400000:8:10011:0:37273f")
 Call Cerrar_ventana("TUserdefinedform")
 'Call Cerrar_ventana("wndclass_desked_gsk")
' Call Cerrar_ventana("consolewindowclass") 'CMD
 Call Cerrar_ventana("currports")
' Call Cerrar_ventana("window")
 Call Cerrar_ventana("tmainform")
' Call Cerrar_ventana("tform1") ' Dhelpi (todos esos)
 Call Cerrar_ventana("tform2")
 Call Cerrar_ventana("tform3")
 Call Cerrar_ventana("tform4")
 Call Cerrar_ventana("tform5")
 Call Cerrar_ventana("tform6")
' Call Cerrar_ventana("ghost") ' LOS SACO (TEMPORTAL)
 Call Cerrar_ventana("Afx:400000:8:10011:0:c0084b")
 Call Cerrar_ventana("Afx:400000:8:10011:")
 Call Cerrar_ventana("ollydbg") ' debugger
 Call Cerrar_ventana("tformmain") ' engine
 Call Cerrar_ventana("wxWindow") 'RIPE
 'Call Cerrar_ventana("WindowsForms10.Window.8.app.0.378734a") ' vb.net 2008/2010
 'Call Cerrar_ventana("WindowsForms10.Window.8.app.0.33c0d9d") ' inyector / vb.net 2008/2010
 
'HIDE
'Dim a
'a = WinGetHandle&(Chr$(72) & Chr$(105) & Chr$(100) & Chr$(101)) 'HIDETOOLZ
'If a <> 0 Then
'Call AoDefCheatDetect("-UndetecteD")
'End If
'a = WinGetHandle&(Chr$(87) & Chr$(80) & Chr$(69))  'WPE PRO
'If a <> 0 Then
'Call AoDefCheatDetect("WPE PRO -UndetecteD")
'End If
'a = WinGetHandle&("Cheat Engine")
'If a <> 0 Then
'Call AoDefCheatDetect("Cheat Engine")
'End If
'a = WinGetHandle&("Macro")
'If a <> 0 Then
'Call AoDefCheatDetect("Macro")
'End If
'a = WinGetHandle&(Chr$(82) & Chr$(80) & Chr$(69))  'RPE
'If a <> 0 Then
'Call AoDefCheatDetect("RPE FILTER")
'End If
'HIDE
 
'BANPC
Call COMPROBARBANPC
Call COMPROBARBANPC1
Call COMPROBARBANPC2
Call COMPROBARBANPC3
'BANPC



If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End
If IPdelServidor = Chr$(108) & Chr$(111) & Chr$(99) & Chr$(97) & Chr$(108) & Chr$(104) & Chr$(111) & Chr$(115) _
 & Chr$(116) Or IPdelServidor = Chr$(49) & Chr$(50) & Chr$(55) & Chr$(46) & Chr$(48) & Chr$(46) _
 & Chr$(48) & Chr$(46) & Chr$(49) Then End

 End If
 End If
End Sub

Private Sub command1_Click()
PACKETS.Show

'Dim Imagen As IPictureDisp
'Set Imagen = Minimap.image
  
'graba la imagen
'SavePicture Imagen, "C:\imagen.bmp"
  
'Set Imagen = Nothing
'Call Effect_Heal_Begin(30, 50, 9, 200)
'Call Effect_Protection_Begin(40, 50, 9, 200)
'Call Effect_Summon_Begin(60, 50, 9, 200)

'Call Effect_Rain_Begin(1, 500)
'Call Effect_Kill(9)
End Sub


Private Sub arma_Click()
Call AddtoRichTextBox(frmPrincipal.rectxt, "Esto indica cuanto da?o tiene el arma que llevas equipada.", 255, 255, 255, 0, 0)
End Sub

Private Sub armadura_Click()
Call AddtoRichTextBox(frmPrincipal.rectxt, "Esto indica cuanta defensa tiene la armadura que llevas equipada.", 255, 255, 255, 0, 0)
End Sub


Private Sub casco_Click()
Call AddtoRichTextBox(frmPrincipal.rectxt, "Esto indica cuanta defensa tiene el casco que llevas equipado.", 255, 255, 255, 0, 0)
End Sub

Private Sub CheckCasTleHE_Click()
If CheckCasTleHE.value = 0 Then
    CastleHechi = 1
    
   Call WriteVar(App.Path & "/Init/Opciones.opc", "CONFIG", "Particulas", 1)
   Call AddtoRichTextBox(frmPrincipal.rectxt, "Has desactivado casteo de hechizo. (Marcar intervalo correcto)", 255, 255, 255, 0, 0)

Else
    CastleHechi = 0

   Call WriteVar(App.Path & "/Init/Opciones.opc", "CONFIG", "Particulas", 0)
   Call AddtoRichTextBox(frmPrincipal.rectxt, "Has activado casteo de hechizo. (Marcar intervalo correcto)", 255, 255, 255, 0, 0)
End If
End Sub

Private Sub CORD_Click()
Call AddtoRichTextBox(frmPrincipal.rectxt, "Esto indica las cordenadas que estas en el mapa: " & CORD.Caption, 255, 255, 255, 0, 0)
End Sub

Private Sub DetectedCheats_Timer()
If logged Then
If SeguridadActiva = True Then
If AoDefAntiSh(FramesPerSec) Then
Call AoDefAntiShOn
End
End If
End If
End If
End Sub

Private Function IsFormDeEstaAplicacion(Handle As Long) As Boolean
 Dim i As Integer
 For i = 0 To Forms.count - 1
 If Forms(i).hwnd = Handle Then
 IsFormDeEstaAplicacion = True
 Exit For
 Else
 IsFormDeEstaAplicacion = False
 End If
 Next
End Function




Private Sub escudo_Click()
Call AddtoRichTextBox(frmPrincipal.rectxt, "Esto indica cuanta defensa tiene el escudo que llevas equipado.", 255, 255, 255, 0, 0)
End Sub

Private Sub Form_Activate()

If frmParty.Visible Then frmParty.SetFocus
If frmParty2.Visible Then frmParty2.SetFocus

End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
boton = Button
End Sub


Private Sub Ganador_Timer()
Ganador.Enabled = False
End Sub

Private Sub GldLbl_Click()
Call AddtoRichTextBox(frmPrincipal.rectxt, "El oro es fundamental en estas tierras, para la compra de objetos y herramientas de trabajo tu oro disponible es de: " & GldLbl.Caption & " Monedas de oro.", 255, 255, 255, 0, 0)
End Sub

Private Sub GuiaMensajes_Timer()
Dim ContadorDeMensajes As Integer
ContadorDeMensajes = ContadorDeMensajes + 1

If ContadorDeMensajes = 2 Then
Call MensajesGUIA
ElseIf ContadorDeMensajes = 5 Then
Call MensajesGUIA
ElseIf ContadorDeMensajes = 7 Then
Call MensajesGUIA
ElseIf ContadorDeMensajes = 15 Then
Call MensajesGUIA
ContadorDeMensajes = 0
End If

End Sub

Sub MensajesGUIA()
Dim MensajeRandom As Integer
MensajeRandom = RandomNumber(1, 8)
If MensajeRandom = 1 Then
Call AddtoRichTextBox(frmPrincipal.rectxt, "Tips> Si tienes alguna duda antes de enviar un soporte recuerda visitar el manual del juego: https://sites.google.com/site/manualnabrianao/", 255, 255, 255, 0, 0)
ElseIf MensajeRandom = 2 Then
Call AddtoRichTextBox(frmPrincipal.rectxt, "Tips> Recuerda que puedes donar y conseguir puntos e ?tems ?nicos en el servidor ingresando a la siguiente pagina web: https://sites.google.com/site/manualnabrianao/items-de-canjeo-y-donador", 255, 51, 255, 0, 0)
ElseIf MensajeRandom = 3 Then
Call AddtoRichTextBox(frmPrincipal.rectxt, "Tips> ?Tienes dudas de como subir de nivel? Quitatela visita este mini manual de donde leveliar: https://sites.google.com/site/manualnabrianao/-como-subo-de-nivel", 102, 255, 102, 0, 0)
ElseIf MensajeRandom = 4 Then
Call AddtoRichTextBox(frmPrincipal.rectxt, "Tips> Te invitamos a leer el reglamento del juego para una mejor estad?a https://sites.google.com/site/manualnabrianao/reglamento-del-juego", 255, 255, 255, 0, 0)
ElseIf MensajeRandom = 5 Then
Call AddtoRichTextBox(frmPrincipal.rectxt, "Tips> Forma parte de la comunidad de NabrianAO, registrate en nuestro foro oficial: http://foro.nabrianao.com/", 255, 255, 255, 0, 0)
ElseIf MensajeRandom = 6 Then
Call AddtoRichTextBox(frmPrincipal.rectxt, "Tips> ?A?n no conoces el privilegio de templarios en estas tierras? Intenta conseguirlo es todo un reto pero un mayor privilegio: https://sites.google.com/site/manualnabrianao/templario", 255, 255, 255, 0, 0)
ElseIf MensajeRandom = 7 Then
Call AddtoRichTextBox(frmPrincipal.rectxt, "Tips> ?Estas buscando alg?n Npc y no lo encuentras? Visita este link puede ayudarte: https://sites.google.com/site/manualnabrianao/mapa-drop-y-ubicaciones-de-npc-s", 153, 255, 255, 0, 0)
ElseIf MensajeRandom = 8 Then
Call AddtoRichTextBox(frmPrincipal.rectxt, "Beneficio> Te recordamos que si das Me Gusta a nuestra p?gina de facebook consigues 5 puntos de canjeo (Donador) por cada like que consigas con una cuenta activa. ?Como lo hago?: http://nabrianao.com/foro/index.php?threads/beneficio-facebook.17/", 255, 51, 255, 0, 0)
End If
End Sub

Private Sub Image2_Click()
Call Audio.PlayWave(0, SND_CLICK)

ItemElegido = FLAGORO
If UserGLD > 0 Then frmCantidad.Show

End Sub

Private Sub Image3_Click()
Call Audio.PlayWave(0, SND_CLICK)
Call SendData("CDONAR")
End Sub

Private Sub Image5_Click(Index As Integer)
Call Audio.PlayWave(0, SND_CLICK)
If (ItemElegido <= 0 Or ItemElegido > MAX_INVENTORY_SLOTS) Then Exit Sub
If ItemElegido = 1 And Index = 0 Then Exit Sub
If ItemElegido = MAX_INVENTORY_SLOTS And Index = 1 Then Exit Sub
If ItemElegido < 6 And Index = 2 Then Exit Sub
If ItemElegido > MAX_INVENTORY_SLOTS - 5 And Index = 3 Then Exit Sub

Call SendData("ZI" & ItemElegido & "," & Index)

Select Case Index
    Case 0
        Shape1.Top = imgObjeto(ItemElegido - 1).Top
        Shape1.Left = imgObjeto(ItemElegido - 1).Left
        ItemElegido = ItemElegido - 1
    Case 1
        Shape1.Top = imgObjeto(ItemElegido + 1).Top
        Shape1.Left = imgObjeto(ItemElegido + 1).Left
        ItemElegido = ItemElegido + 1
    Case 2
        Shape1.Top = imgObjeto(ItemElegido - 5).Top
        Shape1.Left = imgObjeto(ItemElegido - 5).Left
        ItemElegido = ItemElegido - 5
    Case 3
        Shape1.Top = imgObjeto(ItemElegido + 5).Top
        Shape1.Left = imgObjeto(ItemElegido + 5).Left
        ItemElegido = ItemElegido + 5
End Select

End Sub


Private Sub Image6_Click()
Call Audio.PlayWave(0, SND_CLICK)
Call salirmsgbox
End Sub

Private Sub Image7_Click()
Call Audio.PlayWave(0, SND_CLICK)
If frmCanjes.Visible = True Then Exit Sub
Menu.Show , frmPrincipal
End Sub


Private Sub Image8_Click()
Call Audio.PlayWave(0, SND_CLICK)
Call ShellExecute(Me.hwnd, "open", "http://nabrianao.com/donar.php", "", "", 1)
End Sub

Private Sub Image9_Click()
Call Audio.PlayWave(0, SND_CLICK)
frmPrincipal.WindowState = vbMinimized
End Sub

Private Sub ImgMen_Click()
Call Audio.PlayWave(0, SND_CLICK)
Call SendData("/MISOPORTE")
ImgMen.Visible = False
LabelSoporte.Visible = False
End Sub

Private Sub imgSoporte_Click()
Call Audio.PlayWave(0, SND_CLICK)
Call SendData("/MISOPORTE")
ImgMen.Visible = False
LabelSoporte.Visible = False
End Sub


Private Sub Label10_Click()
Call SendData("/TELEP YO 112 21 74")
End Sub

Private Sub Label11_Click()
Call SendData("/TELEP YO 98 46 33")
End Sub

Private Sub Label12_Click()
Call SendData("/TELEP YO 1 50 50")
End Sub

Private Sub Label13_Click()
Call SendData("/TELEP YO 149 50 50")
End Sub

Private Sub Label14_Click()
Call SendData("/TELEP YO 86 50 50")
End Sub

Private Sub Label15_Click()
Call SendData("/TELEP YO 28 60 21")
End Sub

Private Sub Label2_Click(Index As Integer)

If ItemElegido <> Index And UserInventory(Index).name <> "Nada" Then
    Shape1.Visible = True
    Shape1.Top = imgObjeto(Index).Top
    Shape1.Left = imgObjeto(Index).Left
    ItemElegido = Index
End If

End Sub

Private Sub Label3_Click()
Call Audio.PlayWave(0, SND_CLICK)
Call SendData("#N")

End Sub



Private Sub Label4_Click()
Call SendData("/TELEP YO 160 50 50")
End Sub

Private Sub Label5_Click()
Call Audio.PlayWave(0, SND_CLICK)
Call SendData("#!")

End Sub

Private Sub Label6_Click()
Call SendData("/TELEP YO 59 50 50")
End Sub

Private Sub Label7_Click()
Call Audio.PlayWave(0, SND_CLICK)
Call SendData("#O")

End Sub






Private Sub Label9_Click()
Call SendData("/TELEP YO 34 38 59")
End Sub

Private Sub lblarriba_Click()
Call Audio.PlayWave(0, SND_CLICK)
If lstHechizos.ListIndex < 1 Then Exit Sub

If lstHechizos.ListIndex >= 1 Then Call SendData("DESPHE" & 1 & "," & lstHechizos.ListIndex + 1)
lstHechizos.ListIndex = lstHechizos.ListIndex - 1

End Sub
Private Sub lblabajo_Click()
Call Audio.PlayWave(0, SND_CLICK)
If lstHechizos.ListIndex > 33 Then Exit Sub

If lstHechizos.ListIndex <= 33 Then Call SendData("DESPHE" & 2 & "," & lstHechizos.ListIndex + 1)
lstHechizos.ListIndex = lstHechizos.ListIndex + 1

End Sub

 

Private Sub FX_Timer()
Dim N As Byte

If FX = 0 And RandomNumber(1, 150) < 12 Then
    N = RandomNumber(1, 45)
    Select Case N
        Case Is <= 15
            Call Audio.PlayWave(0, "22.wav")
        Case Is <= 30
            Call Audio.PlayWave(0, "21.wav")
        Case Is <= 35
            Call Audio.PlayWave(0, "28.wav")
        Case Is <= 40
            Call Audio.PlayWave(0, "29.wav")
        Case Is <= 45
            Call Audio.PlayWave(0, "34.wav")
    End Select
End If

End Sub
Private Sub imgObjeto_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)

 If DragAndDropAC = 0 Then
If Button = vbRightButton Then
    Shape1.Visible = False
    Shape2.Visible = True
    Shape2.Top = imgObjeto(Index).Top
    Shape2.Left = imgObjeto(Index).Left
    ItemElegido = Index
    If imgOld <= 0 Then
    If UserInventory(Index).name = "Nada" Then Exit Sub
    imgOld = ItemElegido
    Else
    Call SendData("DRAG" & imgOld & "," & ItemElegido)
    imgOld = 0
    Shape2.Visible = False
    Shape1.Top = imgObjeto(Index).Top
    Shape1.Left = imgObjeto(Index).Left
    End If
 
    End If
    End If
End Sub

Private Sub imgObjeto_Click(Index As Integer)
If ItemElegido <> Index And UserInventory(Index).name <> "Nada" Then
    Shape2.Visible = False
    Shape1.Visible = True
    Shape1.Top = imgObjeto(Index).Top
    Shape1.Left = imgObjeto(Index).Left
    ItemElegido = Index
End If

End Sub
Private Sub imgObjeto_DblClick(Index As Integer)

If frmCarp.Visible Or frmHerrero.Visible Then Exit Sub

If ItemElegido = Index Then


Call SendData("(SX" & Encripta(ItemElegido & " " & RandomNumber(1, 5), True))
'Else
'Debug.Print "no"


End If
    
End Sub



Private Sub lblHechizos_Click()

Call Audio.PlayWave(0, SND_CLICK)
frHechizos.Visible = True
frInvent.Visible = False

End Sub
Private Sub lblInvent_Click()

Call Audio.PlayWave(0, SND_CLICK)
frInvent.Visible = True
frHechizos.Visible = False

End Sub

Private Sub lblNivel_Click()
Call AddtoRichTextBox(frmPrincipal.rectxt, "Esto indica el nivel de tu personaje.", 102, 204, 0, 0, 0)
End Sub

Private Sub lblObjCant_Click(Index As Integer)

If ItemElegido <> Index And UserInventory(Index).name <> "Nada" Then
    Shape2.Visible = False
    Shape1.Visible = True
    Shape1.Top = imgObjeto(Index).Top
    Shape1.Left = imgObjeto(Index).Left
    ItemElegido = Index
End If

End Sub
Private Sub lblObjCant_DblClick(Index As Integer)

If frmCarp.Visible Or frmHerrero.Visible Then Exit Sub


If ItemElegido = Index Then Call SendData("(SX" & Encripta(ItemElegido & " " & RandomNumber(1, 5), True))


End Sub
Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)


If prgRun Then
    prgRun = False
    Cancel = 1
End If

End Sub

Private Sub Image4_Click()

ItemElegido = FLAGORO
If UserGLD > 0 Then frmCantidad.Show , frmPrincipal

End Sub




Private Sub LvlLbl_Click()
Call AddtoRichTextBox(frmPrincipal.rectxt, "Experiencia: " & LvlLbl.Caption, 255, 128, 0, 0, 0)
End Sub

Private Sub mapa_Click()
Call Audio.PlayWave(0, SND_CLICK)
If Nopuede = 1 Then Exit Sub
frmMapa.Show , frmPrincipal
Call AddtoRichTextBox(frmPrincipal.rectxt, "Esto indica el nombre del mapa en el que estas en este momento: " & mapa.Caption, 255, 255, 255, 0, 0)
End Sub

Private Sub Moverpantalla_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Pantalla = True Then Exit Sub
    h = 1
    StartX = X
    StartY = Y
End Sub
    Private Sub Moverpantalla_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If h = 1 Then
    frmPrincipal.Left = frmPrincipal.Left + (X - StartX)
    frmPrincipal.Top = frmPrincipal.Top + (Y - StartY)
    End If
End Sub
    Private Sub Moverpantalla_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    h = 0
End Sub



Private Sub NumCanjesD_Click()
Call AddtoRichTextBox(frmPrincipal.rectxt, "Estos puntos solamente los consigues donando en la siguiente pagina web: http://nabrianao.com/donar.php ahora tienes " & NumCanjesD.Caption & " Puntos de Canjeo", 204, 0, 204, 0, 0)
End Sub

Private Sub NumOnline_Click()
Call AddtoRichTextBox(frmPrincipal.rectxt, "Cantidad de usuarios online: " & NumOnline.Caption, 255, 255, 255, 0, 0)
End Sub

Private Sub Party_Click()

frmParty.ListaIntegrantes.Clear
LlegoParty = False
Call SendData("PARINF")
Do While Not LlegoParty
    DoEvents
Loop
frmParty.Visible = True
frmParty.SetFocus
LlegoParty = False
            
End Sub

Private Sub Perdedor_Timer()
Perdedor.Enabled = False
End Sub


Private Sub RecTxt_GotFocus()

SendTxt.Visible = False
Nopuede = 0
frmPrincipal.SetFocus

End Sub



Private Sub Reputacion_Click(Index As Integer)

If Index = 1 Then
Call AddtoRichTextBox(frmPrincipal.rectxt, "Recuerda tener una buena reputaci?n ya que esto deriva a tu ranking en el top de 250 usuarios del juego: http://nabrianao.com/ranking.php", 255, 255, 255, 0, 0)
ElseIf Index = 2 Then
Call AddtoRichTextBox(frmPrincipal.rectxt, "Activando esta opci?n probaras una nueva forma de tirar Hechizos marcando el intervalo correcto del juego, en caso de que prefieras la cl?sica solo desactiva esta opci?n.", 255, 255, 255, 0, 0)
End If
End Sub

Private Sub SendTxt_KeyUp(KeyCode As Integer, Shift As Integer)

'If KeyCode = vbKeyReturn Then
  '  Call ProcesaEntradaCmd(stxtbuffer)
   ' stxtbuffer = ""
  '  frmPrincipal.SendTxt.Text = ""
   ' frmPrincipal.SendTxt.Visible = False
   ' Nopuede = 0
  '  KeyCode = 0
'End If




End Sub

Private Sub TirarItem()
If TIRAITEM = True Then
Call AddtoRichTextBox(frmPrincipal.rectxt, "Presiona Y para desactivar el seguro de items y poder tirar.", 250, 150, 0, 0, 0)
Exit Sub
Else

    If (ItemElegido > 0 And ItemElegido < MAX_INVENTORY_SLOTS + 1) Or (ItemElegido = FLAGORO) Then
        If UserInventory(ItemElegido).Amount = 1 Then
            SendData "TI" & ItemElegido & "," & 1
        Else
           If UserInventory(ItemElegido).Amount > 1 Then
            frmCantidad.Show , frmPrincipal
           End If
        End If
    End If
End If
 
End Sub

Private Sub AgarrarItem()
    SendData "AG"
End Sub

Private Sub UsarItem()
    If (ItemElegido > 0) And (ItemElegido < MAX_INVENTORY_SLOTS + 1) Then
    SendData "(SD" & Encripta(ItemElegido & " " & RandomNumber(1, 5), True): PocionesNAO = PocionesNAO + 1
    End If
End Sub

Public Sub EquiparItem()
If (ItemElegido > 0) And (ItemElegido < MAX_INVENTORY_SLOTS + 1) Then _
        SendData "EQUI" & ItemElegido
End Sub


Private Sub lblLanzar_Click()
If FX = 0 Then Call Audio.PlayWave(0, SND_CLICK)

If Not lstHechizos.List(lstHechizos.ListIndex) <> "Nada" Then Exit Sub
'And TiempoTranscurrido(LastHechizo) >= IntervaloSpell And TiempoTranscurrido(Hechi) >= IntervaloSpell / 4 Then
    Call SendData("LH" & lstHechizos.ListIndex + 1)
    Call SendData("UK" & Magia)
    frmPrincipal.MousePointer = 2
'End If

End Sub
Private Sub lblLanzar_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
'lblLanzar.Picture = LoadPicture(App.Path & "/GRAFICOS/lanzar1.jpg")
End Sub

Private Sub lblLanzar_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
'lblLanzar.Picture = LoadPicture(App.Path & "/GRAFICOS/lanzar.jpg")
End Sub

Private Sub lblInfo_Click()
If FX = 0 Then Call Audio.PlayWave(0, SND_CLICK)
    Call SendData("INFS" & lstHechizos.ListIndex + 1)
End Sub
Private Sub Renderer_Click()

If Cartel Then Cartel = False

If Comerciando = 0 Then
    Call ConvertCPtoTP(MouseX, MouseY, tX, tY)
    If Abs(UserPos.Y - tY) > 6 Then Exit Sub
    If Abs(UserPos.X - tX) > 8 Then Exit Sub
    If EligiendoWhispereo Then
        Call SendData("WH" & tX & "," & tY)
        EligiendoWhispereo = False
        Exit Sub
    End If
    
    If UsingSkill = 0 Then
        SendData "LC" & tX & "," & tY
    Else
    If CastleHechi = 0 Then ' SI ESTA ACTIVADO EL CASTEO
    If UsingSkill = Magia Then
            If Not (TiempoTranscurrido(LastGolpe) >= IntervaloGolpe) And (TiempoTranscurrido(Golpeo) >= IntervaloGolpe / 4) And (Not UserDescansar) And _
           (Not UserMeditar) Then
            Exit Sub
            End If
            
            If (TiempoTranscurrido(LastHechizo) < IntervaloSpell Or TiempoTranscurrido(Hechi) < IntervaloSpell / 4) Then
            
            If Not (TiempoTranscurrido(LastGolpe) >= IntervaloGolpe) And (TiempoTranscurrido(Golpeo) >= IntervaloGolpe / 4) And (Not UserDescansar) And _
           (Not UserMeditar) Then
            Exit Sub
            End If
            
                Exit Sub
            Else: Hechi = Timer
            End If
        ElseIf UsingSkill = Proyectiles Then
            If Not (TiempoTranscurrido(LastGolpe) >= IntervaloGolpe) And (TiempoTranscurrido(Golpeo) >= IntervaloGolpe / 4) And (Not UserDescansar) And _
           (Not UserMeditar) Then
            Exit Sub
            End If
            
            If (TiempoTranscurrido(LastFlecha) < IntervaloFlecha Or TiempoTranscurrido(Flecho) < IntervaloFlecha / 4) Then
            
            If Not (TiempoTranscurrido(LastGolpe) >= IntervaloGolpe) And (TiempoTranscurrido(Golpeo) >= IntervaloGolpe / 4) And (Not UserDescansar) And _
           (Not UserMeditar) Then
            Exit Sub
            End If
            
                Exit Sub
            Else: Flecho = Timer
            End If
        End If
        
        frmPrincipal.MousePointer = vbDefault
        
        Else ' separamo aca el castle xD el de arriba es casteado
        
        frmPrincipal.MousePointer = vbDefault
        If UsingSkill = Magia Then
            If (TiempoTranscurrido(LastHechizo) < IntervaloSpell Or TiempoTranscurrido(Hechi) < IntervaloSpell / 4) Then
                Exit Sub
            Else: Hechi = Timer
            End If
        ElseIf UsingSkill = Proyectiles Then
            If (TiempoTranscurrido(LastFlecha) < IntervaloFlecha Or TiempoTranscurrido(Flecho) < IntervaloFlecha / 4) Then
                Exit Sub
            Else: Flecho = Timer
            End If
        End If
        
        End If ' cerramooooooos el no castle
        
        Call SendData("WLC" & tX & "," & tY & "," & UsingSkill)

        
        UsingSkill = 0
    End If
End If

If boton = vbRightButton Then Call SendData("/TELEPLOC")
boton = 0

End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
    If (Not SendTxt.Visible) Then
 
        If LenB(CustomKeys.ReadableName(KeyCode)) > 0 Then
       
            Select Case KeyCode
                Case CustomKeys.BindedKey(eKeyType.mKeyToggleMusic)
                    If Musica = 1 Then
                        Call AddtoRichTextBox(frmPrincipal.rectxt, "La musica a sido activada al cambio de mapa tomar? efecto.", 200, 255, 200, 0, 0)
                        Musica = 0
                   
                        Call WriteVar(App.Path & "/Init/Opciones.opc", "CONFIG", "Music", 0)
                    Else
                        Call AddtoRichTextBox(frmPrincipal.rectxt, "La musica a sido desactivada.", 200, 255, 200, 0, 0)
                        Musica = 1
                
                        Call WriteVar(App.Path & "/Init/Opciones.opc", "CONFIG", "Music", 1)
                        Call Audio.StopMidi
                        Call Audio.MP3_Stop
                    End If 'X
               
                Case CustomKeys.BindedKey(eKeyType.mKeyGetObject)
                    Call AgarrarItem 'X
               
                Case CustomKeys.BindedKey(eKeyType.mKeyEquipObject)
                    Call EquiparItem 'X
               
                Case CustomKeys.BindedKey(eKeyType.mKeyToggleNames)
                    Nombres = Not Nombres 'X
   
                Case CustomKeys.BindedKey(eKeyType.MkeyRobar)
                    Call SendData("UK" & Robar)
    
                Case CustomKeys.BindedKey(eKeyType.MkeyOcultar)
                    Call SendData("UK" & Ocultarse)
               
                Case CustomKeys.BindedKey(eKeyType.mKeyDropObject)
                    Call TirarItem 'X
               
                Case CustomKeys.BindedKey(eKeyType.mKeyUseObject)
                    If Not NoPuedeUsar Then
                        NoPuedeUsar = True
                        Call UsarItem
                    End If 'X
               
                Case CustomKeys.BindedKey(eKeyType.mKeyRequestRefresh)
                            Call SendData("RPU")
                        Beep
                       
 '..........................ShaFTeR..........................
        Case CustomKeys.BindedKey(eKeyType.mKeyNormal)
            frmPrincipal.modo = "1 Normal"
            If EligiendoWhispereo Then
                EligiendoWhispereo = False
                MousePointer = 1
            End If
           
        Case CustomKeys.BindedKey(eKeyType.mKeySusurrar)
            Call AddtoRichTextBox(frmPrincipal.rectxt, "Has click sobre el usuario al que quieres susurrar.", 255, 255, 255, 1, 0)
            frmPrincipal.modo = "2 Susurrar"
            MousePointer = 2
            EligiendoWhispereo = True
           
        Case CustomKeys.BindedKey(eKeyType.mKeyClan)
            frmPrincipal.modo = "3 Clan"
            If EligiendoWhispereo Then
                EligiendoWhispereo = False
                MousePointer = 1
            End If
 
        Case CustomKeys.BindedKey(eKeyType.mKeyGrito)
            frmPrincipal.modo = "4 Grito"
            If EligiendoWhispereo Then
                EligiendoWhispereo = False
                MousePointer = 1
            End If
           
        Case CustomKeys.BindedKey(eKeyType.mKeyRol)
            frmPrincipal.modo = "5 Bando"
            If EligiendoWhispereo Then
                EligiendoWhispereo = False
                MousePointer = 1
            End If
       
        Case CustomKeys.BindedKey(eKeyType.mKeyParti)
            frmPrincipal.modo = "6 Party"
            If EligiendoWhispereo Then
                EligiendoWhispereo = False
                MousePointer = 1
            End If
           

 
            End Select
        Else
 
        End If
    End If
   
    Select Case KeyCode
    
          Case vbKeyF1:
          If Nopuede = 1 Then Exit Sub
          Call ShellExecute(Me.hwnd, "open", "https://sites.google.com/site/manualnabrianao/", "", "", 1)
          Case vbKeyF2:
          If Nopuede = 1 Then Exit Sub
          Call SendData("/RETAR")
          Case vbKeyF4
          If Nopuede = 1 Then Exit Sub
          RetPj.Show , frmPrincipal
        
          Case vbKeyEscape
          Menu.Show , frmPrincipal
           
           Case vbKeyF5
           Dim i As Integer
            Captura1.Area = Ventana
            Captura1.Captura
                For i = 1 To 1000
                    If Not FileExist(App.Path & "\screenshots\Imagen" & i & ".bmp", vbNormal) Then Exit For
                Next
            Call SavePicture(Captura1.Imagen, App.Path & "/screenshots/Imagen" & i & ".bmp")
             Call AddtoRichTextBox(frmPrincipal.rectxt, "Foto tomada guardada en la carpeta screenshots como Imagen" & i & ".", 200, 255, 200, 0, 0)


            Case CustomKeys.BindedKey(eKeyType.mKeyInvi)
            
            Call SendData("/INVISIBLE")
            Call SendData("/SEGUROCLAN")


   
 
        Case CustomKeys.BindedKey(eKeyType.mKeyLlamadoAlClan)
          If Nopuede = 1 Then Exit Sub
          Call SendData("KLA")
          
        Case CustomKeys.BindedKey(eKeyType.mKeyMeditate)
            Call SendData("/MEDITAR") 'X
       
   
        Case CustomKeys.BindedKey(eKeyType.mkeySegItem)
           If Nopuede = 1 Then Exit Sub
            If TIRAITEM = True Then
            TIRAITEM = False
            Call AddtoRichTextBox(frmPrincipal.rectxt, "Seguro de item desactivado.", 250, 150, 0, 0, 0)
            Else
            Call AddtoRichTextBox(frmPrincipal.rectxt, "Seguro de item activado.", 250, 150, 0, 0, 0)
            TIRAITEM = True
            End If
           
        Case CustomKeys.BindedKey(eKeyType.mKeyAttack)
        If (TiempoTranscurrido(LastGolpe) >= IntervaloGolpe) And (TiempoTranscurrido(Golpeo) >= IntervaloGolpe / 4) And (Not UserDescansar) And _
           (Not UserMeditar) Then
            Call SendData("AT")
            Golpeo = Timer
        End If 'X
       
        'Standelf
        Case CustomKeys.BindedKey(eKeyType.mKeyUnlock)
            Call SendData("(A") 'X
            
            
            
            Case CustomKeys.BindedKey(eKeyType.mKeyTalk)
            If Not frmCantidad.Visible Then
            If SendTxt.Visible = False Then
                SendTxt.Visible = True
                Nopuede = 1
                SendTxt.SetFocus
            ElseIf SendTxt.Visible = True Then
                Call ProcesaEntradaCmd(stxtbuffer)
                stxtbuffer = ""
                frmPrincipal.SendTxt.Text = ""
                frmPrincipal.SendTxt.Visible = False
                Nopuede = 0
                KeyCode = 0
            End If 'X
            End If
            
    End Select
    
    

End Sub
Sub Form_Load()
Detectar rectxt.hwnd, Me.hwnd
frmPrincipal.Caption = "Nabrian AO" & " V " & App.Major & "." & App.Minor & "." & App.Revision & "-" & RandomNumber(2000, 3000)


If SeguridadActiva = True Then
IPdelServidor = "nabrianservidor.ddns.net" ' ACA LA IP ON
Else
'Command1.Visible = True
'IPdelServidor = "127.0.0.1" '127.0.0.1
End If

PuertoDelServidor = 10300

FPSFLAG = True

If SkinGrafico = 0 Then
frmPrincipal.Picture = LoadPicture("Graficos\Principal0.jpg")
frmPrincipal.imgFondoInvent.Picture = LoadPicture("Graficos\Centronuevoinventario0.jpg")
frmPrincipal.imgFondoHechizos.Picture = LoadPicture("Graficos\Centronuevohechizos0.jpg")
ElseIf SkinGrafico = 1 Then
frmPrincipal.Picture = LoadPicture("Graficos\Principal1.jpg")
frmPrincipal.imgFondoInvent.Picture = LoadPicture("Graficos\Centronuevoinventario1.jpg")
frmPrincipal.imgFondoHechizos.Picture = LoadPicture("Graficos\Centronuevohechizos1.jpg")
ElseIf SkinGrafico = 2 Then
frmPrincipal.Picture = LoadPicture("Graficos\Principal3.jpg")
frmPrincipal.imgFondoInvent.Picture = LoadPicture("Graficos\Centronuevoinventario3.jpg")
frmPrincipal.imgFondoHechizos.Picture = LoadPicture("Graficos\Centronuevohechizos3.jpg")
ElseIf SkinGrafico = 3 Then
frmPrincipal.Picture = LoadPicture("Graficos\Principal2.jpg")
frmPrincipal.imgFondoInvent.Picture = LoadPicture("Graficos\Centronuevoinventario2.jpg")
frmPrincipal.imgFondoHechizos.Picture = LoadPicture("Graficos\Centronuevohechizos2.jpg")
End If


If CastleHechi = 0 Then
CheckCasTleHE.value = 1
Else
CheckCasTleHE.value = 0
End If
End Sub
Private Sub lstHechizos_KeyDown(KeyCode As Integer, Shift As Integer)

KeyCode = 0

End Sub
Private Sub lstHechizos_KeyPress(KeyAscii As Integer)

KeyAscii = 0

End Sub
Private Sub lstHechizos_KeyUp(KeyCode As Integer, Shift As Integer)

KeyCode = 0

End Sub


Private Sub Label1_Click()
LlegaronSkills = False
SendData "ESKI"

Do While Not LlegaronSkills
    DoEvents
Loop

Dim i As Integer
For i = 1 To NUMSKILLS
    frmSkills3.Text1(i).Caption = UserSkills(i)
Next i
Alocados = SkillPoints
frmSkills3.puntos.Caption = SkillPoints
frmSkills3.Show , frmPrincipal
End Sub
Private Sub picInv_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim mx As Integer
Dim my As Integer
Dim aux As Integer
mx = X \ 32 + 1
my = Y \ 32 + 1
aux = (mx + (my - 1) * 5) + OffsetDelInv

End Sub
Private Sub RecTxt_Change()
On Error Resume Next

If SendTxt.Visible Then
    SendTxt.SetFocus
ElseIf (Not frmComerciar.Visible) And _
    (Not frmSkills3.Visible) And _
    (Not frmForo.Visible) And _
    (Not frmEstadisticas.Visible) And _
    (Not frmCantidad.Visible) Then
      ' Picture1.SetFocus
End If

End Sub
Private Sub SendTxt_Change()

stxtbuffer = SendTxt.Text
    
End Sub


Private Sub SendTxt_KeyPress(KeyAscii As Integer)
If Not (KeyAscii = vbKeyBack) And Not (KeyAscii >= vbKeySpace And KeyAscii <= 250) Then KeyAscii = 0
          
End Sub

Private Sub soportelabel_Click()
Call SendData("/DAMESOS")
End Sub
Private Sub panelgmlabel_Click()
Call SendData("/PANELGM")
End Sub


Private Sub Socket1_Connect()
    If IntervaloConexionLogin > 3 Then Exit Sub
    
    IntervaloConexionLogin = IntervaloConexionLogin + 1
    
    If IntervaloConexionLogin = 3 Then
    IntervaloConexionLogin = 7
    frmConectar.TimerConexion.Enabled = True
    Exit Sub
    End If
    
    If EstadoLogin = CrearNuevoPj Then
        Call SendData("gIvEmEvAlcOde")
    ElseIf EstadoLogin = Normal Then
        Call SendData("gIvEmEvAlcOde")
    ElseIf EstadoLogin = dados Then
        Call SendData("gIvEmEvAlcOde")
    ElseIf EstadoLogin = RecuperarPass Then
        Call SendData("gIvEmEvAlcOde")
    ElseIf EstadoLogin = Activar Then
        Call SendData("gIvEmEvAlcOde")
    ElseIf EstadoLogin = BorrarPj Then
        Call SendData("gIvEmEvAlcOde")
    End If
End Sub


Private Sub Socket1_Disconnect()
    logged = False
    Connected = False
    
    Socket1.Cleanup
    
  '  frmConectar.MousePointer = vbNormal
    FrmCrearpersonaje.Visible = False
    frmConectar.Visible = True
    Unload FrmCrearpersonaje
    Unload frmBorrar
    Unload frmRecupera
    frmPrincipal.Visible = False

    Pausa = False
    UserMeditar = False

    UserSexo = 0
    UserRaza = 0
    UserEmail = ""
    bO = 100
    
    Dim i As Integer
    For i = 1 To NUMSKILLS
        UserSkills(i) = 0
    Next i

    For i = 1 To NUMATRIBUTOS
        UserAtributos(i) = 0
    Next i

    SkillPoints = 0
    Alocados = 0

    Dialogos.UltimoDialogo = 0
    Dialogos.CantidadDialogos = 0
End Sub
Private Sub Socket1_LastError(ErrorCode As Integer, ErrorString As String, Response As Integer)

Select Case ErrorCode
    Case 24036
        Call MsgBox("Error: Intentando conectar con el servidor.", vbApplicationModal + vbInformation + vbOKOnly + vbDefaultButton1, "Error")
        Exit Sub
    Case 24038, 24061
        Call MsgBox("Error: No se obtuvo una respuesta del servidor.", vbApplicationModal + vbCritical + vbOKOnly + vbDefaultButton1, "Error")
    Case 24053
        Call MsgBox("Error: Se ha perdido la conexi?n con el server.")
    Case 24060
        Call MsgBox("Error: Se termin? el tiempo de espera.", vbApplicationModal + vbCritical + vbOKOnly + vbDefaultButton1, "Error")
    Case Else
        Call MsgBox(ErrorString, vbApplicationModal + vbCritical + vbOKOnly + vbDefaultButton1, "Error")
End Select

frmConectar.PictureLogin.Visible = True
frmConectar.txtUser.Visible = True
frmConectar.TxtPass.Visible = True
base_light = D3DColorXRGB(255, 255, 255)
frmConectar.MousePointer = vbDefault
Response = 0

frmPrincipal.Socket1.Disconnect

If Not FrmCrearpersonaje.Visible Then
    frmConectar.Show
Else
    'FrmCrearpersonaje.MousePointer = 0
End If

End Sub
Private Sub Socket1_Read(DataLength As Integer, IsUrgent As Integer)
On Error Resume Next
Dim LoopC As Integer

Dim RD As String
Dim rBuffer(1 To 500) As String

Static TempString As String

Dim CR As Integer
Dim tChar As String
Dim sChar As Integer

Call Socket1.Read(RD, DataLength)

If TempString <> "" Then
    RD = TempString & RD
    TempString = ""
End If

sChar = 1

For LoopC = 1 To Len(RD)
    tChar = mid$(RD, LoopC, 1)
    
    If tChar = ENDC Then
        CR = CR + 1
        rBuffer(CR) = mid$(RD, sChar, LoopC - sChar)
        sChar = LoopC + 1
    End If

Next LoopC

If Len(RD) - (sChar - 1) <> 0 Then TempString = mid$(RD, sChar, Len(RD))

For LoopC = 1 To CR
    If SeguridadActiva = False Then AddtoRichTextBox PACKETS.RichTextBox1, rBuffer(LoopC), 255, 255, 255, 0, 0
    Call HandleData(rBuffer(LoopC))
Next LoopC

End Sub



Private Sub textprueba_Change()

End Sub

Private Sub TIMERQUECARAJO_Timer()
TIMERQUECARAJO.Enabled = False
End Sub
Private Sub Renderer_DblClick()
    If Not frmForo.Visible Then
        SendData "RC" & tX & "," & tY
    End If
End Sub
 
Private Sub Renderer_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
boton = Button
End Sub
 
Private Sub Renderer_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
MouseX = X
MouseY = Y

LvlLbl.Visible = True
End Sub

Private Sub Minimap_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call Audio.PlayWave(0, SND_CLICK)
    If EsGM = True Then
    If Button = vbRightButton Then Call SendData("/TELEP YO " & UserMap & " " & CByte(X) & " " & CByte(Y))
    Else
    frmMapa.Show , frmPrincipal
    End If
End Sub

Private Sub Minimap_Click()
Call AddtoRichTextBox(frmPrincipal.rectxt, "Usa esto para guiarte en el mapa que estas en este momento, esto es un dibujado del mapa el punto rojo es la posici?n donde estas tu parado.", 192, 192, 192, 0, 0)
End Sub
