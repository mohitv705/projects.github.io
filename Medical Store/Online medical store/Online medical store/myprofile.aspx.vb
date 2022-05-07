Imports Microsoft.SqlServer
Imports System
Imports System.Data
Imports System.Data.SqlClient
Public Class myprofile
    Inherits System.Web.UI.Page
    Dim ob As New Class1, d As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ob.cmd.Connection = ob.con
        ob.con.Open()
        ob.cmd.CommandText = "Select * from userdetails where email = '" & Session("emailid") & "'"
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds, "img")
        If ob.ds.Tables("img").Rows.Count <> 0 Then
            Me.name.Text = ob.ds.Tables("img").Rows(0)(0)
            Me.email.Text = ob.ds.Tables("img").Rows(0)(1)
            Me.phone.Text = ob.ds.Tables("img").Rows(0)(2)
            Me.address.Text = ob.ds.Tables("img").Rows(0)(3)
            Me.dob.Text = ob.ds.Tables("img").Rows(0)(4)
            Me.DropDownList1.SelectedValue = ob.ds.Tables("img").Rows(0)(6)

        End If
    End Sub

    ' Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
    '   Me.name.ReadOnly = False
    '   Me.phone.ReadOnly = False
    ' Me.address.ReadOnly = False
    ' Me.dob.ReadOnly = False

    ' End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        d = Me.DropDownList1.SelectedItem.ToString
        ob.cmd.Connection = ob.con
        If ob.con.State = ConnectionState.Closed Then
            ob.con.Open()
        End If
        ob.cmd.CommandText = "UPDATE userdetails SET name = '" & Me.name.Text & "' , phone = '" & Me.phone.Text & "', address = '" & Me.address.Text & "', dob = '" & Me.dob.Text & "', gender = '" & d & "'WHERE email='" & Session("emailid") & "'"
        ob.cmd.ExecuteNonQuery()
        ob.con.Close()
        MsgBox("Profile updated")
        Response.Redirect("myprofile.aspx")
        ' Response.Redirect("editpro.aspx?name=" + Me.name.Text + "&email=" + Session("emailid") + "&phone=" + Me.phone.Text + "&address=" + Me.address.Text + "&dob=" + Me.dob.Text + "&gender=" + Me.DropDownList1.SelectedValue)
    End Sub

    Protected Sub name_TextChanged(sender As Object, e As EventArgs) Handles name.TextChanged

    End Sub

    Protected Sub email_TextChanged(sender As Object, e As EventArgs) Handles email.TextChanged

    End Sub

    Protected Sub phone_TextChanged(sender As Object, e As EventArgs) Handles phone.TextChanged

    End Sub

    Protected Sub address_TextChanged(sender As Object, e As EventArgs) Handles address.TextChanged

    End Sub

    Protected Sub dob_TextChanged(sender As Object, e As EventArgs) Handles dob.TextChanged

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub
End Class