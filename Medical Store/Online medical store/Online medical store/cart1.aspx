<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="cart1.aspx.vb" Inherits="Online_medical_store.cart1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 589px;
        }
        .style3
        {
            position: absolute;
            top: 26px;
            left: 1115px;
            z-index: 1;
            width: 184px;
            height: 31px;
        }
        .style4
        {
            width: 1060px;
            height: 336px;
            position: absolute;
            top: 171px;
            left: 167px;
            z-index: 1;
        }
        .style5
        {
            position: absolute;
            top: 69px;
            left: 1227px;
            z-index: 1;
        }
        .style6
        {
            position: absolute;
            top: 111px;
            left: 624px;
            z-index: 1;
        }
        .style7
        {
            position: absolute;
            top: 73px;
            left: 678px;
            z-index: 1;
        }
        .style8
        {
            position: absolute;
            top: 518px;
            left: 572px;
            z-index: 1;
            width: 103px;
            height: 19px;
        }
        .style9
        {
            position: absolute;
            top: 517px;
            left: 713px;
            z-index: 1;
            width: 36px;
            height: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:Label ID="Label7" runat="server" CssClass="style8" Text="CART TOTAL"></asp:Label>
        <asp:Label ID="Label8" runat="server" CssClass="style9" Text="Label"></asp:Label>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CssClass="style4" DataKeyNames="serial" 
            DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="medid" HeaderText="ID" SortExpression="medid" />
                <asp:BoundField DataField="medname" HeaderText="NAME" 
                    SortExpression="medname" />
                <asp:BoundField DataField="medprice" HeaderText="PRICE" 
                    SortExpression="medprice" />
                <asp:BoundField DataField="qty" HeaderText="QUANTITY" 
                    SortExpression="qty" />
                <asp:BoundField DataField="total" HeaderText="TOTAL" 
                    SortExpression="total" />
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
    
        <asp:Button ID="Button1" runat="server" BorderStyle="Solid" CssClass="style3" 
            Text="PROCEED TO CHECKOUT" />
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:medicalstoreConnectionString %>" 
            DeleteCommand="DELETE FROM [cart] WHERE [serial] = @serial" 
            InsertCommand="INSERT INTO [cart] ([email], [medid], [medimg], [medname], [medprice], [medexpiry]) VALUES (@email, @medid, @medimg, @medname, @medprice, @medexpiry)" 
            SelectCommand="SELECT * FROM [cart] WHERE ([email] = @email)" 
            
            UpdateCommand="UPDATE [cart] SET [email] = @email, [medid] = @medid, [medimg] = @medimg, [medname] = @medname, [medprice] = @medprice, [medexpiry] = @medexpiry WHERE [serial] = @serial">
            <DeleteParameters>
                <asp:Parameter Name="serial" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="medid" Type="Int32" />
                <asp:Parameter Name="medimg" Type="String" />
                <asp:Parameter Name="medname" Type="String" />
                <asp:Parameter Name="medprice" Type="Int32" />
                <asp:Parameter Name="medexpiry" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="emailid" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="medid" Type="Int32" />
                <asp:Parameter Name="medimg" Type="String" />
                <asp:Parameter Name="medname" Type="String" />
                <asp:Parameter Name="medprice" Type="Int32" />
                <asp:Parameter Name="medexpiry" Type="String" />
                <asp:Parameter Name="serial" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <asp:Label ID="Label3" runat="server" CssClass="style6" Font-Size="Medium" 
            Text="NOTHING IN YOUR CART" Visible="False"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="style7" Font-Size="X-Large" 
            Text="CART"></asp:Label>
    
    </div>
    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style5" 
        NavigateUrl="~/userdashboard.aspx">Dashboard</asp:HyperLink>
    </form>
</body>
</html>
