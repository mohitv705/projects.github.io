<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="userdashboard.aspx.vb" Inherits="Online_medical_store.userdashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 638px;
        }
        .style3
        {
            position: absolute;
            top: 55px;
            left: 1177px;
            z-index: 1;
            width: 73px;
        }
        .style7
        {
            width: 723px;
            height: 341px;
            position: absolute;
            top: 129px;
            left: 309px;
            z-index: 1;
        }
        .style8
        {
            position: absolute;
            top: 79px;
            left: 575px;
            z-index: 1;
            width: 211px;
        }
        .style9
        {
            position: absolute;
            top: 20px;
            left: 1148px;
            z-index: 1;
            width: 132px;
        }
        .style10
        {
            position: absolute;
            top: 26px;
            left: 20px;
            z-index: 1;
            width: 53px;
        }
        .style11
        {
            position: absolute;
            top: 143px;
            left: 259px;
            z-index: 1;
        }
        .style12
        {
            position: absolute;
            top: 246px;
            left: 258px;
            z-index: 1;
        }
        .style13
        {
            position: absolute;
            top: 38px;
            left: 258px;
            z-index: 1;
            width: 212px;
            height: 74px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1" 
        style="background-image: url('html-color-codes-color-tutorials-hero.jpg')">
    
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style3" 
            NavigateUrl="~/myprofile.aspx" BackColor="Aqua">My Profile</asp:HyperLink>
    
        <asp:Panel ID="Panel1" runat="server" 
            BackImageUrl="~/Colorful-Geometric-Simple-Background-Image.jpg" 
            CssClass="style7" BorderStyle="Solid">
            <asp:Button ID="Button5" runat="server" 
    CssClass="style11" Text="CATEGORIES" BackColor="Aqua" BorderStyle="Solid" 
                Font-Bold="True" Height="70px" Width="250px" />
            <asp:Button ID="Button6" runat="server" BackColor="Aqua" BorderStyle="Solid" 
                CssClass="style12" Font-Bold="True" Font-Italic="False" Height="70px" 
                Text="MY ORDERS" Width="250px" />
            <asp:Button ID="Button7" runat="server" BackColor="Aqua" BorderStyle="Solid" 
                CssClass="style13" Font-Bold="True" Height="70px" Text="VIEW CART" 
                Width="250px" />
        </asp:Panel>
        <asp:Label ID="Label1" runat="server" BackColor="Aqua" BorderColor="Black" 
            BorderStyle="Solid" CssClass="style8" Font-Bold="True" Font-Italic="False" 
            Font-Size="XX-Large" Text="DASHBOARD"></asp:Label>
        <asp:Button ID="Button4" runat="server" BackColor="Aqua" BorderStyle="Double" 
            CssClass="style9" Font-Bold="True" Text="LOGOUT" />
        <asp:HyperLink ID="HyperLink2" runat="server" BackColor="Aqua" 
            CssClass="style10" NavigateUrl="~/homepage.aspx">HOME</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
