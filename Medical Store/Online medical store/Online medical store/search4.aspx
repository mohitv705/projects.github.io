<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="search4.aspx.vb" Inherits="Online_medical_store.search4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 496px;
        }
        .style2
        {
            width: 995px;
            height: 360px;
            position: absolute;
            top: 128px;
            left: 13px;
            z-index: 1;
        }
        .style10
        {
            position: absolute;
            top: 10px;
            left: 5px;
            z-index: 1;
        }
        .style11
        {
            position: absolute;
            top: 8px;
            left: 8px;
            z-index: 1;
        }
        .style12
        {
            width: 276px;
            height: 399px;
            position: absolute;
            top: 98px;
            left: 1014px;
            z-index: 1;
        }
        .style13
        {
            position: absolute;
            top: 287px;
            left: 1px;
            z-index: 1;
            height: 19px;
        }
        .style14
        {
            position: absolute;
            top: 38px;
            left: 38px;
            z-index: 1;
        }
        .style15
        {
            position: absolute;
            top: 87px;
            left: 25px;
            z-index: 1;
        }
        .style16
        {
            position: absolute;
            top: 138px;
            left: 7px;
            z-index: 1;
            height: 19px;
        }
        .style17
        {
            position: absolute;
            top: 185px;
            left: 26px;
            z-index: 1;
        }
        .style18
        {
            position: absolute;
            top: 229px;
            left: 153px;
            z-index: 1;
            width: 99px;
        }
        .style19
        {
            position: absolute;
            top: 231px;
            left: 5px;
            z-index: 1;
            width: 145px;
        }
        .style20
        {
            position: absolute;
            top: 36px;
            left: 121px;
            z-index: 1;
        }
        .style21
        {
            position: absolute;
            top: 83px;
            left: 122px;
            z-index: 1;
        }
        .style22
        {
            position: absolute;
            top: 134px;
            left: 123px;
            z-index: 1;
        }
        .style23
        {
            position: absolute;
            top: 286px;
            left: 137px;
            z-index: 1;
            bottom: 91px;
        }
        .style24
        {
            position: absolute;
            top: 183px;
            left: 124px;
            z-index: 1;
        }
        .style26
        {
            position: absolute;
            top: 342px;
            left: 89px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:Panel ID="Panel2" runat="server" CssClass="style12">
            <asp:Label ID="Label1" runat="server" CssClass="style15" Text="NAME"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="style17" Text="PRICE"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="style13" Text="TOTAL COST:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="itemSelected" CssClass="style18">
                <asp:ListItem>Select Quantity</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="style20" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" CssClass="style16" Text="EXPIRY DATE"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="style14" Text="ID:"></asp:Label>
            <asp:Label ID="Label7" runat="server" CssClass="style19" Text="SELECT QUANTITY"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="style21" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" CssClass="style22" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox9" runat="server" CssClass="style23" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox10" runat="server" CssClass="style24" ReadOnly="True"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" CssClass="style26" 
                Text="ADD TO CART." />
        </asp:Panel>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" CssClass="style2" DataKeyNames="medid" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" SelectText="Add to cart" />
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
                <asp:BoundField DataField="category" HeaderText="CATEGORY" 
                    SortExpression="category" />
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
            <asp:TextBox ID="TextBox5" runat="server" CssClass="style11"></asp:TextBox>
        </asp:Panel>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:medicalstoreConnectionString %>" 
            SelectCommand="SELECT [medid], [medimg], [medname], [medprice], [medexpiry], [category] FROM [med] WHERE ([medname] LIKE '%' + @medname + '%')">
            <SelectParameters>
                <asp:SessionParameter Name="medname" SessionField="search" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Aqua" 
            CssClass="style10" NavigateUrl="~/homepage.aspx">HOME</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
