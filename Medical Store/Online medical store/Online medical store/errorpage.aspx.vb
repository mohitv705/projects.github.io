Public Class errorpage1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Session("type") = "user" Then
            Response.Redirect("login.aspx")
        Else
            Response.Redirect("adminlogin.aspx")
        End If
    End Sub
End Class