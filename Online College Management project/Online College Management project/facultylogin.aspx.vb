﻿Imports System.Data.Sql
Imports System.Data.SqlClient
Public Class WebForm2
    Inherits System.Web.UI.Page
    Dim ob As New Class1
    Dim dr As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("pass") = ""

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Session("pass") = Me.TextBox2.Text
        ob.cmd.Connection = ob.con
        ob.con.Open()
        ob.cmd.CommandText = "Select * from fdetails where email = '" & Me.TextBox1.Text & "'  AND  pass =  '" & Me.TextBox2.Text & "'"
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds, "img")
        If ob.ds.Tables("img").Rows.Count <> 0 Then
            Session("emailid") = Me.TextBox1.Text
            Session("pass") = Me.TextBox2.Text
            Response.Redirect("userdashboard.aspx")

        Else
            Response.Redirect("errorpage.aspx")
        End If
        ob.con.Close()

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Session("pass") = Me.TextBox2.Text
        Me.Button2.Visible = True
        Me.TextBox2.TextMode = TextBoxMode.SingleLine
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Session("pass") = Me.TextBox2.Text
        Me.TextBox2.Text = Session("pass")
        Me.TextBox2.TextMode = TextBoxMode.Password
        Me.TextBox2.Text = Session("pass")
        Me.Button2.Visible = False
    End Sub
End Class