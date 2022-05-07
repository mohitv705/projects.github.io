Public Class DLIB
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Me.GridView1.Rows.Count = 0 Then
            Me.Label2.Visible = True
        Else
            Me.Label3.Visible = True
        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("flibpage.aspx")
        Me.Label2.Visible = True
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("fdashboard.aspx")
    End Sub
End Class