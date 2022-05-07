<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="confirmation.aspx.vb" Inherits="Online_medical_store.confirmation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 570px;
        }
        .style5
        {
            width: 456px;
            height: 411px;
            position: absolute;
            top: 53px;
            left: 478px;
            z-index: 1;
        }
        .style15
        {
            position: absolute;
            top: 320px;
            left: 170px;
            z-index: 1;
        }
        .style16
        {
            position: absolute;
            top: 153px;
            left: 67px;
            z-index: 1;
            width: 155px;
        }
        .style18
        {
            position: absolute;
            top: 192px;
            left: 67px;
            z-index: 1;
        }
        .style17
        {
            position: absolute;
            top: 113px;
            left: 69px;
            z-index: 1;
        }
        .style19
        {
            position: absolute;
            top: 235px;
            left: 69px;
            z-index: 1;
        }
        .style12
        {
            position: absolute;
            top: 110px;
            left: 239px;
            z-index: 1;
            bottom: 286px;
        }
        .style11
        {
            position: absolute;
            left: 239px;
            z-index: 1;
            top: 149px;
        }
        .style13
        {
            position: absolute;
            top: 187px;
            left: 240px;
            z-index: 1;
        }
        .style21
        {
            position: absolute;
            top: 231px;
            left: 240px;
            z-index: 1;
        }
        .style22
        {
            position: absolute;
            top: 354px;
            left: 66px;
            z-index: 1;
            width: 415px;
        }
        .style23
        {
            position: absolute;
            top: 280px;
            left: 70px;
            z-index: 1;
        }
        .style24
        {
            position: absolute;
            top: 277px;
            left: 244px;
            z-index: 1;
        }
        .style25
        {
            position: absolute;
            top: 51px;
            left: 129px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:Panel ID="Panel1" runat="server" CssClass="style5">
            <asp:Button ID="Button2" runat="server" CssClass="style15" Text="PLACE ORDER" />
            <asp:Label ID="Label2" runat="server" CssClass="style16" Text="CONTACT NUMBER"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="style18" 
                Text="DELIVERY ADDRESS"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="style17" Text="NAME"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="style19" Text="CART TOTAL"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="style12" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="style11" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="Label7" runat="server" CssClass="style23" Text="DELIVERY DATE"></asp:Label>
            <asp:TextBox ID="TextBox11" runat="server" CssClass="style24" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" CssClass="style13" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="TextBox10" runat="server" CssClass="style21" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" CssClass="style22" 
                Text="Note : We accept payment by Cash on delivery only ."></asp:Label>







            &nbsp;<asp:Label ID="Label8" runat="server" CssClass="style25" 
                Text="CONFIRM YOUR DETAILS"></asp:Label>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
