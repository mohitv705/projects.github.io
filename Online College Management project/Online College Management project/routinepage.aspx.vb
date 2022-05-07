Public Class routinepage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.Image1.Visible = True

        If Me.DropDownList1.SelectedItem.ToString = "BBA" Then

            If Me.DropDownList2.SelectedItem.ToString = "1" Then
                Me.Image1.ImageUrl = "BBA1.jpg"
            End If
            If Me.DropDownList2.SelectedItem.ToString = "2" Then
                Me.Image1.ImageUrl = "BBA2.jpg"
            End If
            If Me.DropDownList2.SelectedItem.ToString = "3" Then
                Me.Image1.ImageUrl = "BBA3.jpg"
            End If
            If Me.DropDownList2.SelectedItem.ToString = "4" Then
                Me.Image1.ImageUrl = "BBA4.jpg"
            End If
            If Me.DropDownList2.SelectedItem.ToString = "5" Then
                Me.Image1.ImageUrl = "BBA5.jpg"
            End If
            If Me.DropDownList2.SelectedItem.ToString = "6" Then
                Me.Image1.ImageUrl = "BBA6.jpg"
            End If
        End If

        If Me.DropDownList1.SelectedItem.ToString = "BCA" Then
            If Me.DropDownList2.SelectedItem.ToString = "1" Then
                Me.Image1.ImageUrl = "BCA1.jpg"
            End If
            If Me.DropDownList2.SelectedItem.ToString = "2" Then
                Me.Image1.ImageUrl = "BCA2.jpg"
            End If
            If Me.DropDownList2.SelectedItem.ToString = "3" Then
                Me.Image1.ImageUrl = "BCA3.jpg"
            End If
            If Me.DropDownList2.SelectedItem.ToString = "4" Then
                Me.Image1.ImageUrl = "BCA4.jpg"
            End If
            If Me.DropDownList2.SelectedItem.ToString = "5" Then
                Me.Image1.ImageUrl = "BCA5.jpg"
            End If
            If Me.DropDownList2.SelectedItem.ToString = "6" Then
                Me.Image1.ImageUrl = "BCA6.jpg"
            End If
        End If
    End Sub
End Class