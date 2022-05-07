<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="categories.aspx.vb" Inherits="Online_medical_store.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 562px;
        }
        .style3
        {
            width: 255px;
            height: 342px;
            position: absolute;
            top: 98px;
            left: 24px;
            z-index: 1;
        }
        .style4
        {
            width: 259px;
            height: 335px;
            position: absolute;
            top: 100px;
            left: 383px;
            z-index: 1;
        }
        .style5
        {
            width: 258px;
            height: 325px;
            position: absolute;
            top: 102px;
            left: 741px;
            z-index: 1;
        }
        .style6
        {
            width: 277px;
            height: 319px;
            position: absolute;
            top: 102px;
            left: 1075px;
            z-index: 1;
        }
        .style8
        {
            position: absolute;
            top: 9px;
            left: 10px;
            z-index: 1;
            width: 181px;
            height: 209px;
        }
        .style9
        {
            position: absolute;
            top: 1px;
            left: 4px;
            z-index: 1;
            width: 193px;
        }
        .style10
        {
            position: absolute;
            top: 0px;
            left: 4px;
            z-index: 1;
        }
        .style11
        {
            position: absolute;
            top: 240px;
            left: 56px;
            z-index: 1;
        }
        .style12
        {
            position: absolute;
            top: 243px;
            left: 52px;
            z-index: 1;
        }
        .style14
        {
            position: absolute;
            top: 240px;
            left: 42px;
            z-index: 1;
        }
        .style15
        {
            position: absolute;
            top: 239px;
            left: 14px;
            z-index: 1;
            width: 184px;
        }
        .style16
        {
            position: absolute;
            top: 0px;
            left: 9px;
            z-index: 1;
        }
        .style17
        {
            position: absolute;
            top: 20px;
            left: 16px;
            z-index: 1;
        }
        .style18
        {
            position: absolute;
            top: 42px;
            left: 437px;
            z-index: 1;
        }
        .style19
        {
            position: absolute;
            top: 20px;
            left: 70px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:Panel ID="Panel2" runat="server" CssClass="style6" Height="340px" 
            Width="200px">
            <asp:ImageButton ID="ImageButton4" runat="server" 
    CssClass="style10" Height="180px" 
                ImageUrl="~/ayurveda-black-glyph-icon-vector-31586487.jpg" Width="190px" />
            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="style11" 
                NavigateUrl="~/ayurveda.aspx">AYURVEDA</asp:HyperLink>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" CssClass="style5" Height="340px" 
            Width="200px">
            <asp:ImageButton ID="ImageButton3" runat="server" 
    CssClass="style16" Height="180px" ImageUrl="~/skin.jpg" Width="190px" />
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="style14" 
                NavigateUrl="~/skin.aspx">SKIN CARE</asp:HyperLink>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" CssClass="style4" Height="340px" 
            Width="200px">
            <asp:ImageButton ID="ImageButton2" runat="server" 
    CssClass="style9" Height="180px" ImageUrl="~/general.jpg" Width="190px" />
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style15" 
                NavigateUrl="~/general.aspx">GENERAL PURPOSE </asp:HyperLink>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server" CssClass="style3" Height="340px" 
            Width="200px">
            <asp:ImageButton ID="ImageButton1" runat="server" 
    CssClass="style8" Height="180px" ImageUrl="~/COVID-19-icon-300x300.jpg" 
                Width="190px" />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style12" 
                NavigateUrl="~/covid.aspx">COVID CARE</asp:HyperLink>
        </asp:Panel>
    
        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="style17" 
            NavigateUrl="~/userdashboard.aspx">Back</asp:HyperLink>
        <asp:HyperLink ID="HyperLink6" runat="server" CssClass="style19" 
            NavigateUrl="~/homepage.aspx">Home</asp:HyperLink>
        <asp:Label ID="Label1" runat="server" CssClass="style18" Font-Bold="True" 
            Font-Size="XX-Large" Text="Select a category to view products"></asp:Label>
    
    </div>
    </form>
</body>
</html>
