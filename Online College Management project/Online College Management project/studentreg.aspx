<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="studentreg.aspx.vb" Inherits="Online_College_Management_project.studentreg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .style1
        {
            height: 631px;
        }
table{border-collapse:collapse;border-spacing:0;}

table {font-size:inherit;font:100%;}
 
select, input, textarea {font:99% arial,helvetica,clean,sans-serif;}

        .style2
        {
            position: absolute;
            top: 16px;
            left: 625px;
            z-index: 1;
            width: 176px;
            height: 53px;
        }
        .style3
        {
            position: absolute;
            top: 185px;
            left: 288px;
            z-index: 1;
        }
        .style4
        {
            position: absolute;
            top: 186px;
            left: 342px;
            z-index: 1;
        }
        .style5
        {
            position: absolute;
            top: 230px;
            left: 251px;
            z-index: 1;
            height: 19px;
            bottom: 279px;
        }
        .style6
        {
            position: absolute;
            top: 270px;
            left: 287px;
            z-index: 1;
            height: 18px;
        }
        .style7
        {
            position: absolute;
            top: 310px;
            left: 231px;
            z-index: 1;
            width: 121px;
            height: 19px;
        }
        .style8
        {
            position: absolute;
            left: 262px;
            z-index: 1;
            top: 351px;
            right: 1006px;
            height: 19px;
            bottom: 158px;
        }
        .style9
        {
            position: absolute;
            top: 227px;
            left: 341px;
            z-index: 1;
        }
        .style10
        {
            position: absolute;
            top: 269px;
            left: 341px;
            z-index: 1;
            right: 848px;
        }
        .style11
        {
            position: absolute;
            top: 310px;
            left: 340px;
            z-index: 1;
        }
        .style12
        {
            position: absolute;
            top: 348px;
            left: 339px;
            z-index: 1;
        }
        .style13
        {
            position: absolute;
            top: 390px;
            left: 208px;
            z-index: 1;
        }
        .style14
        {
            position: absolute;
            top: 387px;
            left: 339px;
            z-index: 1;
            height: 21px;
            }
        .style15
        {
            position: absolute;
            top: 171px;
            left: 870px;
            z-index: 1;
            width: 430px;
            height: 253px;
        }
        .style16
        {
            position: absolute;
            top: 596px;
            left: 690px;
            z-index: 1;
            height: 29px;
            width: 118px;
            margin-right: 0px;
            margin-top: 0px;
        }
        .style17
        {
            position: absolute;
            top: 388px;
            left: 59px;
            z-index: 1;
            height: 20px;
            bottom: 99px;
        }
        .style18
        {
            position: absolute;
            top: 272px;
            left: 92px;
            z-index: 1;
            width: 159px;
            height: 16px;
        }
        .style19
        {
            position: absolute;
            top: 427px;
            left: 282px;
            z-index: 1;
        }
        .style20
        {
            position: absolute;
            top: 426px;
            left: 339px;
            z-index: 1;
        }
        .style21
        {
            position: absolute;
            top: 463px;
            left: 206px;
            z-index: 1;
        }
        .style22
        {
            position: absolute;
            top: 459px;
            left: 339px;
            z-index: 1;
            right: 724px;
        }
        .style23
        {
            position: absolute;
            top: 504px;
            left: 271px;
            z-index: 1;
        }
        .style24
        {
            position: absolute;
            top: 501px;
            left: 339px;
            z-index: 1;
        }
        .style25
        {
            position: absolute;
            top: 550px;
            left: 246px;
            z-index: 1;
            right: 995px;
            height: 20px;
        }
        .style26
        {
            position: absolute;
            top: 547px;
            left: 339px;
            z-index: 1;
        }
        .style27
        {
            position: absolute;
            top: 188px;
            left: 562px;
            z-index: 1;
        }
        .style28
        {
            position: absolute;
            top: 230px;
            left: 561px;
            z-index: 1;
        }
        .style29
        {
            position: absolute;
            top: 270px;
            left: 560px;
            z-index: 1;
            bottom: 242px;
        }
        .style30
        {
            position: absolute;
            top: 313px;
            left: 559px;
            z-index: 1;
        }
        .style31
        {
            position: absolute;
            top: 350px;
            left: 559px;
            z-index: 1;
        }
        .style32
        {
            position: absolute;
            top: 387px;
            left: 559px;
            z-index: 1;
        }
        .style33
        {
            position: absolute;
            top: 428px;
            left: 549px;
            z-index: 1;
            right: 626px;
        }
        .style34
        {
            position: absolute;
            top: 464px;
            left: 668px;
            z-index: 1;
        }
        .style35
        {
            position: absolute;
            top: 185px;
            left: 185px;
            z-index: 1;
        }
        .style36
        {
            position: absolute;
            top: 428px;
            z-index: 1;
            left: 158px;
        }
        .style37
        {
            position: absolute;
            top: 550px;
            left: 710px;
            z-index: 1;
        }
        .style38
        {
            position: absolute;
            top: 504px;
            left: 498px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 724px">
    <form id="form1" runat="server">
    <div class="style1" align="center">
    
        <asp:Label ID="Label1" runat="server" CssClass="style2" 
            Text="Student Registration" Font-Bold="True" Font-Italic="False" 
            Font-Names="Bell MT" Font-Overline="True" Font-Size="Large" 
            Font-Underline="True"></asp:Label>
    
        <asp:Label ID="name" runat="server" CssClass="style3" Text="Name:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" CssClass="style4"></asp:TextBox>
        <asp:Label ID="roll" runat="server" CssClass="style7" Text="Roll number:"></asp:Label>
        <asp:Label ID="pass" runat="server" CssClass="style8" Text="Password:"></asp:Label>
        <asp:Label ID="email" runat="server" CssClass="style6" Text="Email:"></asp:Label>
        <asp:Label ID="dob" runat="server" CssClass="style5" Text="Date of birth:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" CssClass="style9" 
            TextMode="Date"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" 
            CssClass="style10"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black" 
            CssClass="style11"></asp:TextBox>
        <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="Black" 
            BorderStyle="Solid" CssClass="style22" />
        <asp:TextBox ID="TextBox5" runat="server" BorderColor="Black" 
            CssClass="style12"></asp:TextBox>
        <asp:Label ID="confirmpass" runat="server" CssClass="style13" 
            Text="Confirm Password:"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" BorderColor="Black" 
            CausesValidation="True" CssClass="style14" Height="24px"></asp:TextBox>
        <asp:Image ID="Image1" runat="server" CssClass="style15" 
            ImageUrl="~/stdregistration.jpg" />
        <asp:Button ID="Button1" runat="server" CssClass="style16" Text="Submit" 
            BackColor="#0066FF" BorderStyle="Ridge" ForeColor="White" />
        <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="Yellow" 
            ControlToCompare="TextBox5" ControlToValidate="TextBox6" CssClass="style17" 
            ErrorMessage="Passwords must match" ForeColor="Red"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" CssClass="style29" 
            ErrorMessage="This field is required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox3" CssClass="style18" 
            ErrorMessage="ENTER VALID EMAIL" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    
        <asp:Label ID="Label2" runat="server" CssClass="style19" Text="Phone: "></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" BorderColor="Black" 
            BorderStyle="Solid" CssClass="style20" MaxLength="10"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" CssClass="style21" 
            Text="Upload your photo:"></asp:Label>
    
        <asp:Label ID="Label4" runat="server" CssClass="style23" Text="Gender:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style24">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem Value="Others">Others</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label5" runat="server" CssClass="style25" Text="Department:"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="style26">
            <asp:ListItem>Bachelor Of Computer Applications (BCA)</asp:ListItem>
            <asp:ListItem>Bachelor in Business Administration(BBA)</asp:ListItem>
        </asp:DropDownList>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" CssClass="style27" 
            ErrorMessage="This field is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" CssClass="style28" 
            ErrorMessage="This field is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox4" CssClass="style30" 
            ErrorMessage="This field is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox5" CssClass="style31" 
            ErrorMessage="This field is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TextBox6" CssClass="style32" 
            ErrorMessage="This field is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="TextBox7" CssClass="style33" 
            ErrorMessage="This field is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="FileUpload1" CssClass="style34" 
            ErrorMessage="This field is required"></asp:RequiredFieldValidator>
    
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox1" CssClass="style35" ErrorMessage="Alphabets only" 
            ForeColor="Red" ValidationExpression="^[A-Z,a-z, ]*$"></asp:RegularExpressionValidator>
    
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="TextBox7" CssClass="style36" ErrorMessage="numbers only" 
            ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="DropDownList2" CssClass="style37" 
            ErrorMessage="This field is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="DropDownList1" CssClass="style38" 
            ErrorMessage="This field is required"></asp:RequiredFieldValidator>
    
    </div>
    </form>
</body>
</html>
