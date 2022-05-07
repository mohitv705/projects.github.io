<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editpro.aspx.vb" Inherits="Online_medical_store.editpro" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 827px;
        }
        .style2
        {
            position: absolute;
            top: 32px;
            left: 652px;
            z-index: 1;
        }
        .style3
        {
            width: 1031px;
            height: 128px;
            position: absolute;
            left: 79px;
            z-index: 1;
            top: 530px;
        }
        .style4
        {
            position: absolute;
            top: 15px;
            left: 1288px;
            z-index: 1;
        }
        .style5
        {
            width: 579px;
            height: 313px;
            position: absolute;
            top: 201px;
            left: 415px;
            z-index: 1;
        }
        .style6
        {
            position: absolute;
            top: 25px;
            left: 12px;
            z-index: 1;
            height: 19px;
        }
        .style7
        {
            position: absolute;
            top: 63px;
            left: 13px;
            z-index: 1;
        }
        .style8
        {
            position: absolute;
            top: 108px;
            left: 13px;
            z-index: 1;
        }
        .style9
        {
            position: absolute;
            top: 150px;
            left: 12px;
            z-index: 1;
        }
        .style10
        {
            position: absolute;
            top: 195px;
            left: 3px;
            z-index: 1;
        }
        .style11
        {
            position: absolute;
            top: 236px;
            left: 14px;
            z-index: 1;
        }
        .style12
        {
            position: absolute;
            top: 21px;
            left: 100px;
            z-index: 1;
            width: 419px;
        }
        .style13
        {
            position: absolute;
            top: 58px;
            left: 100px;
            z-index: 1;
            width: 420px;
        }
        .style14
        {
            position: absolute;
            top: 147px;
            left: 99px;
            z-index: 1;
            width: 427px;
        }
        .style15
        {
            position: absolute;
            top: 106px;
            left: 100px;
            z-index: 1;
            width: 422px;
        }
        .style17
        {
            position: absolute;
            top: 194px;
            left: 97px;
            z-index: 1;
            width: 425px;
        }
        .style18
        {
            position: absolute;
            top: 234px;
            left: 100px;
            z-index: 1;
        }
        .style19
        {
            position: absolute;
            top: 270px;
            left: 198px;
            z-index: 1;
            height: 26px;
        }
        .style21
        {
            position: absolute;
            top: -125px;
            left: 196px;
            z-index: 1;
            width: 189px;
            height: 129px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" 
    style="background-image: none; background-repeat: no-repeat;">
    <div class="style1" 
        style="background-image: none; background-repeat: no-repeat; background-attachment: scroll; background-color: #00FFFF;">
    
        <asp:Label ID="Label3" runat="server" CssClass="style2" 
            Text="My Profile" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            AutoGenerateEditButton="True" BackColor="#DEBA84" BorderColor="#DEBA84" 
            BorderStyle="None" BorderWidth="1px" CaptionAlign="Top" CellPadding="3" 
            CellSpacing="2" CssClass="style3" DataKeyNames="email" 
            DataSourceID="SqlDataSource1" Visible="False">
            <Columns>
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
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" BorderColor="Black" BorderStyle="Solid" 
                ForeColor="#8C4510" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:medicalstoreConnectionString %>" 
            DeleteCommand="DELETE FROM [userdetails] WHERE [email] = @email" 
            InsertCommand="INSERT INTO [userdetails] ([name], [email], [phone], [address], [dob], [gender]) VALUES (@name, @email, @phone, @address, @dob, @gender)" 
            SelectCommand="SELECT [name], [email], [phone], [address], [dob], [gender] FROM [userdetails] WHERE ([email] = @email)" 
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
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="emailid" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="phone" Type="Decimal" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Panel ID="Panel1" runat="server" CssClass="style5" 
            BackImageUrl="~/istockphoto-1001713236-170667a.jpg">
            <asp:Label ID="Label4" runat="server" CssClass="style6" Text="Name"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="style7" Text="E-mail"></asp:Label>
            <asp:Image ID="Image1" runat="server" CssClass="style21" 
                ImageUrl="~/576092-200.png" />
            <asp:Label ID="Label6" runat="server" CssClass="style8" Text="Phone "></asp:Label>
            <asp:Label ID="Label7" runat="server" CssClass="style9" Text="Address"></asp:Label>
            <asp:Label ID="Label8" runat="server" CssClass="style10" Text="Date of birth"></asp:Label>
            <asp:Label ID="Label9" runat="server" CssClass="style11" Text="Gender"></asp:Label>
            <asp:TextBox ID="name" runat="server" CssClass="style12" 
                Height="22px" Width="420px"></asp:TextBox>
            <asp:TextBox ID="email" runat="server" CssClass="style13" ReadOnly="True" 
                Height="22px" Width="420px"></asp:TextBox>
            <asp:TextBox ID="address" runat="server" CssClass="style14" 
                Height="22px" Width="420px"></asp:TextBox>
            <asp:TextBox ID="phone" runat="server" CssClass="style15" 
                Height="22px" Width="420px"></asp:TextBox>
            <asp:TextBox ID="dob" runat="server" CssClass="style17" 
                Height="22px" Width="420px"></asp:TextBox>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style18" 
                Height="22px" Width="420px">
                <asp:ListItem>Select your gender</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" CssClass="style19" 
                Text="SAVE CHANGES" />
        </asp:Panel>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style4" 
            NavigateUrl="~/userdashboard.aspx">Back</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
