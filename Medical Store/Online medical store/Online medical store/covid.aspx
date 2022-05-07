<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="covid.aspx.vb" Inherits="Online_medical_store.covid1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 594px;
        }
        .style3
        {
            position: absolute;
            top: 21px;
            left: 1210px;
            z-index: 1;
        }
        .style2
        {
            width: 840px;
            height: 306px;
            position: absolute;
            top: 122px;
            left: 32px;
            z-index: 1;
        }
        .style4
        {
            width: 1296px;
            height: 36px;
            position: absolute;
            top: 70px;
            left: 10px;
        }
        .style5
        {
            width: 429px;
            height: 411px;
            position: absolute;
            top: 122px;
            left: 883px;
            z-index: 1;
        }
        .style6
        {
            position: absolute;
            top: 3px;
            left: 0px;
        }
        .style7
        {
            position: absolute;
            top: 5px;
            left: 595px;
            z-index: 1;
        }
        .style8
        {
            position: absolute;
            top: 4px;
            left: 453px;
            z-index: 1;
        }
        .style10
        {
            position: absolute;
            top: 3px;
            left: 158px;
            z-index: 1;
            right: 1010px;
        }
        .style11
        {
            position: absolute;
            left: 240px;
            z-index: 1;
            top: 150px;
        }
        .style12
        {
            position: absolute;
            top: 110px;
            left: 239px;
            z-index: 1;
            bottom: 286px;
        }
        .style13
        {
            position: absolute;
            top: 187px;
            left: 240px;
            z-index: 1;
        }
        .style15
        {
            position: absolute;
            top: 360px;
            left: 160px;
            z-index: 1;
        }
        .style16
        {
            position: absolute;
            top: 113px;
            left: 70px;
            z-index: 1;
            width: 34px;
        }
        .style17
        {
            position: absolute;
            top: 153px;
            left: 70px;
            z-index: 1;
        }
        .style18
        {
            position: absolute;
            top: 190px;
            left: 70px;
            z-index: 1;
        }
        .style19
        {
            position: absolute;
            top: 233px;
            left: 70px;
            z-index: 1;
        }
        .style20
        {
            position: absolute;
            top: 314px;
            left: 70px;
            z-index: 1;
        }
        .style21
        {
            position: absolute;
            top: 231px;
            left: 240px;
            z-index: 1;
        }
        .style22
        {
            position: absolute;
            top: 313px;
            left: 240px;
            z-index: 1;
        }
        .style23
        {
            position: absolute;
            top: 3px;
            left: 313px;
            z-index: 1;
        }
        .style25
        {
            position: absolute;
            top: 276px;
            left: 69px;
            z-index: 1;
        }
        .style26
        {
            position: absolute;
            top: 274px;
            left: 240px;
            z-index: 1;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:medicalstoreConnectionString %>" 
            
            SelectCommand="SELECT DISTINCT [medid], [medimg], [medname], [medprice], [medexpiry] FROM [med] WHERE ([category] = @category)">
            <SelectParameters>
                <asp:Parameter DefaultValue="COVID CARE" Name="category" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" CssClass="style2" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" DataKeyNames="medid" 
            AllowPaging="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
                <asp:BoundField DataField="medexpiry" HeaderText="EXPIRY DATE" 
                    SortExpression="medexpiry" />
                <asp:BoundField DataField="medimg" HeaderText="medimg" 
                    SortExpression="medimg" Visible="False" />

            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:Panel ID="Panel1" runat="server" CssClass="style4" Visible="False">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="style7" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="style8" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="style6"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="style23" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="style10" Visible="False"></asp:TextBox>
        </asp:Panel>
    
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style3" 
            NavigateUrl="~/categories.aspx">BACK</asp:HyperLink>
    
        <asp:Panel ID="Panel2" runat="server" CssClass="style5">
            <asp:Button ID="Button2" runat="server" CssClass="style15" Text="ADD TO CART" />
            <asp:Label ID="Label1" runat="server" CssClass="style20" Text="TOTAL COST"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="style16" Text="ID"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="style18" Text="EXPIRY"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="style17" Text="NAME"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="style25" Text="SELECT QUANTITY"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="style19" Text="PRICE"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="style12" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="style11" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" CssClass="style13" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox9" runat="server" CssClass="style22" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox10" runat="server" CssClass="style21" ReadOnly="True"></asp:TextBox>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="itemSelected" CssClass="style26">
                <asp:ListItem>Select Quantity</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>







        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
