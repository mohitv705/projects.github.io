<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="register.aspx.vb" Inherits="Online_medical_store.WebForm2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<style>
body 
{
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] 
{
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus 
{
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr 
{
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn 
{
  background-color: red;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover 
{
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin 
{
  background-color: #f1f1f1;
  text-align: center;
}
    .style1
    {
        position: absolute;
        top: 1015px;
        left: 23px;
        z-index: 1;
        width: 86%;
        height: 53px;
    }
    .style2
    {
        position: absolute;
        top: 485px;
        left: 28px;
        z-index: 1;
    }
    .style3
    {
        position: absolute;
        top: 255px;
        left: 27px;
        z-index: 1;
    }
    .style4
    {
        position: absolute;
        top: 373px;
        left: 30px;
        z-index: 1;
        height: 20px;
        width: 196px;
    }
    .style7
    {
        position: absolute;
        top: 586px;
        left: 29px;
        z-index: 1;
    }
    .style8
    {
        position: absolute;
        top: 714px;
        left: 26px;
        z-index: 1;
    }
    .style9
    {
        position: absolute;
        top: 829px;
        left: 26px;
        z-index: 1;
    }
    .style10
    {
        position: absolute;
        top: 948px;
        left: 26px;
        z-index: 1;
    }
    .style11
    {
        position: absolute;
        top: 1005px;
        left: 27px;
        z-index: 1;
    }
    .style12
    {
        position: absolute;
        top: 1204px;
        left: 733px;
        z-index: 1;
    }
    .style13
    {
        position: absolute;
        top: 19px;
        left: 1240px;
        z-index: 1;
    }
    .style14
    {
        position: absolute;
        top: 373px;
        left: 227px;
        z-index: 1;
    }
    .style15
    {
        position: absolute;
        top: 946px;
        left: 224px;
        z-index: 1;
    }
    .style16
    {
        position: absolute;
        top: 584px;
        left: 229px;
        z-index: 1;
    }
    .style17
    {
        position: absolute;
        top: 253px;
        left: 194px;
        z-index: 1;
    }
    .style18
    {
        position: absolute;
        top: 485px;
        left: 224px;
        z-index: 1;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    <h1>Register<asp:HyperLink ID="HyperLink2" runat="server" CssClass="style13" 
            Font-Size="Medium" NavigateUrl="~/homepage.aspx">HOME</asp:HyperLink>
        </h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="name"><b>Name</b></label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="TextBox1" CssClass="style17" ErrorMessage="Invalid name" 
            ValidationExpression="^[A-Z,a-z, ]*$"></asp:RegularExpressionValidator>
    <asp:TextBox ID="TextBox1" placeholder="Enter your name" runat="server" 
            BorderColor="#3366FF" BorderStyle="Solid" CausesValidation="True"  ></asp:TextBox>

        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" CssClass="style4" 
            ErrorMessage="E-MAIL IS REQUIRED "></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" CssClass="style2" 
            ErrorMessage="THIS FIELD IS REQUIRED "></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox5" CssClass="style8" 
            ErrorMessage="THIS FIELD IS REQUIRED "></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TextBox7" CssClass="style10" 
            ErrorMessage="THIS FIELD IS REQUIRED "></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="TextBox6" CssClass="style9" 
            ErrorMessage="THIS FIELD IS REQUIRED "></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="TextBox4" CssClass="style7" 
            ErrorMessage="THIS FIELD IS REQUIRED "></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox1" CssClass="style3" 
            ErrorMessage="NAME  IS REQUIRED "></asp:RequiredFieldValidator>

    <label for="email"><b>
        <br />
        <br />
        Email</b></label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ControlToValidate="TextBox3" CssClass="style18" ErrorMessage="Invalid Phone" 
            ValidationExpression="\+?\d[\d -]{8,12}\d"></asp:RegularExpressionValidator>
    <asp:TextBox ID="TextBox2" placeholder="Enter Email" runat="server" BorderColor="#3366FF" BorderStyle="Solid"></asp:TextBox>

    <label for="phone"><b>
        <br />
        <br />
        Phone</b></label>
    <asp:TextBox ID="TextBox3" placeholder="Enter Phone number" runat="server" 
            BorderColor="#3366FF" BorderStyle="Solid" MaxLength="10"></asp:TextBox>

        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox2" CssClass="style14" 
            ErrorMessage="Enter valid E-mail" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

    <label for="address"><b>
        <br />
        <br />
        Address</b></label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            CssClass="style16" ErrorMessage="enter valid address" 
            ValidationExpression="^[A-Z a-z,0-9]*$" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
    <asp:TextBox ID="TextBox4" placeholder="Enter Address" runat="server" BorderColor="#3366FF" BorderStyle="Solid" ></asp:TextBox>
    
    <label for="dob"><b>
        <br />
        <br />
        Date of birth</b></label>        <br />        <br />
    <asp:TextBox ID="TextBox5" placeholder="Select Date of Birth" TextMode="Date" 
            runat="server" BorderColor="#3366FF" BorderStyle="Solid"   BackColor="#F1F1F1" 
            Height="46px" Width="100%"></asp:TextBox>
    
    <label for="psw"><b>        <br />        <br />        <br />Password</b></label>
    <asp:TextBox ID="TextBox6" placeholder="Enter Password" runat="server" BorderColor="#3366FF" BorderStyle="Solid"  TextMode="Password"></asp:TextBox>
    
    <label for="psw-repeat"><b>
        <br />
        <br />
        Repeat Password</b></label>
    <asp:TextBox ID="TextBox7" placeholder="Re-enter Password" runat="server" BorderColor="#3366FF" BorderStyle="Solid"  TextMode="Password"></asp:TextBox>
   
    <label for="gender"><b>
        <br />
        <br />
        <br />
        Gender</b></label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style1" 
            BorderColor="#3366FF" BorderStyle="Solid" BackColor="#F1F1F1">
            <asp:ListItem Enabled="False" Value="1">Select your gender</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox6" ControlToValidate="TextBox7" CssClass="style15" 
            ErrorMessage="Passwords do not match"></asp:CompareValidator>
        <br />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="DropDownList1" CssClass="style11" 
            ErrorMessage="PLEASE SELECT GENDER"></asp:RequiredFieldValidator>
        <br />
        <br />
    
    <asp:Button ID="Button1" class="registerbtn" runat="server" Text="Register" 
            BackColor="#3399FF" />
    
  </div>
  
  <div class="container signin">
    <p>Already have an account? .<asp:HyperLink ID="HyperLink1" runat="server" 
            CssClass="style12" NavigateUrl="~/login.aspx">Sign in</asp:HyperLink>
      </p>
  </div>
    </form>
</body>
</html>
