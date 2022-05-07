Imports System.IO
Imports System.Drawing.Drawing2D
Public Class WebForm2
    Inherits System.Web.UI.Page
    Dim ob As New Class1
    Dim g As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        g = Me.DropDownList1.SelectedItem.ToString
            ob.cmd.Connection = ob.con
            ob.con.Open()
            ob.cmd.CommandText = "Select * from userdetails where email = '" & Me.TextBox2.Text & "'"
            ob.adp.SelectCommand = ob.cmd
            ob.adp.Fill(ob.ds, "img")
            If ob.ds.Tables("img").Rows.Count <> 0 Then
                MsgBox("email already registered", MsgBoxStyle.Information)
            Else
                ob.cmd.CommandText = "Insert into userdetails values('" & Me.TextBox1.Text & " ',' " & Me.TextBox2.Text & " ',' " & Me.TextBox3.Text & "','" & Me.TextBox4.Text & "','" & Me.TextBox5.Text & "','" & Me.TextBox6.Text & "','" & g & "')"
                ob.cmd.ExecuteNonQuery()
                ob.con.Close()
                MsgBox("Registration successful")
                Response.Redirect("login.aspx")

            End If
    End Sub

End Class