<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="general.aspx.vb" Inherits="Online_medical_store.COVID" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 581px;
        }
        .style2
        {
            width: 874px;
            height: 306px;
            position: absolute;
            top: 79px;
            left: 25px;
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
            width: 405px;
            height: 437px;
            position: absolute;
            top: 99px;
            left: 949px;
            z-index: 1;
        }
        .style6
        {
            position: absolute;
            top: 156px;
            left: 168px;
            z-index: 1;
            height: 22px;
        }
        .style8
        {
            position: absolute;
            top: 53px;
            left: 167px;
            z-index: 1;
            bottom: 362px;
        }
        .style9
        {
            position: absolute;
            top: 103px;
            left: 167px;
            z-index: 1;
        }
        .style10
        {
            position: absolute;
            top: 11px;
            left: 166px;
            z-index: 1;
            height: 18px;
        }
        .style13
        {
            position: absolute;
            top: 12px;
            left: 8px;
            z-index: 1;
        }
        .style14
        {
            position: absolute;
            top: 57px;
            left: 7px;
            z-index: 1;
        }
        .style15
        {
            position: absolute;
            top: 107px;
            left: 8px;
            z-index: 1;
        }
        .style16
        {
            position: absolute;
            top: 160px;
            left: 8px;
            z-index: 1;
        }
        .style17
        {
            position: absolute;
            top: 207px;
            left: 6px;
            z-index: 1;
        }
        .style18
        {
            position: absolute;
            top: 305px;
            left: 127px;
            z-index: 1;
            height: 26px;
        }
        .style19
        {
            position: absolute;
            top: 353px;
            left: 128px;
            z-index: 1;
        }
        .style20
        {
            position: absolute;
            top: 252px;
            left: 166px;
            z-index: 1;
            height: 18px;
        }
        .style22
        {
            position: absolute;
            top: 205px;
            left: 167px;
            z-index: 1;
            height: 26px;
        }
        .style23
        {
            position: absolute;
            top: 253px;
            left: 8px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" CssClass="style2" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" DataKeyNames="medid" 
            AllowPaging="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" SelectText="Add to cart" />
                <asp:BoundField DataField="medid" HeaderText="ID:" InsertVisible="False" 
                    ReadOnly="True" SortExpression="medid" />
                <asp:ImageField DataImageUrlField="medimg" HeaderText="IMAGE:">
                    <ControlStyle Height="150px" Width="150px" />
                </asp:ImageField>
                <asp:BoundField DataField="medname" HeaderText="NAME:" 
                    SortExpression="medname" />
                <asp:BoundField DataField="medprice" HeaderText="PRICE:" 
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
            <asp:TextBox ID="TextBox2" runat="server" CssClass="style8" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="style6" ReadOnly="True" 
                TextMode="Number"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" CssClass="style18" Text="ADD TO CART" />
            <asp:Label ID="Label3" runat="server" CssClass="style15" Text="EXPIRY"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="style9" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="style10" ReadOnly="True"></asp:TextBox>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="itemSelected" CssClass="style22">
                <asp:ListItem>Select Quantity</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label1" runat="server" CssClass="style13" Text="ID"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="style14" Text="NAME"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="style16" Text="PRICE"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="style17" Text="SELECT QUANTITY"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="style19" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="style20" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" CssClass="style23" Text="TOTAL"></asp:Label>
        </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:medicalstoreConnectionString %>" 
            
            SelectCommand="SELECT [medid], [medimg], [medname], [medprice], [medexpiry] FROM [med] WHERE ([category] = @category)">
            <SelectParameters>
                <asp:Parameter DefaultValue="GENERAL PURPOSE" Name="category" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style3" 
            NavigateUrl="~/categories.aspx">BACK</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
