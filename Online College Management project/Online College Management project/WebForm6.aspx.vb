Public Class WebForm6
    Inherits System.Web.UI.Page
    Dim f As Date
    Dim s As Date

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        End Sub

    Protected Sub btnValidate_Click(sender As Object, e As EventArgs)
        f = txtDate.Text
        s = Now
        Dim dif As System.TimeSpan = s.Subtract(f)
        Dim diff1 As TimeSpan = s - f
        Dim diff2 As String = (s - f).ToString
        TextBox1.Text = diff2
        If diff1.CompareTo(6570) Then
            Me.Label1.Text = "less than 18"

        End If
    End Sub
End Class