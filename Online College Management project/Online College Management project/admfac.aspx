<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admfac.aspx.vb" Inherits="Online_College_Management_project.admfac" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 466px;
        }
        .style2
        {
            width: 889px;
            height: 313px;
            position: absolute;
            top: 123px;
            left: 263px;
            z-index: 1;
        }
        .style3
        {
            position: absolute;
            top: 449px;
            left: 267px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#FFFF66" BorderColor="Black" BorderStyle="Double" CssClass="style2" 
            DataKeyNames="email" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="#CCFF99" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
            </Columns>
            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:collegemanagementConnectionString %>" 
            DeleteCommand="DELETE FROM [fdetails] WHERE [email] = @email" 
            InsertCommand="INSERT INTO [fdetails] ([name], [email], [phone], [dob], [gender], [designation], [dept], [pass]) VALUES (@name, @email, @phone, @dob, @gender, @designation, @dept, @pass)" 
            SelectCommand="SELECT [name], [email], [phone], [dob], [gender], [designation], [dept], [pass] FROM [fdetails]" 
            UpdateCommand="UPDATE [fdetails] SET [name] = @name, [phone] = @phone, [dob] = @dob, [gender] = @gender, [designation] = @designation, [dept] = @dept, [pass] = @pass WHERE [email] = @email">
            <DeleteParameters>
                <asp:Parameter Name="email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phone" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="designation" Type="String" />
                <asp:Parameter Name="dept" Type="String" />
                <asp:Parameter Name="pass" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="phone" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="designation" Type="String" />
                <asp:Parameter Name="dept" Type="String" />
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style3">ADD A NEW FACULTY</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
