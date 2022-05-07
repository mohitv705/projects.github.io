Public Class logins
    Inherits System.Web.UI.Page
    Dim ob As New Class1

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ob.cmd.Connection = ob.con
        ob.con.Open()
        ob.cmd.CommandText = "Select * from sdetails where email = '" & Me.TextBox1.Text & "'  AND  pass =  '" & Me.TextBox2.Text & "'"
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds, "img")
        If ob.ds.Tables("img").Rows.Count <> 0 Then
            Response.Redirect("logindone.aspx")
            Session("emailid") = Me.TextBox1.Text
        Else
            Response.Redirect("errorpage.aspx")
        End If
        ob.con.Close()
    End Sub
End Class
