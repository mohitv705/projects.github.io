<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="newadmin.aspx.vb" Inherits="Online_medical_store.newadmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 534px;
        }
        .style2
        {
            width: 611px;
            height: 294px;
            position: absolute;
            top: 157px;
            left: 366px;
            z-index: 1;
        }
        .style3
        {
            position: absolute;
            top: 121px;
            left: 176px;
            z-index: 1;
        }
        .style4
        {
            position: absolute;
            top: 120px;
            left: 284px;
            z-index: 1;
        }
        .style5
        {
            position: absolute;
            top: 187px;
            left: 167px;
            z-index: 1;
        }
        .style6
        {
            position: absolute;
            top: 187px;
            left: 285px;
            z-index: 1;
        }
        .style7
        {
            position: absolute;
            top: 240px;
            left: 256px;
            z-index: 1;
            width: 124px;
        }
        .style8
        {
            position: absolute;
            top: 102px;
            left: 571px;
            z-index: 1;
            right: 511px;
        }
        .style9
        {
            position: absolute;
            top: 25px;
            left: 152px;
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
    <div class="style1" 
        style="background-image: url('html-color-codes-color-tutorials-hero.jpg')">
    
        <asp:Panel ID="Panel1" runat="server" 
            BackImageUrl="~/Colorful-Geometric-Simple-Background-Image.jpg" 
            BorderColor="#FFFF99" BorderStyle="Groove" CssClass="style2">
            <asp:Label ID="Label1" runat="server" CssClass="style3" Text="Email"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="style5" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" BackColor="#6699FF" 
                BorderStyle="Solid" CssClass="style4"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" BackColor="#6699FF" 
                BorderStyle="Solid" CssClass="style6"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" BackColor="Aqua" BorderStyle="Solid" 
                CssClass="style7" Font-Bold="True" Font-Italic="True" ForeColor="#FF3300" 
                Text="ADD" />
            <asp:Label ID="Label4" runat="server" BackColor="Aqua" BorderStyle="Ridge" 
                CssClass="style9" Font-Bold="True" Font-Italic="True" Font-Size="Large" 
                Text="ENTER LOGIN DETAILS OF NEW ADMIN"></asp:Label>
        </asp:Panel>
        <asp:Label ID="Label3" runat="server" BackColor="Aqua" BorderStyle="Solid" 
            CssClass="style8" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" 
            Text=" ADD NEW ADMIN"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Aqua" 
            CssClass="style10" NavigateUrl="~/admindashboard.aspx">DASHBOARD</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
