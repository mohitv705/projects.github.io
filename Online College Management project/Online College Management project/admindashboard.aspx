<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admindashboard.aspx.vb" Inherits="Online_College_Management_project.admindashboard" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 789px;
        }
        .style3
        {
            width: 569px;
            height: 279px;
            position: absolute;
            top: 200px;
            left: 416px;
            z-index: 1;
        }
        .style4
        {
            position: absolute;
            top: 25px;
            left: 182px;
            z-index: 1;
            width: 216px;
            height: 36px;
        }
        .style5
        {
            position: absolute;
            top: 133px;
            left: 183px;
            z-index: 1;
            width: 219px;
            height: 34px;
        }
        .style6
        {
            position: absolute;
            top: 80px;
            left: 137px;
            z-index: 1;
            width: 302px;
            height: 35px;
        }
        .style7
        {
            position: absolute;
            top: 83px;
            left: 556px;
            z-index: 1;
            width: 307px;
            height: 73px;
        }
        .style8
        {
            position: absolute;
            top: -28px;
            left: -2px;
            z-index: 1;
            width: 97px;
            right: 474px;
        }
        .style9
        {
            position: absolute;
            top: 175px;
            left: 515px;
            z-index: 1;
            width: 270px;
        }
        .style10
        {
            position: absolute;
            top: 185px;
            left: 168px;
            z-index: 1;
            height: 33px;
        }
        .style11
        {
            position: absolute;
            top: 22px;
            left: 1213px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1" align="center" 
        
        style="background-color: #99FFCC; background-image: url('html-color-codes-color-tutorials-hero.jpg'); background-repeat: no-repeat;">
    
        <asp:Panel ID="Panel1" runat="server" BackColor="Black" BorderColor="Black" 
            CssClass="style3" 
            BackImageUrl="~/Colorful-Geometric-Simple-Background-Image.jpg" 
            BorderStyle="Solid">
            <asp:Button ID="Button1" runat="server" CssClass="style4" 
                Text="STUDENTS&gt;&gt;" BorderColor="Black" BackColor="#66CCFF" 
                Font-Bold="True" />
            <asp:Button ID="Button4" runat="server" BackColor="#66CCFF" BorderColor="Black" 
                CssClass="style10" Font-Bold="True" Text="Add new admin" 
                Width="250px" />
            <asp:Button ID="Button2" runat="server" BorderColor="Black" CssClass="style5" 
                Text="LIBRARY&gt;&gt;" BackColor="#66CCFF" Font-Bold="True" />
            <asp:Button ID="Button3" runat="server" BorderColor="Black" CssClass="style6" 
                Text="FACULTY&gt;&gt;" BackColor="#66CCFF" Font-Bold="True" />
            <asp:Label ID="Label2" runat="server" BackColor="Aqua" CssClass="style8" 
                Text="Welcome"></asp:Label>
        </asp:Panel>
    
        <asp:Label ID="Label1" runat="server" BackColor="Aqua" BorderColor="Black" 
            BorderStyle="Ridge" CssClass="style7" Font-Bold="True" Font-Italic="False" 
            Font-Overline="False" Font-Size="XX-Large" Text="ADMIN DASHBOARD"></asp:Label>
        <asp:Label ID="Label3" runat="server" BackColor="Aqua" CssClass="style9" 
            Text=","></asp:Label>
&nbsp;&nbsp;&nbsp;
    
        <asp:Button ID="Button5" runat="server" BackColor="#66CCFF" BorderColor="Black" 
            CssClass="style11" Font-Bold="True" Text="LOGOUT" />
    
    </div>
    </form>
</body>
</html>
