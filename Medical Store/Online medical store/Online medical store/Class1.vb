Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Public Class Class1
    Public con As New SqlConnection(ConfigurationManager.ConnectionStrings("dc1").ToString)
    Public cmd As New SqlCommand
    Public adp As New SqlDataAdapter
    Public ds As New DataSet

End Class
