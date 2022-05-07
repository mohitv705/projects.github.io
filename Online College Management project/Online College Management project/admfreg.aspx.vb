Imports System.IO
Imports System.Drawing.Drawing2D
Public Class admfreg
    Inherits System.Web.UI.Page
    Dim ob As New Class1
    Dim g, d, dep As String
    Dim savepath, savefile, picpath As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        g = Me.DropDownList1.SelectedItem.ToString
        d = Me.DropDownList2.SelectedItem.ToString
        dep = Me.DropDownList3.SelectedItem.ToString
        If Me.FileUpload1.HasFile Then
            savepath = Request.PhysicalApplicationPath
            savefile = Path.Combine(savepath, Me.FileUpload1.FileName)
            picpath = "~/" & Me.FileUpload1.FileName
            Me.FileUpload1.SaveAs(savefile)
        End If

        ob.cmd.Connection = ob.con
        ob.con.Open()
        ob.cmd.CommandText = "Select * from sdetails where email = '" & TextBox3.Text & "'"
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds, "img")
        If ob.ds.Tables("img").Rows.Count <> 0 Then
            MsgBox("email already registered", MsgBoxStyle.Information)
        Else
            ob.cmd.CommandText = "Insert into fdetails values('" & Me.TextBox1.Text & " ',' " & Me.TextBox2.Text & " ',' " & Me.TextBox3.Text & "','" & Me.TextBox4.Text & "','" & g & "','" & d & "','" & dep & "','" & Me.TextBox6.Text & "','" & picpath & "')"
            ob.cmd.ExecuteNonQuery()
            ob.con.Close()
            Me.Panel1.Visible = True
        End If
    End Sub
End Class