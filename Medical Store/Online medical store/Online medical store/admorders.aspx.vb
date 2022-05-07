Public Class admorders
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Me.GridView1.Rows.Count = 0 Then
            Me.Label2.Visible = True
        End If
    End Sub

End Class