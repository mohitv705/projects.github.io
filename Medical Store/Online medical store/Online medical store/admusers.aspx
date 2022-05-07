<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admusers.aspx.vb" Inherits="Online_medical_store.admusers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 524px;
        }
        .style2
        {
            width: 1089px;
            height: 440px;
            position: absolute;
            top: 74px;
            left: 133px;
            z-index: 1;
        }
        .style10
        {
            position: absolute;
            top: 33px;
            left: 22px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" CssClass="style2" DataKeyNames="email" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="E-mail" ReadOnly="True" 
                    SortExpression="email" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:BoundField DataField="address" HeaderText="Address" 
                    SortExpression="address" />
                <asp:BoundField DataField="dob" HeaderText="Date of birth" 
                    SortExpression="dob" />
                <asp:BoundField DataField="gender" HeaderText="Gender" 
                    SortExpression="gender" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:medicalstoreConnectionString %>" 
            DeleteCommand="DELETE FROM [userdetails] WHERE [email] = @email" 
            InsertCommand="INSERT INTO [userdetails] ([name], [email], [phone], [address], [dob], [gender]) VALUES (@name, @email, @phone, @address, @dob, @gender)" 
            SelectCommand="SELECT [name], [email], [phone], [address], [dob], [gender] FROM [userdetails]" 
            UpdateCommand="UPDATE [userdetails] SET [name] = @name, [phone] = @phone, [address] = @address, [dob] = @dob, [gender] = @gender WHERE [email] = @email">
            <DeleteParameters>
                <asp:Parameter Name="email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phone" Type="Decimal" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="gender" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="phone" Type="Decimal" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Aqua" 
            CssClass="style10" NavigateUrl="~/admindashboard.aspx">DASHBOARD</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
