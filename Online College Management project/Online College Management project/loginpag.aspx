<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="loginpag.aspx.vb" Inherits="Online_College_Management_project.loginpag" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 654px;
        }
        .style3
        {
            position: absolute;
            top: 265px;
            left: 454px;
            z-index: 1;
            height: 27px;
            width: 210px;
        }
        .style4
        {
            position: absolute;
            top: 267px;
            left: 689px;
            z-index: 1;
            width: 315px;
            height: 27px;
        }
        .style6
        {
            position: absolute;
            top: 18px;
            left: 559px;
            z-index: 1;
            width: 397px;
            height: 174px;
        }
        .style7
        {
            position: absolute;
            top: 353px;
            left: 656px;
            z-index: 1;
            width: 221px;
            height: 59px;
        }
        .style8
        {
            position: absolute;
            top: 432px;
            left: 598px;
            z-index: 1;
            width: 228px;
            height: 28px;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:Label ID="Label2" runat="server" CssClass="style3" Text="Select your profile:" 
            Font-Size="X-Large"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style4" 
            BackColor="#FFFF99" Font-Bold="True" Font-Italic="True" ForeColor="Black" 
            AutoPostBack="True" Font-Size="X-Large">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Student</asp:ListItem>
            <asp:ListItem>Faculty</asp:ListItem>
        </asp:DropDownList>
        <asp:Image ID="Image1" runat="server" BackColor="Black" CssClass="style6" 
            ImageUrl="~/loginicon.jpg" />
        <asp:ImageButton ID="ImageButton1" runat="server" CssClass="style7" 
            ImageUrl="~/PROCEED-BUTTON-PNG.jpg" />
    
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style8" 
            PostBackUrl="~/register.aspx" Font-Bold="True" Font-Size="X-Large">Click here to register</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
