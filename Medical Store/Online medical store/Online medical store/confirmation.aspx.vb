Public Class confirmation
    Inherits System.Web.UI.Page
    Dim t As Integer, ob As New Class1
    Dim a, b As Date
    Dim od As Integer = 1000
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        od = od + 1

        t = Request.QueryString("cart")
        Me.TextBox10.Text = t
        a = DateTime.Now.ToString
        b = a.AddDays(2)
        If ob.con.State = ConnectionState.Closed Then
            ob.cmd.Connection = ob.con
            ob.con.Open()
        End If
        ob.cmd.CommandText = "Select * from userdetails where email = '" & Session("emailid") & "'"
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds, "img")
        If ob.ds.Tables("img").Rows.Count <> 0 Then
            Me.TextBox6.Text = ob.ds.Tables("img").Rows(0)(0)
            Me.TextBox7.Text = ob.ds.Tables("img").Rows(0)(2)
            Me.TextBox8.Text = ob.ds.Tables("img").Rows(0)(3)
            Me.TextBox11.Text = b
            ob.con.Close()
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        If ob.con.State = ConnectionState.Closed Then
            ob.cmd.Connection = ob.con
            ob.con.Open()
        End If
        ' ob.cmd.CommandText = "UPDATE orders SET name = '" & Me.TextBox6.Text & "' WHERE email = '" & Session("emailid") & "'"
        '  ob.cmd.CommandText = "UPDATE orders SET address = '" & Me.TextBox8.Text & "' WHERE email = '" & Session("emailid") & "'"
        'ob.cmd.CommandText = "UPDATE orders SET contact = '" & Me.TextBox7.Text & "' WHERE email = '" & Session("emailid") & "'"
        ' ob.cmd.CommandText = "UPDATE orders SET orderdate = '" & a & "' WHERE email = '" & Session("emailid") & "'"
        ' ob.cmd.CommandText = "UPDATE orders SET delivery = '" & b & "' WHERE email = '" & Session("emailid") & "'"
        If ob.con.State = ConnectionState.Closed Then
            ob.cmd.Connection = ob.con
            ob.con.Open()
        End If
        ob.cmd.CommandText = "Insert orders Select * from cart where email='" & Session("emailid") & "'"
        ob.cmd.ExecuteNonQuery()
        ob.cmd.CommandText = "UPDATE orders SET name = '" & Me.TextBox6.Text & "',address = '" & Me.TextBox8.Text & "',contact = '" & Me.TextBox7.Text & "',orderdate = '" & a & "',delivery = '" & b & "' , orderid= '" & od & "' WHERE email='" & Session("emailid") & "'"
        ob.cmd.ExecuteNonQuery()
        ob.con.Close()
        MsgBox("order placed")
        Response.Redirect("order.aspx")
    End Sub
End Class