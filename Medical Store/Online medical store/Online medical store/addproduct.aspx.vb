Imports System.Data.SqlClient
Imports System.Data.OleDb
Imports System.IO
Imports System.Drawing.Drawing2D

Public Class addproduct
    Inherits System.Web.UI.Page
    Dim ob As New Class1
    Dim savepath, savefile, picpath, d As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Me.FileUpload1.HasFile Then
            savepath = Request.PhysicalApplicationPath
            savefile = Path.Combine(savepath, Me.FileUpload1.FileName)
            picpath = "~/" & Me.FileUpload1.FileName
            Me.FileUpload1.SaveAs(savefile)
        End If

        d = Me.DropDownList1.SelectedItem.ToString
        ob.cmd.Connection = ob.con
        ob.con.Open()
        ob.cmd.CommandText = "Select * from med where medname = '" & Me.TextBox2.Text & "'"
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds, "img")
        If ob.ds.Tables("img").Rows.Count <> 0 Then
            MsgBox("Product already exists", MsgBoxStyle.OkOnly)
        Else
            ob.cmd.CommandText = "Insert into med values('" & picpath & " ',' " & Me.TextBox2.Text & " ',' " & Me.TextBox3.Text & "','" & Me.TextBox4.Text & "','" & Me.TextBox5.Text & "','" & d & "')"
            ob.cmd.ExecuteNonQuery()
            ob.con.Close()
            MsgBox("Product added succesfully", MsgBoxStyle.OkOnly)

        End If
    End Sub

End Class