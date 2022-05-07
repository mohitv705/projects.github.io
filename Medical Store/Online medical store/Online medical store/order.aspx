<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="order.aspx.vb" Inherits="Online_medical_store.order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 574px;
        }
        .style2
        {
            width: 1230px;
            height: 268px;
            position: absolute;
            top: 179px;
            left: 44px;
            z-index: 1;
        }
        .style3
        {
            position: absolute;
            top: 48px;
            left: 10px;
        }
        .style4
        {
            position: absolute;
            top: 48px;
            left: 645px;
            z-index: 1;
        }
        .style5
        {
            position: absolute;
            top: 91px;
            left: 530px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CssClass="style2" DataSourceID="SqlDataSource1" AllowPaging="True" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="medid" HeaderText="ID:" SortExpression="medid" />
                <asp:BoundField DataField="medname" HeaderText="Name:" 
                    SortExpression="medname" />
                <asp:BoundField DataField="medexpiry" HeaderText="Expiry" 
                    SortExpression="medexpiry" />
                <asp:BoundField DataField="medprice" HeaderText="Price:" 
                    SortExpression="medprice" />
                <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
                <asp:BoundField DataField="total" HeaderText="Total" 
                    SortExpression="total" />
                <asp:BoundField DataField="name" HeaderText="Delivered to(name):" 
                    SortExpression="name" />
                <asp:BoundField DataField="orderdate" HeaderText="Ordered on:" 
                    SortExpression="orderdate" />
                <asp:BoundField DataField="address" HeaderText="Deliver at:" 
                    SortExpression="address" />
                <asp:BoundField DataField="delivery" HeaderText="Expected date of delivery" 
                    SortExpression="delivery" />
                <asp:BoundField DataField="contact" HeaderText="Contact number" 
                    SortExpression="contact" />
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
    
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style3" 
            NavigateUrl="~/userdashboard.aspx" style="z-index: 1">Dashboard</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" CssClass="style4" Font-Bold="True" 
            Text="ORDERS"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="style5" 
            Text="YOU HAVE NOT PLACED ANY ORDER YET" Visible="False"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:medicalstoreConnectionString %>" 
            
            
            
            SelectCommand="SELECT [medid], [medimg], [medname], [medprice], [medexpiry], [email], [serial], [qty], [total], [name], [orderdate], [address], [delivery], [contact] FROM [orders] WHERE ([email] = @email)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="emailid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
