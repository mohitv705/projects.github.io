<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="sdata.aspx.vb" Inherits="Online_College_Management_project.WebForm5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 652px;
        }
        .style2
        {
            position: absolute;
            top: 65px;
            left: 191px;
            z-index: 1;
            height: 18px;
        }
        .style3
        {
            position: absolute;
            top: 65px;
            left: 60px;
            z-index: 1;
        }
        .style4
        {
            width: 1091px;
            height: 135px;
            position: absolute;
            top: 164px;
            left: 122px;
            z-index: 1;
        }
        .style5
        {
            position: absolute;
            top: 61px;
            z-index: 1;
            left: 476px;
        }
        .style7
        {
            position: absolute;
            top: 34px;
            left: 1002px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style2">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="bca">Bachelor of Computer Aplications(BCA)</asp:ListItem>
            <asp:ListItem Value="bba">Bachelor in business Administration(BBA)</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label1" runat="server" CssClass="style3" 
            Text="Select Department"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" CssClass="style4" DataKeyNames="email" 
            DataSourceID="SqlDataSource1" ForeColor="Black" Visible="False">
            <AlternatingRowStyle BackColor="Silver" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="dob" HeaderText="Date of birth" 
                    SortExpression="dob" />
                <asp:BoundField DataField="roll" HeaderText="Roll" SortExpression="roll" />
                <asp:BoundField DataField="email" HeaderText="E-mail" ReadOnly="True" 
                    SortExpression="email" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:BoundField DataField="gender" HeaderText="Gender" 
                    SortExpression="gender" />
                <asp:BoundField DataField="department" HeaderText="Department" 
                    SortExpression="department" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:collegemanagementConnectionString %>" 
            DeleteCommand="DELETE FROM [sdetails] WHERE [email] = @email" 
            InsertCommand="INSERT INTO [sdetails] ([name], [dob], [roll], [email], [phone], [gender], [department]) VALUES (@name, @dob, @roll, @email, @phone, @gender, @department)" 
            SelectCommand="SELECT [name], [dob], [roll], [email], [phone], [gender], [department] FROM [sdetails] WHERE ([department] = @department2)" 
            UpdateCommand="UPDATE [sdetails] SET [name] = @name, [dob] = @dob, [roll] = @roll, [phone] = @phone, [gender] = @gender, [department] = @department WHERE [email] = @email">
            <DeleteParameters>
                <asp:Parameter Name="email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="roll" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phone" Type="Decimal" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="department" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="department2" SessionField="dept" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="roll" Type="Int32" />
                <asp:Parameter Name="phone" Type="Decimal" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="department" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style7">Back to dashboard</asp:LinkButton>
        <asp:Button ID="Button1" runat="server" BackColor="#66CCFF" 
            BorderStyle="Double" CssClass="style5" Font-Bold="True" Text="Show" />
    
    </div>
    </form>
</body>
</html>
