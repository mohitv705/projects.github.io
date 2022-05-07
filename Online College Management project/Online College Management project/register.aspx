<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="register.aspx.vb" Inherits="Online_College_Management_project.register1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 495px;
        }
        .style3
        {
            position: absolute;
            top: 18px;
            left: 633px;
            z-index: 1;
            width: 170px;
            height: 168px;
        }
        .style4
        {
            position: absolute;
            top: 228px;
            left: 493px;
            z-index: 1;
            width: 104px;
        }
        .style5
        {
            position: absolute;
            top: 227px;
            left: 578px;
            z-index: 1;
            width: 331px;
            height: 37px;
        }
        .style6
        {
            position: absolute;
            top: 302px;
            left: 685px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:Image ID="Image1" runat="server" CssClass="style3" 
            DescriptionUrl="~/Register.png" ImageUrl="~/register1.jpg" />
        <asp:Label ID="Label1" runat="server" CssClass="style4" Text="Select:" 
            BorderColor="Black" Font-Bold="True" Font-Size="Large"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style5" 
            Font-Bold="True" Font-Italic="True">
            <asp:ListItem>Select your choice</asp:ListItem>
            <asp:ListItem>Student</asp:ListItem>
            <asp:ListItem>Faculty</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" BorderColor="Black" BorderStyle="Solid" 
            CssClass="style6" Text="Proceed" BackColor="#99CCFF" />
    
    </div>
    </form>
</body>
</html>
