Public Class WebForm5
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.GridView1.Visible = True
        If Me.DropDownList1.SelectedValue = "bba" Then
            Session("dept") = "Bachelor in Business Administration(BBA)"
        End If
        If Me.DropDownList1.SelectedValue = "bca" Then
            Session("dept") = "Bachelor Of Computer Applications (BCA)"
        End If
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("fdashboard.aspx")
    End Sub
End Class