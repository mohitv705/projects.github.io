Imports System.IO
Imports System.Drawing.Drawing2D
Public Class WebForm7
    Inherits System.Web.UI.Page
    Dim ob As New Class1
    Dim savepath, savefile, picpath As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Me.FileUpload1.HasFile Then
            savepath = Request.PhysicalApplicationPath
            savefile = Path.Combine(savepath, Me.FileUpload1.FileName)
            picpath = "~/" & Me.FileUpload1.FileName
            Me.FileUpload1.SaveAs(savefile)
        End If

        ob.cmd.Connection = ob.con
        ob.con.Open()
        ob.cmd.CommandText = "UPDATE fdetails SET picpath ='" & picpath & "' where email = '" & Session("emailid") & "'"
        ob.cmd.ExecuteNonQuery()
        ob.con.Close()
        Response.Redirect("fprofile.aspx")
    End Sub
End Class