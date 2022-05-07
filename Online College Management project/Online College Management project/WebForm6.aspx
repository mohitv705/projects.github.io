<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm6.aspx.vb" Inherits="Online_College_Management_project.WebForm6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 631px;
        }
        .style2
        {
            position: absolute;
            top: 73px;
            left: 160px;
            z-index: 1;
        }
        .style3
        {
            position: absolute;
            top: 123px;
            left: 57px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    <asp:TextBox ID="txtDate" runat="server" Text="" TextMode="Date" />
<asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="ValidateDOB"
    ControlToValidate="txtDate" ErrorMessage="" ForeColor = "Red" />
<br />
<br />
<asp:Button ID="btnValidate" Text="Validate" runat="server"/>

 
        <asp:TextBox ID="TextBox1" runat="server" CssClass="style2"></asp:TextBox>
 
        <asp:Label ID="Label1" runat="server" CssClass="style3" Text="Label"></asp:Label>
 
    </div>
    </form>
</body>
</html>
