﻿Imports System.IO
Imports System.Drawing.Drawing2D

Public Class studentreg
    Inherits System.Web.UI.Page
    Dim ob As New Class1
    Dim savepath, savefile, picpath As String
    Dim g, d As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub



    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click



        g = Me.DropDownList1.SelectedItem.ToString
        d = Me.DropDownList2.SelectedItem.ToString
        If Me.FileUpload1.HasFile Then
            savepath = Request.PhysicalApplicationPath
            savefile = Path.Combine(savepath, Me.FileUpload1.FileName)
            picpath = "~/" & Me.FileUpload1.FileName
            Me.FileUpload1.SaveAs(savefile)
        End If

        ob.cmd.Connection = ob.con
        ob.con.Open()
        ob.cmd.CommandText = "Select * from sdetails where email = '" & TextBox3.Text & "'"
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds, "img")
        If ob.ds.Tables("img").Rows.Count <> 0 Then
            MsgBox("email already registered", MsgBoxStyle.Information)
        Else
            ob.cmd.CommandText = "Insert into sdetails values('" & Me.TextBox1.Text & " ',' " & Me.TextBox2.Text & " ',' " & Me.TextBox4.Text & "','" & Me.TextBox3.Text & "','" & Me.TextBox5.Text & "','" & Me.TextBox7.Text & "','" & picpath & "','" & g & "','" & d & "')"
            ob.cmd.ExecuteNonQuery()
            ob.con.Close()
            Response.Redirect("loginpag.aspx")

        End If
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

    End Sub
End Class