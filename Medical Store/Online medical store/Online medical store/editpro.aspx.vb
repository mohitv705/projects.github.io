Public Class editpro
    Inherits System.Web.UI.Page
    Dim ob As New Class1, d As String
    Dim a, b, c, g, birth, add As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        a = Request.QueryString("name")
        b = Request.QueryString("email")
        c = Request.QueryString("phone")
        g = Request.QueryString("gender")
        birth = Request.QueryString("dob")
        add = Request.QueryString("address")
        Me.name.Text = a
        Me.email.Text = b
        Me.phone.Text = c
        Me.DropDownList1.SelectedValue = g
        Me.dob.Text = birth
        Me.address.Text = add

        'd = Me.DropDownList1.SelectedItem.ToString
        'ob.cmd.Connection = ob.con
        'If ob.con.State = ConnectionState.Closed Then
        '    ob.con.Open()
        'End If
        'ob.cmd.CommandText = "UPDATE userdetails SET name = '" & Me.name.Text & "' , phone = '" & Me.phone.Text & "', address = '" & Me.address.Text & "', dob = '" & Me.dob.Text & "', gender = '" & d & "'WHERE email='" & Me.email.Text & "'"
        'ob.cmd.ExecuteNonQuery()
        'ob.con.Close()
        'MsgBox("Profile updated")
        'Response.Redirect("myprofile.aspx")


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        d = Me.DropDownList1.SelectedItem.ToString
        ob.cmd.Connection = ob.con
        If ob.con.State = ConnectionState.Closed Then
            ob.con.Open()
        End If
        ob.cmd.CommandText = "UPDATE userdetails SET name = '" & Me.name.Text & "' , phone = '" & Me.phone.Text & "', address = '" & Me.address.Text & "', dob = '" & Me.dob.Text & "', gender = '" & d & "'WHERE email='" & Me.email.Text & "'"
        ob.cmd.ExecuteNonQuery()
        ob.con.Close()
        MsgBox("Profile updated")
        Response.Redirect("myprofile.aspx")

    End Sub
End Class