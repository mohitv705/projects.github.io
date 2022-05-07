Imports System.Data.Sql
Imports System.Data.SqlClient
Public Class sprofile
    Inherits System.Web.UI.Page
    Dim ob As New Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("emailid") = "" Then
            Response.Redirect("loginpag.aspx")
        End If

        ob.cmd.Connection = ob.con
        ob.cmd.CommandText = "Select * from sdetails where email = '" & Session("emailid") & "'"
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds, "img")
        If ob.ds.Tables("img").Rows.Count <> 0 Then
            Me.Image1.Visible = True
            Me.Image1.ImageUrl = ob.ds.Tables("img").Rows(0)(6)
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("changepic.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Session("emailid") = ""
        Response.Redirect("homepage.aspx")
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("sdashboard.aspx")
    End Sub
End Class