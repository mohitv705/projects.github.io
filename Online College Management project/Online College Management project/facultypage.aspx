<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="facultypage.aspx.vb" Inherits="Online_College_Management_project.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 492px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" class="style1">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="email" DataSourceID="SqlDataSource1" 
            BorderColor="Black" CellSpacing="15" Height="16px" Width="1094px" 
            BackColor="#99FFCC" BorderStyle="Solid" 
            Caption="FACULTIES OF THE CALCUTTA ANGLO GUJARATI COLLEGE" CssClass="style1">
            <AlternatingRowStyle BackColor="#99FF33" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" 
                    SortExpression="email" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
                <asp:BoundField DataField="designation" HeaderText="designation" 
                    SortExpression="designation" />
                <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
            </Columns>
            <EditRowStyle BackColor="#99FF33" BorderColor="Black" BorderWidth="2px" 
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <FooterStyle BorderColor="Black" BorderStyle="Dashed" />
            <HeaderStyle BorderColor="Black" />
            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:collegemanagementConnectionString %>" 
            SelectCommand="SELECT [name], [email], [phone], [dob], [gender], [designation], [dept] FROM [fdetails]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
