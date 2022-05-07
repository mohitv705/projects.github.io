Public Class admreg
    Inherits System.Web.UI.Page
    Dim ob As New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.TextBox1.Text = ""
        Me.TextBox2.Text = ""
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ob.cmd.Connection = ob.con
        ob.con.Open()
        ob.cmd.CommandText = "Select * from fdetails where email = '" & TextBox1.Text & "'"
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds, "img")
        If ob.ds.Tables("img").Rows.Count <> 0 Then
            MsgBox("email already registered", MsgBoxStyle.Information)

        Else
            ob.cmd.CommandText = "Insert into admindetails values('" & Me.TextBox1.Text & " ',' " & Me.TextBox2.Text & "')"
            ob.cmd.ExecuteNonQuery()
            ob.con.Close()
            Me.Panel2.Visible = True
        End If
    End Sub
End Class