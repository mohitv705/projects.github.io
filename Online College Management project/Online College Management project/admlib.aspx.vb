Public Class admlib
    Inherits System.Web.UI.Page
    Dim ob As New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ob.cmd.Connection = ob.con
        ob.con.Open()
        ob.cmd.CommandText = "Insert into library values('" & Me.TextBox1.Text & " ',' " & Me.TextBox2.Text & " ',' " & Me.TextBox3.Text & "')"
        ob.cmd.ExecuteNonQuery()
        ob.con.Close()
        Response.Redirect("admlib.aspx")
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Me.Panel1.Visible = True
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class