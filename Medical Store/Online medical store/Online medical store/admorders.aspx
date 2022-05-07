<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admorders.aspx.vb" Inherits="Online_medical_store.admorders" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 598px;
        }
        .style2
        {
            width: 1140px;
            height: 319px;
            position: absolute;
            top: 155px;
            left: 96px;
            z-index: 1;
        }
        .style3
        {
            position: absolute;
            top: 92px;
            left: 638px;
            z-index: 1;
            width: 99px;
            height: 25px;
        }
        .style10
        {
            position: absolute;
            top: 33px;
            left: 22px;
            z-index: 1;
        }
        .style11
        {
            position: absolute;
            top: 133px;
            left: 597px;
            z-index: 1;
            width: 191px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" CssClass="style2" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="email" HeaderText="USER EMAIL" 
                    SortExpression="email" />
                <asp:BoundField DataField="medid" HeaderText="MED ID" SortExpression="medid" />
                <asp:BoundField DataField="medname" HeaderText="NAME" 
                    SortExpression="medname" />
                <asp:BoundField DataField="medprice" HeaderText="PRICE" 
                    SortExpression="medprice" />
                <asp:BoundField DataField="medexpiry" HeaderText="EXPIRY DATE" 
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:medicalstoreConnectionString %>" 
            SelectCommand="SELECT [email], [medid], [medname], [medprice], [medexpiry] FROM [orders]">
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Aqua" 
            CssClass="style10" NavigateUrl="~/admindashboard.aspx">DASHBOARD</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" CssClass="style3" Font-Bold="True" 
            Font-Italic="True" Font-Size="X-Large" Text="ORDERS"></asp:Label>
    
        <asp:Label ID="Label2" runat="server" CssClass="style11" Font-Size="X-Large" 
            Text="NO ORDERS YET" Visible="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
