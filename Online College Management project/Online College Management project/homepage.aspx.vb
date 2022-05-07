Public Class homepage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Response.Redirect("facultypage.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Response.Redirect("homepage.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button10.Click
        Response.Redirect("aboutus.aspx")
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button8.Click
        Response.Redirect("loginpag.aspx")
    End Sub

   
    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button9.Click
        Response.Redirect("contactus.aspx")
    End Sub
    ' Protected Sub Button12_Click(sender As Object, e As EventArgs) Handles Button12.Click
    '  Response.Redirect("bcaAllSem.pdf")
    ' End Sub

    '  Protected Sub Button13_Click(sender As Object, e As EventArgs) Handles Button13.Click
    '     Response.Redirect("bbaAllSem.pdf")
    ' End Sub

    Protected Sub Button11_Click(sender As Object, e As EventArgs) Handles Button11.Click
        Response.Redirect("syllabus.aspx")
    End Sub
End Class