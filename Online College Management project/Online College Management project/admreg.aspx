<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admreg.aspx.vb" Inherits="Online_College_Management_project.admreg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 720px;
        }
        .style2
        {
            width: 364px;
            height: 257px;
            position: absolute;
            top: 229px;
            left: 557px;
            z-index: 1;
        }
        .style3
        {
            position: absolute;
            top: 70px;
            left: 55px;
            z-index: 1;
            width: 45px;
        }
        .style4
        {
            position: absolute;
            top: 145px;
            left: 52px;
            z-index: 1;
        }
        .style5
        {
            position: absolute;
            top: 143px;
            left: 138px;
            z-index: 1;
        }
        .style6
        {
            position: absolute;
            top: 68px;
            left: 137px;
            z-index: 1;
        }
        .style7
        {
            position: absolute;
            top: 206px;
            left: 161px;
            z-index: 1;
            width: 70px;
        }
        .style8
        {
            position: absolute;
            top: 52px;
            left: 540px;
            z-index: 1;
            width: 354px;
            height: 29px;
        }
        .style9
        {
            width: 366px;
            height: 172px;
            position: absolute;
            top: 114px;
            left: 559px;
            z-index: 1;
        }
        .style10
        {
            position: absolute;
            top: 23px;
            left: 39px;
            z-index: 1;
            width: 285px;
            height: 29px;
        }
        .style11
        {
            position: absolute;
            top: 93px;
            left: 130px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" class="style1" 
        style="background-image: url('html-color-codes-color-tutorials-hero.jpg')">
    
        <asp:Panel ID="Panel1" runat="server" 
            BackImageUrl="~/Colorful-Geometric-Simple-Background-Image.jpg" 
            BorderColor="Black" BorderStyle="Ridge" CssClass="style2">
            <asp:Label ID="Label1" runat="server" CssClass="style3" Text="Email" 
                BackColor="#0099FF" Font-Bold="True" ForeColor="Black"></asp:Label>
            <asp:Label ID="Label2" runat="server" BackColor="#0099FF" CssClass="style4" 
                Font-Bold="True" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" BackColor="Yellow" 
                BorderColor="Black" CssClass="style6"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" BackColor="Yellow" 
                BorderColor="Black" CssClass="style5"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" BackColor="#66CCFF" BorderColor="Black" 
                CssClass="style7" Font-Bold="True" Text="ADD" />
        </asp:Panel>
        <asp:Label ID="Label3" runat="server" BackColor="Yellow" CssClass="style8" 
            Font-Bold="True" Font-Italic="False" Font-Names="Segoe UI Historic" 
            Font-Strikeout="False" Font-Underline="True" 
            Text="                                          ADD NEW ADMIN"></asp:Label>
        <asp:Panel ID="Panel2" runat="server" CssClass="style9" Visible="False">
            <asp:Label ID="Label4" runat="server" CssClass="style10" 
                Text="ADMIN ADDED SUCCESFULLY" BackColor="#FFFF66" Font-Bold="True"></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#FFCC00" 
                CssClass="style11" Font-Bold="True" PostBackUrl="~/admreg.aspx">ADD ANOTHER</asp:LinkButton>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
