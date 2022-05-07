Public Class loginaspx
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

   
    Protected Sub ImageButton2_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        If DropDownList2.SelectedItem.Text = "STUDENT" Then
            Response.Redirect("studentlogin.aspx")
        ElseIf DropDownList2.SelectedItem.Text = "FACULTY" Then
            Response.Redirect("facultylogin.aspx")
        End If
    End Sub
End Class