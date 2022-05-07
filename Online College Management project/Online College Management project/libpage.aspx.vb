Public Class libpage
    Inherits System.Web.UI.Page
    Dim ob As New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        
        ob.cmd.Connection = ob.con
        ob.con.Open()
        ob.cmd.CommandText = "Insert into borrowbook values('" & Session("emailid") & " ',' " & Me.TextBox1.Text & " ',' " & Me.TextBox2.Text & "','" & Me.TextBox3.Text & "')"
        ob.cmd.ExecuteNonQuery()
        ob.con.Close()
        Me.Label1.Visible = True
    End Sub


    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        TextBox1.Text = GridView1.SelectedRow.Cells(1).Text
        TextBox2.Text = GridView1.SelectedRow.Cells(2).Text
        TextBox3.Text = GridView1.SelectedRow.Cells(3).Text
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click

    End Sub
End Class