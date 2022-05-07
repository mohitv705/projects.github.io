<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="homepage.aspx.vb" Inherits="Online_medical_store.homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><head id="Head1" runat="server">
<title></title>
<style type="text/css">
   
.style2
{
height: 1100px;
width: 1642px;
}
Online Medical Store
46
.style14
{
width: 115px;
height: 109px;
position: absolute;
top: 114px;
left: 16px;
z-index: 1;
}
.style15
{
position: absolute;
top: 38px;
left: 502px;
z-index: 1;
width: 363px;
height: 38px;
        margin-top: 0px;
    }
    .style16
    {
        width: 1210px;
        height: 49px;
        position: absolute;
        top: 532px;
        left: 369px;
        z-index: 1;
    }
    .style17
    {
        position: absolute;
        top: 12px;
        left: 90px;
        z-index: 1;
        width: 86px;
        height: 31px;
    }
    .style18
    {
        position: absolute;
        top: 11px;
        left: 202px;
        z-index: 1;
    }
    .style19
    {
        position: absolute;
        top: 11px;
        left: 307px;
        z-index: 1;
    }
    .style20
    {
        position: absolute;
        top: 11px;
        left: 420px;
        z-index: 1;
    }
    .style22
    {
        position: absolute;
        top: 36px;
        left: 3px;
        z-index: 1;
        height: 23px;
    }
    .style23
    {
        position: absolute;
        top: 36px;
        left: 181px;
        z-index: 1;
        width: 23px;
        height: 23px;
    }
    .style24
    {
        position: absolute;
        top: 80px;
        left: 10px;
        z-index: 1;
    }
    .style25
    {
        position: absolute;
        top: 11px;
        left: 525px;
        z-index: 1;
    }
    </style>
<link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<form id="form1" runat="server">
<body background="cool-background.jpg">
<div class="slidershow middle">
<div class="slides">
<input type="radio" name="r" id="Radio1" checked="checked"/>
<input type="radio" name="r" id="Radio2" />
<input type="radio" name="r" id="Radio3" />
<input type="radio" name="r" id="Radio4" />
<div class="slide s1">
<img src="med1.jpg" alt="" align="left" />
</div>
<div class="slide">
<img src="med2.jpg" alt="" />
</div>
<div class="slide">
<img src="med3.jpg" alt="" />
</div>
<div class="slide">
<img src="med4.jpg" alt="" />
</div>
</div>
<div class="navigation">
<label for="Radio1" class="bar"></label>
<label for="Radio2" class="bar"></label>
<label for="Radio3" class="bar"></label>
<label for="Radio4" class="bar"></label>
</div>
</div>
<div>
</div>
<div class="style2"
style="background-image: url('cool-background.jpg'); ">
<asp:Label ID="Label1" runat="server" CssClass="style15" Font-Bold="True"
Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False"
Font-Underline="False" Text="HealthFirst Medical Shop" 
        BorderColor="Black" BorderStyle="Outset" Font-Italic="False" 
        ForeColor="Black"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" CssClass="style16">
        <asp:Button ID="Button1" runat="server" CssClass="style17" Text="Register" 
            BackColor="#FF0066" BorderColor="White" Font-Bold="True" Font-Italic="True" 
            Font-Underline="True" ForeColor="White" Height="40px" Width="90px" />
        <asp:Button ID="Button2" runat="server" CssClass="style18" Text="Login" BackColor="#FF0066" BorderColor="White" Font-Bold="True" Font-Italic="True" 
            Font-Underline="True" ForeColor="White"  Height="40px" Width="90px"  />
        <asp:Button ID="Button3" runat="server" CssClass="style19" Text="Categories" 
            BackColor="#FF0066" BorderColor="White" Font-Bold="True" Font-Italic="True" 
            Font-Underline="True" ForeColor="White" Height="40px" Width="90px"  />
        <asp:Button ID="Button4" runat="server" CssClass="style20" Text="About Us" 
            BackColor="#FF0066" BorderColor="White" Font-Bold="True" Font-Italic="True" 
            Font-Underline="True" ForeColor="White" Height="40px" Width="90px"  />

        <asp:Button ID="Button5" runat="server" BackColor="#FF0066" BorderColor="White" 
            CssClass="style25" Font-Bold="True" Font-Italic="True" Font-Underline="True" 
            ForeColor="White" Height="40px" Text="Dashboard" Width="90px" />

    </asp:Panel>
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" placeholder="Search a product"
            BorderStyle="Solid" CssClass="style22" ></asp:TextBox>
    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style24" 
        NavigateUrl="~/adminlogin.aspx">Admin</asp:HyperLink>
    <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="Black" 
        BorderStyle="Solid" CssClass="style23" 
        ImageUrl="~/magnify-icon-vector-eps10-260nw-1220721013.jpg" />
</div>
</div>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <body style="height: 501px" background="cool-background.jpg">
    </html> 
</form>
</body>
</html>