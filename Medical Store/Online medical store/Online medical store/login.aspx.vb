Imports System.IO
Imports System.Drawing.Drawing2D
Public Class login1
    Inherits System.Web.UI.Page
    Dim ob As New Class1
    Dim g As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Session("type") = "user"
        ob.cmd.Connection = ob.con
        ob.con.Open()
        ob.cmd.CommandText = "Select * from userdetails where email = '" & Me.TextBox1.Text & "'AND  pass='" & Me.TextBox2.Text & "'"
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
End Class