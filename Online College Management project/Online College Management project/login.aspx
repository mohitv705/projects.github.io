<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="Online_College_Management_project.loginaspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 604px;
        }
        .style2
        {
            position: absolute;
            top: 30px;
            left: 622px;
            z-index: 1;
            height: 117px;
            width: 285px;
        }
        .style3
        {
            position: absolute;
            top: 200px;
            left: 724px;
            z-index: 1;
            height: 24px;
            width: 218px;
        }
        .style4
        {
            position: absolute;
            top: 196px;
            left: 619px;
            z-index: 1;
        }
        .style5
        {
            position: absolute;
            top: 266px;
            left: 654px;
            z-index: 1;
            width: 205px;
            height: 42px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1" align="center" 
        
        
        
        style="border-style: inset; font-size: x-large; background-repeat: no-repeat; background-image: none;">
    
        <asp:Image ID="Image2" runat="server" CssClass="style2" 
            ImageUrl="~/loginicon.jpg" />
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="style3">
            <asp:ListItem>STUDENT</asp:ListItem>
            <asp:ListItem>FACULTY</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label3" runat="server" CssClass="style4" Text="Select:"></asp:Label>
        <asp:ImageButton ID="ImageButton2" runat="server" CssClass="style5" 
            ImageUrl="~/PROCEED-BUTTON-PNG.jpg" />
    
    </div>
    </form>
</body>
</html>
