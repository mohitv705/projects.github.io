<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="routinepage.aspx.vb" Inherits="Online_College_Management_project.routinepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 543px;
        }
        .style2
        {
            position: absolute;
            top: 63px;
            left: 374px;
            z-index: 1;
            width: 680px;
            height: 428px;
        }
        .style3
        {
            width: 1315px;
            height: 550px;
            position: absolute;
            top: 15px;
            left: 10px;
            z-index: 1;
        }
        .style4
        {
            position: absolute;
            top: 129px;
            left: 203px;
            z-index: 1;
            width: 102px;
            height: 25px;
        }
        .style5
        {
            position: absolute;
            top: 178px;
            left: 202px;
            z-index: 1;
            width: 88px;
        }
        .style6
        {
            position: absolute;
            top: 130px;
            left: 98px;
            z-index: 1;
        }
        .style7
        {
            position: absolute;
            top: 178px;
            left: 97px;
            z-index: 1;
        }
        .style8
        {
            position: absolute;
            top: 239px;
            left: 172px;
            z-index: 1;
            width: 94px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:Image ID="Image1" runat="server" CssClass="style2" Visible="False" />
        <asp:Panel ID="Panel1" runat="server" CssClass="style3">
            <asp:DropDownList ID="DropDownList1" runat="server" 
    CssClass="style4">
                <asp:ListItem>BBA</asp:ListItem>
                <asp:ListItem>BCA</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="style5" 
                Height="25px" Width="102px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label1" runat="server" CssClass="style6" Text="Select stream"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="style7" Text="Select semester"></asp:Label>
            <asp:Button ID="Button1" runat="server" CssClass="style8" Text="SHOW" 
                style="height: 26px" />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
