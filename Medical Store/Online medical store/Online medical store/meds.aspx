<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="meds.aspx.vb" Inherits="Online_medical_store.meds" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 654px;
        }
        .style2
        {
            width: 1213px;
            height: 133px;
            position: absolute;
            top: 131px;
            left: 42px;
            z-index: 1;
        }
        .style10
        {
            position: absolute;
            top: 33px;
            left: 22px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" CssClass="style2" 
            DataKeyNames="medid" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="medid" HeaderText="MED ID" InsertVisible="False" 
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
                <asp:BoundField DataField="medquantity" HeaderText="QUANTITY" 
                    SortExpression="medquantity" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:medicalstoreConnectionString %>" 
            DeleteCommand="DELETE FROM [med] WHERE [medid] = @medid" 
            InsertCommand="INSERT INTO [med] ([medimg], [medname], [medprice], [medexpiry], [medquantity], [category]) VALUES (@medimg, @medname, @medprice, @medexpiry, @medquantity, @category)" 
            SelectCommand="SELECT * FROM [med]" 
            UpdateCommand="UPDATE [med] SET [medimg] = @medimg, [medname] = @medname, [medprice] = @medprice, [medexpiry] = @medexpiry, [medquantity] = @medquantity, [category] = @category WHERE [medid] = @medid">
            <DeleteParameters>
                <asp:Parameter Name="medid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="medimg" Type="String" />
                <asp:Parameter Name="medname" Type="String" />
                <asp:Parameter Name="medprice" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="medexpiry" />
                <asp:Parameter Name="medquantity" Type="String" />
                <asp:Parameter Name="category" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="medimg" Type="String" />
                <asp:Parameter Name="medname" Type="String" />
                <asp:Parameter Name="medprice" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="medexpiry" />
                <asp:Parameter Name="medquantity" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="medid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Aqua" 
            CssClass="style10" NavigateUrl="~/admindashboard.aspx">DASHBOARD</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
