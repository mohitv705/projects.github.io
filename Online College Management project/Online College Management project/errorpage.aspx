<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="errorpage.aspx.vb" Inherits="Online_College_Management_project.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 498px;
            text-align: center;
        }
        .style2
        {
            position: absolute;
            top: 184px;
            left: 322px;
            z-index: 1;
            width: 768px;
            height: 37px;
            font-size: xx-large;
            font-style: italic;
            font-weight: bold;
        }
        .style3
        {
            position: absolute;
            top: 298px;
            left: 546px;
            z-index: 1;
            font-size: x-large;
        }
        .style4
        {
            position: absolute;
            top: 333px;
            left: 525px;
            z-index: 1;
            font-size: x-large;
        }
        .style5
        {
            position: absolute;
            top: 224px;
            left: 323px;
            z-index: 1;
            width: 146px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#99FF66" 
            CssClass="style3" PostBackUrl="~/login.aspx">Click here to go back and login again</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#99FF66" 
            CssClass="style4">Not registered yet? Click here to register</asp:LinkButton>
        <asp:Label ID="Label1" runat="server" BackColor="#66FF99" CssClass="style2" 
            ForeColor="Red" 
            Text="Oops!! The details you entered doesnt match our records!!" 
            Height="40px"></asp:Label>
    
        <asp:Label ID="Label2" runat="server" BackColor="#66FF99" CssClass="style5" 
            Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="Red" 
            Height="40px" Text="Check if you entered the details correctly and try again" 
            Width="768px"></asp:Label>
    
    </div>
    </form>
</body>
</html>
