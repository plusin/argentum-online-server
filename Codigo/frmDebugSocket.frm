VERSION 5.00
Begin VB.Form frmDebugSocket 
   Caption         =   "Debug Socket"
   ClientHeight    =   6330
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3945
   LinkTopic       =   "Form1"
   ScaleHeight     =   6330
   ScaleWidth      =   3945
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command4 
      Caption         =   "Reload Socket"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   6000
      Width           =   3735
   End
   Begin VB.Frame Frame1 
      Caption         =   "State"
      Height          =   765
      Left            =   165
      TabIndex        =   8
      Top             =   4350
      Width           =   3705
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Estado."
         Height          =   195
         Left            =   195
         TabIndex        =   9
         Top             =   315
         Width           =   540
      End
   End
   Begin VB.TextBox Text2 
      Height          =   1455
      Left            =   165
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   6
      Top             =   2835
      Width           =   3690
   End
   Begin VB.TextBox Text1 
      Height          =   2280
      Left            =   165
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   225
      Width           =   3690
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   5760
      Width           =   3735
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Start/Stop debug"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   5520
      Width           =   3735
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Reset"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   5280
      Width           =   3735
   End
   Begin VB.Label Label2 
      Caption         =   "Errores:"
      Height          =   315
      Left            =   150
      TabIndex        =   7
      Top             =   2610
      Width           =   2685
   End
   Begin VB.Label Label1 
      Caption         =   "Requests"
      Height          =   315
      Left            =   195
      TabIndex        =   5
      Top             =   15
      Width           =   2685
   End
End
Attribute VB_Name = "frmDebugSocket"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Argentum Online 0.11.6
'Copyright (C) 2002 Márquez Pablo Ignacio
'
'This program is free software; you can redistribute it and/or modify
'it under the terms of the Affero General Public License;
'either version 1 of the License, or any later version.
'
'This program is distributed in the hope that it will be useful,
'but WITHOUT ANY WARRANTY; without even the implied warranty of
'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
'Affero General Public License for more details.
'
'You should have received a copy of the Affero General Public License
'along with this program; if not, you can find it at http://www.affero.org/oagpl.html
'
'Argentum Online is based on Baronsoft's VB6 Online RPG
'You can contact the original creator of ORE at aaron@baronsoft.com
'for more information about ORE please visit http://www.baronsoft.com/
'
'
'You can contact me at:
'morgolock@speedy.com.ar
'www.geocities.com/gmorgolock
'Calle 3 número 983 piso 7 dto A
'La Plata - Pcia, Buenos Aires - Republica Argentina
'Código Postal 1900
'Pablo Ignacio Márquez

Option Explicit

Private Sub Command1_Click()
        
        On Error GoTo Command1_Click_Err
        
100     Me.Visible = False

        
        Exit Sub

Command1_Click_Err:
102     Call RegistrarError(Err.Number, Err.Description, "frmDebugSocket.Command1_Click", Erl)
104     Resume Next
        
End Sub

Private Sub Command2_Click()
        
        On Error GoTo Command2_Click_Err
        
100     DebugSocket = Not DebugSocket

        
        Exit Sub

Command2_Click_Err:
102     Call RegistrarError(Err.Number, Err.Description, "frmDebugSocket.Command2_Click", Erl)
104     Resume Next
        
End Sub

Private Sub Command3_Click()
        
        On Error GoTo Command3_Click_Err
        
100     Text1.Text = vbNullString

        
        Exit Sub

Command3_Click_Err:
102     Call RegistrarError(Err.Number, Err.Description, "frmDebugSocket.Command3_Click", Erl)
104     Resume Next
        
End Sub

Private Sub Command4_Click()
        
        On Error GoTo Command4_Click_Err
        
100     Call ReloadSokcet

        
        Exit Sub

Command4_Click_Err:
102     Call RegistrarError(Err.Number, Err.Description, "frmDebugSocket.Command4_Click", Erl)
104     Resume Next
        
End Sub

