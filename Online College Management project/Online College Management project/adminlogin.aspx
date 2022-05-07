<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="adminlogin.aspx.vb" Inherits="Online_College_Management_project.adminlogin" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 617px;
        }
        .style7
        {
            width: 571px;
            height: 230px;
            position: absolute;
            top: 166px;
            left: 489px;
            z-index: 1;
        }
        .style8
        {
            position: absolute;
            top: 89px;
            left: 236px;
            z-index: 1;
        }
        .style9
        {
            position: absolute;
            top: 136px;
            left: 238px;
            z-index: 1;
        }
        .style10
        {
            position: absolute;
            top: 92px;
            left: 176px;
            z-index: 1;
        }
        .style11
        {
            position: absolute;
            top: 136px;
            left: 165px;
            z-index: 1;
        }
        .style12
        {
            position: absolute;
            top: 169px;
            left: 261px;
            z-index: 1;
            }
        .style13
        {
            position: absolute;
            top: 93px;
            left: 672px;
            z-index: 1;
            width: 171px;
        }
        .style14
        {
            position: absolute;
            top: 164px;
            left: 14px;
            z-index: 1;
        }
        .style15
        {
            position: absolute;
            top: 134px;
            left: 14px;
            z-index: 1;
        }
        .style16
        {
            position: absolute;
            top: 90px;
            left: 422px;
            z-index: 1;
            width: 144px;
            height: 32px;
        }
        .style17
        {
            position: absolute;
            top: 135px;
            left: 421px;
            z-index: 1;
            width: 144px;
            height: 29px;
        }
        .style18
        {
            position: absolute;
            top: 92px;
            left: 40px;
            z-index: 1;
            width: 124px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1" align="center" style="background-color: #FFFF66">
    
        <asp:Panel ID="Panel1" runat="server" BackColor="#0099FF" CssClass="style7" 
            BorderColor="Black" BorderStyle="Solid">
            <asp:TextBox ID="TextBox1" runat="server" 
    CssClass="style8" BackColor="Yellow" BorderColor="Black"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" BackColor="Yellow" 
                BorderColor="Black" CssClass="style9" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" CssClass="style10" Text="Email"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="style11" Text="Password"></asp:Label>
            <asp:Button ID="Button1" runat="server" CssClass="style12" Text="Login" 
                BackColor="#99FF33" BorderColor="Black" ForeColor="Black" 
                style="height: 26px" />
            <asp:Button ID="Button2" runat="server" CssClass="style14" Height="25px" 
                Text="Hide Password" Visible="False" Width="140px" BackColor="Yellow" 
                BorderColor="Black" />
            <asp:Button ID="Button3" runat="server" CssClass="style15" Height="25px" 
                Text="Show password" Width="140px" BackColor="Yellow" 
                BorderColor="Black" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                BackColor="Yellow" CssClass="style17" ErrorMessage="This field is required" 
                ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                BackColor="Yellow" ControlToValidate="TextBox1" CssClass="style18" 
                ErrorMessage="enter a valid email" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                BackColor="Yellow" ControlToValidate="TextBox1" CssClass="style16" 
                ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </asp:Panel>
        <asp:Label ID="Label3" runat="server" CssClass="style13" 
            Font-Names="Bahnschrift SemiCondensed" Font-Overline="True" 
            Font-Size="XX-Large" Font-Underline="True" Text="ADMIN LOGIN"></asp:Label>
    
        &nbsp;&nbsp;&nbsp;
    
        </div>
    </form>
</body>
</html>
