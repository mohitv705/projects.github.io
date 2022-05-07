<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="errorpage.aspx.vb" Inherits="Online_medical_store.errorpage1" %>

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
        .style5
        {
            position: absolute;
            top: 224px;
            left: 323px;
            z-index: 1;
            width: 146px;
        }
        .style6
        {
            position: absolute;
            top: 321px;
            z-index: 1;
            left: 638px;
            width: 178px;
        }
        .style7
        {
            position: absolute;
            top: 278px;
            left: 599px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 545px">
    <form id="form1" runat="server">
    <div>
    
    <div class="style1">
    
        <asp:Label ID="Label1" runat="server" BackColor="#66FF99" CssClass="style2" 
            ForeColor="Red" 
            Text="Oops!! The details you entered doesnt match our records!!" 
            Height="40px"></asp:Label>
    
        <asp:Label ID="Label2" runat="server" BackColor="#66FF99" CssClass="style5" 
            Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="Red" 
            Height="40px" Text="Check if you entered the details correctly and try again" 
            Width="768px"></asp:Label>
    
        <asp:Button ID="Button1" runat="server" BackColor="#9999FF" CssClass="style6" 
            Font-Bold="True" Font-Italic="True" Text="LOGIN" />
        <asp:Label ID="Label3" runat="server" CssClass="style7" Font-Size="X-Large" 
            Text="Try again by clicking below"></asp:Label>
    
    </div>
    
    </div>
    </form>
</body>
</html>
