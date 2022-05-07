<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="Online_medical_store.login1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}


input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
    .style1
    {
        width: 737px;
        margin-left: 263px;
    }
    .style10
    {
        position: absolute;
        top: 7px;
        left: 14px;
        z-index: 1;
        height: 20px;
        width: 50px;
    }
    .style11
    {
        position: absolute;
        top: 344px;
        left: 87px;
        z-index: 1;
        right: 1075px;
    }
    .style12
    {
        position: absolute;
        top: 421px;
        left: 112px;
        z-index: 1;
    }
    .style13
    {
        position: absolute;
        top: 345px;
        left: 263px;
        z-index: 1;
    }
    .style14
    {
        position: absolute;
        top: 605px;
        left: 624px;
        z-index: 1;
        width: 97px;
        height: 28px;
    }
</style>
</head>
<body style="height: 592px">
<form method="post" runat="server">
<h2 class="style1">
    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style14" 
        NavigateUrl="~/register.aspx">Register</asp:HyperLink>
    <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Aqua" 
        CssClass="style10" Font-Size="Medium" NavigateUrl="~/homepage.aspx">HOME</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
    USER LOGIN</h2>
  <div class="imgcontainer">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <img src="avatar.jpg" alt="Avatar" class="avatar" height="245" width="339">
  </div>

   <div class="container">
  <label for="email"><b>E-mail<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
           runat="server" ControlToValidate="TextBox1" CssClass="style11" 
           ErrorMessage="This field is required"></asp:RequiredFieldValidator>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
           ControlToValidate="TextBox1" CssClass="style13" ErrorMessage="Invalid email" 
           ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
       </b></label>

      &nbsp;<asp:TextBox ID="TextBox1" runat="server" BackColor="#FFDA99" 
           BorderColor="Black"></asp:TextBox>

       <label for="pass"><b>Password<asp:RequiredFieldValidator 
           ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" 
           CssClass="style12" ErrorMessage="This field is required"></asp:RequiredFieldValidator>
       </b></label>
    &nbsp;<asp:TextBox ID="TextBox2" runat="server" BackColor="#FFDA99" BorderColor="Black" 
           TextMode="Password"></asp:TextBox>
        <br />
       <br />
       <br />
      <asp:Button ID="Button1" runat="server" Text="Login" BackColor="Lime" 
          BorderColor="#333333" Height="55px" Width="100%" Font-Bold="True" 
           Font-Italic="True" ForeColor="Black" ToolTip="click here to login" />
      <label>&nbsp;<br />
       </label></div>

</form>

</body>
</html>