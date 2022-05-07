<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="home.aspx.vb" Inherits="Online_College_Management_project.home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<link href="StyleSheet2.css" rel="stylesheet" type="text/css" />
</head>
<body>
    



    <div class="slidershow middle">
        
        <div class="slides">
  
        <input type="radio" name="r" id="Radio1"  checked="checked"/>
        <input type="radio" name="r" id="Radio2" />
        <input type="radio" name="r" id="Radio3" />
        <input type="radio" name="r" id="Radio4" />
        <div class="slide s1">
         <img src="CAGC1.JPG" alt="" />
        </div>
         <div class="slide">
         <img src="CAGC2.JPG" alt="" />
        </div>
         <div class="slide">
         <img src="CAGC3.JPG" alt="" />
        </div>
         <div class="slide">
         <img src="cagc4.jpg" alt="" />
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












<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            height: 530px;
            width: 1296px;
        }
        .style7
        {
            width: 1129px;
            height: 72px;
            position: absolute;
            top: 531px;
            left: 143px;
            z-index: 1;
        }
        .style8
        {
            position: absolute;
            top: 24px;
            left: 22px;
            z-index: 1;
        }
        .style9
        {
            position: absolute;
            top: 24px;
            left: 241px;
            z-index: 1;
        }
        .style10
        {
            position: absolute;
            top: 24px;
            left: 468px;
            z-index: 1;
            height: 25px;
        }
        .style11
        {
            position: absolute;
            top: 26px;
            left: 702px;
            z-index: 1;
        }
        .style12
        {
            position: absolute;
            top: 24px;
            left: 927px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 501px">
    <form id="form1" runat="server">
    <div class="style2"
        style="background-position: 0px; background-image: none; background-repeat: no-repeat;">
   
    </div>
    <asp:Panel ID="Panel1" runat="server" BorderColor="Red" CssClass="style7">
        <asp:Button ID="Button6" runat="server" CssClass="style8" Text="Home" 
            BackColor="#FFCC99" BorderColor="Red" Width="150px" />
        <asp:Button ID="Button7" runat="server" BackColor="#FFCC99" BorderColor="Red" 
            CssClass="style9" Text="Faculty" Width="150px" />
        <asp:Button ID="Button8" runat="server" BackColor="#FFCC99" BorderColor="Red" 
            CssClass="style10" Text="Login/Sign up" Width="150px" />
        <asp:Button ID="Button9" runat="server" BackColor="#FFCC99" BorderColor="Red" 
            CssClass="style11" Text="Contact us" Width="150px" />
        <asp:Button ID="Button10" runat="server" BackColor="#FFCC99" BorderColor="Red" 
            CssClass="style12" Text="About us" Width="150px" />
    </asp:Panel>
    </form>
</body>
</html>
