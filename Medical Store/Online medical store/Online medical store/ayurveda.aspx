<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ayurveda.aspx.vb" Inherits="Online_medical_store.ayurveda" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
            width: 874px;
            height: 306px;
            position: absolute;
            top: 122px;
            left: 22px;
            z-index: 1;
        }
        .style4
        {
            width: 1296px;
            height: 19px;
            position: absolute;
            top: 70px;
            left: 10px;
        }
        .style5
        {
            width: 398px;
            height: 333px;
            position: absolute;
            top: 127px;
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
            top: 0px;
            left: 16px;
        }
        .style8
        {
            position: absolute;
            top: 10px;
            left: 16px;
            z-index: 1;
        }
        .style9
        {
            position: absolute;
            top: 20px;
            left: 16px;
            z-index: 1;
        }
        .style10
        {
            position: absolute;
            top: 30px;
            left: 16px;
            z-index: 1;
        }
        .style12
        {
            position: absolute;
            top: 250px;
            left: 246px;
            z-index: 1;
        }
        .style13
        {
            position: absolute;
            top: 170px;
            left: 246px;
            z-index: 1;
        }
        .style14
        {
            position: absolute;
            top: 22px;
            left: 37px;
            z-index: 1;
            width: 34px;
        }
        .style15
        {
            position: absolute;
            top: 120px;
            left: 246px;
            z-index: 1;
        }
        .style16
        {
            position: absolute;
            top: 70px;
            left: 246px;
            z-index: 1;
        }
        .style17
        {
            position: absolute;
            top: 20px;
            left: 246px;
            z-index: 1;
        }
        .style19
        {
            position: absolute;
            top: 70px;
            left: 38px;
            z-index: 1;
        }
        .style20
        {
            position: absolute;
            top: 120px;
            left: 39px;
            z-index: 1;
        }
        .style21
        {
            position: absolute;
            top: 170px;
            left: 41px;
            z-index: 1;
        }
        .style22
        {
            position: absolute;
            top: 210px;
            left: 43px;
            z-index: 1;
        }
        .style23
        {
            position: absolute;
            top: 252px;
            left: 46px;
            z-index: 1;
        }
        .style24
        {
            position: absolute;
            top: 287px;
            left: 138px;
            z-index: 1;
        }
        .style25
        {
            position: absolute;
            top: 210px;
            left: 251px;
            z-index: 1;
            height: 15px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:medicalstoreConnectionString %>" 
            
            
            SelectCommand="SELECT [medid], [medimg], [medname], [medprice], [medexpiry] FROM [med] WHERE ([category] = @category)">
            <SelectParameters>
                <asp:Parameter DefaultValue="AYURVEDA" Name="category" Type="String" />
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
            <asp:TextBox ID="TextBox1" runat="server" CssClass="style7"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="style8"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="style6"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="style9"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="style10"></asp:TextBox>
        </asp:Panel>
    
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style3" 
            NavigateUrl="~/categories.aspx">BACK</asp:HyperLink>
    
        <asp:Panel ID="Panel2" runat="server" CssClass="style5" Visible="False">
            <asp:Label ID="Label1" runat="server" CssClass="style20" Text="EXPIRY"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="style21" Text="PRICE"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="style22" Text="SELECT QUANTITY"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="style23" Text="TOTAL COST"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="style19" Text="NAME"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="style14" Text="ID"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="style17" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="style16" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" CssClass="style15" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox9" runat="server" CssClass="style12" ReadOnly="True"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" CssClass="style24" Text="ADD TO CART" />
            <asp:TextBox ID="TextBox10" runat="server" CssClass="style13" ReadOnly="True"></asp:TextBox>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="itemSelected" CssClass="style25">
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