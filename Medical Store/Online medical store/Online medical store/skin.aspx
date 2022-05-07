<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="skin.aspx.vb" Inherits="Online_medical_store.skin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 578px;
        }
        .style2
        {
            width: 849px;
            height: 365px;
            position: absolute;
            top: 140px;
            left: 20px;
            z-index: 1;
        }
        .style3
        {
            position: absolute;
            top: 21px;
            left: 1210px;
            z-index: 1;
        }
        .style4
        {
            width: 1296px;
            height: 19px;
            position: absolute;
            top: 15px;
            left: 10px;
        }
        .style5
        {
            width: 382px;
            height: 392px;
            position: absolute;
            top: 146px;
            left: 905px;
            z-index: 1;
        }
        .style6
        {
            position: absolute;
            top: 0px;
            left: 0px;
        }
        .style7
        {
            position: absolute;
            top: 51px;
            left: 113px;
            z-index: 1;
            right: 1055px;
        }
        .style8
        {
            position: absolute;
            top: 51px;
            left: 123px;
            z-index: 1;
        }
        .style9
        {
            position: absolute;
            top: 51px;
            left: 133px;
            z-index: 1;
        }
        .style10
        {
            position: absolute;
            top: 51px;
            left: 143px;
            z-index: 1;
            right: 1025px;
        }
        .style12
        {
            position: absolute;
            top: 70px;
            left: 210px;
            z-index: 1;
        }
        .style13
        {
            position: absolute;
            top: 170px;
            left: 210px;
            z-index: 1;
        }
        .style14
        {
            position: absolute;
            top: 210px;
            left: 210px;
            z-index: 1;
        }
        .style15
        {
            position: absolute;
            top: 121px;
            left: 210px;
            z-index: 1;
        }
        .style16
        {
            position: absolute;
            top: 300px;
            left: 210px;
            z-index: 1;
        }
        .style18
        {
            position: absolute;
            top: 350px;
            left: 130px;
            z-index: 1;
        }
        .style19
        {
            position: absolute;
            top: 72px;
            left: 51px;
            z-index: 1;
        }
        .style20
        {
            position: absolute;
            top: 123px;
            left: 50px;
            z-index: 1;
        }
        .style21
        {
            position: absolute;
            top: 171px;
            left: 50px;
            z-index: 1;
        }
        .style22
        {
            position: absolute;
            top: 212px;
            left: 51px;
            z-index: 1;
        }
        .style23
        {
            position: absolute;
            top: 252px;
            left: 49px;
            z-index: 1;
        }
        .style24
        {
            position: absolute;
            top: 300px;
            left: 50px;
            z-index: 1;
        }
        .style25
        {
            position: absolute;
            top: 250px;
            left: 213px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:Panel ID="Panel2" runat="server" CssClass="style5" Visible="False">
            <asp:Button ID="Button2" runat="server" CssClass="style18" Text="ADD TO CART" />
            <asp:Label ID="Label1" runat="server" CssClass="style19" Text="ID"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="style21" Text="EXPIRY"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="style20" Text="NAME"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="style22" Text="PRICE"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="style24" Text="TOTAL COST"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="style23" Text="SELECT QUANTITY"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="style12" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="style15" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" CssClass="style13" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox9" runat="server" CssClass="style16" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox10" runat="server" CssClass="style14" ReadOnly="True"></asp:TextBox>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="itemSelected" CssClass="style25" style="height: 22px">
                <asp:ListItem>Select Quantity</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>
        </asp:Panel>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" CssClass="style2" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            DataKeyNames="medid">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="medid" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="medid" />
                <asp:ImageField DataImageUrlField="medimg" HeaderText="IMAGE">
                    <ControlStyle Height="150px" Width="150px" />
                </asp:ImageField>
                <asp:BoundField DataField="medname" HeaderText="NAME" 
                    SortExpression="medname" />
                <asp:BoundField DataField="medprice" HeaderText="PRICE" 
                    SortExpression="medprice" />
                <asp:BoundField DataField="medexpiry" HeaderText="EXPIRY" 
                    SortExpression="medexpiry" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:Panel ID="Panel1" runat="server" CssClass="style4" Visible="False">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="style7"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="style8" Height="22px" 
                Width="128px"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="style6"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="style9"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="style10"></asp:TextBox>
        </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:medicalstoreConnectionString %>" 
            
            SelectCommand="SELECT [medimg], [medname], [medprice], [medexpiry], [medid] FROM [med] WHERE ([category] = @category)">
            <SelectParameters>
                <asp:Parameter DefaultValue="SKIN CARE" Name="category" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style3" 
            NavigateUrl="~/categories.aspx">BACK</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
