Public Class cart1
    Inherits System.Web.UI.Page
    Dim ob As New Class1, t As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Me.GridView1.Rows.Count = 0 Then
            Me.Label3.Visible = True
        Else

            ob.cmd.Connection = ob.con
            ob.con.Open()
            ob.cmd.CommandText = "Select SUM(total) from cart where email = '" & Session("emailid") & "'"
            ob.adp.SelectCommand = ob.cmd
            ob.adp.Fill(ob.ds, "img")
            If ob.ds.Tables("img").Rows.Count <> 0 Then
                t = ob.ds.Tables("img").Rows(0)(0)
                Me.Label8.Text = t
            End If
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        
        Response.Redirect("confirmation.aspx?cart=" + t)

    End Sub

    
End Class