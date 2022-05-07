<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="slib.aspx.vb" Inherits="Online_College_Management_project.slib" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 536px;
        }
        .style2
        {
            width: 915px;
            height: 235px;
            position: absolute;
            top: 187px;
            left: 265px;
            z-index: 1;
        }
        .style3
        {
            position: absolute;
            top: 452px;
            left: 635px;
            z-index: 1;
            right: 451px;
        }
        .style4
        {
            position: absolute;
            top: 72px;
            left: 487px;
            z-index: 1;
            height: 40px;
            width: 532px;
        }
        .style5
        {
            position: absolute;
            top: 137px;
            left: 363px;
            z-index: 1;
            width: 752px;
            height: 29px;
        }
        .style7
        {
            position: absolute;
            top: 24px;
            left: 1160px;
            z-index: 1;
            width: 136px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1" align="center" style="background-image: url('library.jpg')">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CaptionAlign="Top" CssClass="style2" 
            DataSourceID="SqlDataSource1" BackColor="Yellow" BorderColor="Black" 
            BorderStyle="Double">
            <AlternatingRowStyle BackColor="#CCFF33" />
            <Columns>
                <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" 
                    SortExpression="Book_ID" />
                <asp:BoundField DataField="Book_name" HeaderText="Book_name" 
                    SortExpression="Book_name" />
                <asp:BoundField DataField="Book_author" HeaderText="Book_author" 
                    SortExpression="Book_author" />
            </Columns>
            <HeaderStyle BackColor="#CCFF33" />
            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Yellow" 
            CssClass="style7" Font-Bold="True">Back to dashboard</asp:LinkButton>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:collegemanagementConnectionString %>" 
            
            SelectCommand="SELECT [Book_ID], [Book_name], [Book_author] FROM [borrowbook] WHERE ([email] = @email)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="emailid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" BackColor="#99FF33" CssClass="style4" 
            Font-Bold="True" Font-Names="Arial Narrow" Font-Overline="True" 
            Font-Size="XX-Large" Font-Underline="True" ForeColor="Black" 
            Text="COLLEGE LIBRARY"></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="style3" 
            Text="Check out available books" BackColor="#66FF66" BorderStyle="Solid" 
            Font-Bold="True" />
    
        <asp:Label ID="Label2" runat="server" BackColor="Yellow" CssClass="style5" 
            Font-Bold="True" Font-Size="X-Large" Text="NO BOOKS CURRENTLY ALLOTED TO YOU" 
            Visible="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
