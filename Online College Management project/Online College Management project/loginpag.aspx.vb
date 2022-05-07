Public Class loginpag
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    
    Protected Sub ImageButton1_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        If DropDownList1.SelectedItem.Text = "Student" Then
            Session("pro") = "student"
            Response.Redirect("studentlogin.aspx")
        ElseIf DropDownList1.SelectedItem.Text = "Faculty" Then
            Session("pro") = "faculty"
            Response.Redirect("facultylogin.aspx")
        End If
    End Sub
End Class