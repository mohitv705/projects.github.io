<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="logins.aspx.vb" Inherits="Online_College_Management_project.logins" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 484px;
        }
        .style2
        {
            position: absolute;
            top: 189px;
            left: 635px;
            z-index: 1;
        }
        .style3
        {
            position: absolute;
            top: 270px;
            left: 670px;
            z-index: 1;
        }
        .style4
        {
            position: absolute;
            top: 224px;
            left: 635px;
            z-index: 1;
        }
        .style5
        {
            position: absolute;
            top: 228px;
            left: 513px;
            z-index: 1;
            width: 72px;
            height: 13px;
        }
        .style6
        {
            position: absolute;
            top: 192px;
            left: 514px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:TextBox ID="TextBox1" runat="server" CssClass="style2"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="style4"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" CssClass="style3" Text="Button" />
    
        <asp:Label ID="Label1" runat="server" CssClass="style5" Text="Password:"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="style6" Text="Email"></asp:Label>
    
    </div>
    </form>
</body>
</html>
