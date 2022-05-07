<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="changepic.aspx.vb" Inherits="Online_College_Management_project.changepic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 480px;
        }
        .style5
        {
            width: 445px;
            height: 323px;
            position: absolute;
            top: 91px;
            left: 416px;
            z-index: 1;
        }
        .style6
        {
            position: absolute;
            top: 140px;
            left: 68px;
            z-index: 1;
            height: 19px;
        }
        .style7
        {
            position: absolute;
            top: 138px;
            left: 168px;
            z-index: 1;
        }
        .style8
        {
            position: absolute;
            top: 193px;
            left: 203px;
            z-index: 1;
            margin-bottom: 0px;
        }
    </style>
</head>
<body style="height: 473px">
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:Panel ID="Panel1" runat="server" CssClass="style5">
            <asp:Label ID="Label1" runat="server" CssClass="style6" Text="Upload image:"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Ridge" 
                CssClass="style7" />
            <asp:Button ID="Button1" runat="server" CssClass="style8" Text="Upload" />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
