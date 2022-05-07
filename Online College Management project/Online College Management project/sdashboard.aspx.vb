Imports System.Data.Sql
Imports System.Data.SqlClient

Public Class sdashboard
    Inherits System.Web.UI.Page
    Dim ob As New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("emailid") = "" Then
            Response.Redirect("loginpag.aspx")
        End If
        Me.Label3.Text = "welcome" + Session("emailid")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("sprofile.aspx")
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("routinepage.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("slib.aspx")
    End Sub
End Class