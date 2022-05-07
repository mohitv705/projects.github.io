Public Class register1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If DropDownList1.SelectedItem.Text = "Student" Then
            Response.Redirect("studentreg.aspx")
        ElseIf DropDownList1.SelectedItem.Text = "Faculty" Then
            Response.Redirect("facultyreg.aspx")
        End If

    End Sub
End Class