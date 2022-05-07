<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="addproduct.aspx.vb" Inherits="Online_medical_store.addproduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 549px;
        }
        .style3
        {
            position: absolute;
            top: 155px;
            left: 218px;
            z-index: 1;
        }
        .style4
        {
            position: absolute;
            top: 212px;
            left: 213px;
            z-index: 1;
        }
        .style5
        {
            position: absolute;
            top: 276px;
            left: 218px;
            z-index: 1;
            width: 205px;
            height: 20px;
        }
        .style6
        {
            position: absolute;
            top: 332px;
            left: 217px;
            z-index: 1;
            height: 25px;
        }
        .style7
        {
            position: absolute;
            top: 392px;
            left: 218px;
            z-index: 1;
        }
        .style9
        {
            position: absolute;
            top: 159px;
            left: 90px;
            z-index: 1;
        }
        .style10
        {
            position: absolute;
            top: 214px;
            left: 92px;
            z-index: 1;
        }
        .style11
        {
            position: absolute;
            top: 278px;
            left: 93px;
            z-index: 1;
        }
        .style12
        {
            position: absolute;
            top: 334px;
            left: 92px;
            z-index: 1;
        }
        .style13
        {
            position: absolute;
            top: 394px;
            left: 90px;
            z-index: 1;
        }
        .style14
        {
            position: absolute;
            top: 508px;
            left: 601px;
            z-index: 1;
            height: 26px;
            width: 41px;
        }
        .style15
        {
            position: absolute;
            top: 90px;
            left: 857px;
            z-index: 1;
            width: 436px;
            height: 425px;
        }
        .style16
        {
            position: absolute;
            top: 454px;
            left: 89px;
            z-index: 1;
            width: 67px;
            height: 21px;
        }
        .style17
        {
            position: absolute;
            top: 450px;
            left: 218px;
            z-index: 1;
        }
        .style18
        {
            position: absolute;
            top: 94px;
            left: 153px;
            z-index: 1;
            width: 223px;
        }
        .style19
        {
            position: absolute;
            top: 19px;
            left: 14px;
            z-index: 1;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" CssClass="style3" 
            Height="25px" Width="200px"></asp:TextBox>
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="style4" BorderStyle="Solid" 
            Height="25px" Width="200px" />
        <asp:TextBox ID="TextBox3" runat="server" CssClass="style5" BorderStyle="Solid" 
            Height="25px" Width="200px" TextMode="Number" ></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="style6" BorderStyle="Solid" 
            Width="200px" TextMode="Date" ></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="style7" BorderStyle="Solid" 
            Height="25px" Width="200px" TextMode="Number" ></asp:TextBox>
        <asp:Label ID="Label8" runat="server" CssClass="style18" Font-Bold="True" 
            Font-Italic="True" Font-Size="X-Large" Text="Enter product detaills"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="style9" Text="Name"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="style10" Text="Image"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="style11" Text="Price"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="style12" Text="Expiry"></asp:Label>
        <asp:Label ID="Label6" runat="server" CssClass="style13" Text="Quantity"></asp:Label>
    
        <asp:Button ID="Button1" runat="server" BorderStyle="Inset" CssClass="style14" 
            Text="ADD" />
        <asp:Image ID="Image1" runat="server" CssClass="style15" 
            ImageUrl="~/Untitled.png" />
        <asp:Label ID="Label7" runat="server" CssClass="style16" Text="Category"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style17">
            <asp:ListItem>COVID CARE</asp:ListItem>
            <asp:ListItem>GENERAL PURPOSE</asp:ListItem>
            <asp:ListItem>SKIN CARE</asp:ListItem>
            <asp:ListItem>AYURVEDA</asp:ListItem>
        </asp:DropDownList>
    
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Aqua" 
            CssClass="style19" NavigateUrl="~/admindashboard.aspx">DASHBOARD</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
