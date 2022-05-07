Public Class skin
    Inherits System.Web.UI.Page
    Dim Ob As New Class1
    Dim total, contact As New Int16
    Dim d, name, address As String
    Dim a, b As Date
    Dim od As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Me.Panel2.Visible = True
            Me.TextBox1.Text = GridView1.SelectedRow.Cells(6).Text
            Me.TextBox2.Text = GridView1.SelectedRow.Cells(3).Text
            Me.TextBox3.Text = GridView1.SelectedRow.Cells(4).Text
            Me.TextBox4.Text = GridView1.SelectedRow.Cells(5).Text
            Me.TextBox5.Text = GridView1.SelectedRow.Cells(1).Text

        Me.TextBox6.Text = GridView1.SelectedRow.Cells(1).Text
        Me.TextBox7.Text = GridView1.SelectedRow.Cells(3).Text
        Me.TextBox8.Text = GridView1.SelectedRow.Cells(5).Text
        Me.TextBox10.Text = GridView1.SelectedRow.Cells(4).Text

    End Sub


    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        a = System.DateTime.Today
        b = a.AddDays(2)
        name = ""
        contact = 0
        address = ""
        If Session("emailid") = "" Then
            MsgBox("please login first")
            Response.Redirect("login.aspx")
        Else
            If Me.DropDownList1.SelectedValue = 1 Then
                total = Me.TextBox10.Text * 1
            ElseIf Me.DropDownList1.SelectedValue = 2 Then
                total = Me.TextBox10.Text * 2
            ElseIf Me.DropDownList1.SelectedValue = 3 Then
                total = Me.TextBox10.Text * 3
            ElseIf Me.DropDownList1.SelectedValue = 4 Then
                total = Me.TextBox10.Text * 4
            ElseIf Me.DropDownList1.SelectedValue = 5 Then
                total = Me.TextBox10.Text * 5
            End If
            Me.TextBox9.Text = total

            d = Me.DropDownList1.SelectedValue

            Ob.cmd.Connection = Ob.con
            Ob.con.Open()
            Ob.cmd.CommandText = "Insert into cart values('" & Session("emailid") & " ',' " & Me.TextBox5.Text & " ',' " & Me.TextBox1.Text & "','" & Me.TextBox2.Text & "','" & Me.TextBox3.Text & "','" & d & "','" & total & "','" & Me.TextBox4.Text & "','" & name & "','" & a & "','" & address & "','" & b & "','" & contact & "')"
            Ob.cmd.ExecuteNonQuery()
            Ob.con.Close()
            MsgBox("Product added to cart")
        End If
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        If Me.DropDownList1.SelectedValue = 1 Then
            total = Me.TextBox10.Text * 1
        ElseIf Me.DropDownList1.SelectedValue = 2 Then
            total = Me.TextBox10.Text * 2
        ElseIf Me.DropDownList1.SelectedValue = 3 Then
            total = Me.TextBox10.Text * 3
        ElseIf Me.DropDownList1.SelectedValue = 4 Then
            total = Me.TextBox10.Text * 4
        ElseIf Me.DropDownList1.SelectedValue = 5 Then
            total = Me.TextBox10.Text * 5
        End If
        Me.TextBox9.Text = total
    End Sub

    Protected Sub itemSelected(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged, DropDownList1.SelectedIndexChanged

    End Sub
End Class