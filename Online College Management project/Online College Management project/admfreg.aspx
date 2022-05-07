<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admfreg.aspx.vb" Inherits="Online_College_Management_project.admfreg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 814px;
            height: 471px;
            position: absolute;
            top: 81px;
            left: 19px;
            z-index: 1;
            visibility: visible;
        }
        .style3
        {
            position: absolute;
            top: 22px;
            left: 188px;
            z-index: 1;
            width: 33px;
            bottom: 397px;
        }
        .style4
        {
            position: absolute;
            top: 75px;
            left: 189px;
            z-index: 1;
            bottom: 379px;
        }
        .style5
        {
            position: absolute;
            top: 127px;
            left: 188px;
            z-index: 1;
        }
        .style6
        {
            position: absolute;
            top: 17px;
            left: 312px;
            z-index: 1;
        }
        .style7
        {
            position: absolute;
            top: 72px;
            left: 313px;
            z-index: 1;
        }
        .style8
        {
            position: absolute;
            top: 123px;
            left: 313px;
            z-index: 1;
            bottom: 323px;
        }
        .style9
        {
            position: absolute;
            top: 352px;
            left: 184px;
            z-index: 1;
            right: 563px;
            bottom: 72px;
            margin-bottom: 0px;
        }
        .style10
        {
            position: absolute;
            top: 349px;
            left: 316px;
            z-index: 1;
        }
        .style11
        {
            position: absolute;
            top: 218px;
            left: 187px;
            z-index: 1;
        }
        .style12
        {
            position: absolute;
            top: 217px;
            left: 316px;
            z-index: 1;
            width: 95px;
            height: 16px;
            margin-bottom: 0px;
        }
        .style14
        {
            position: absolute;
            top: 263px;
            z-index: 1;
            width: 202px;
            height: 16px;
            right: 247px;
        }
        .style15
        {
            position: absolute;
            top: 266px;
            left: 185px;
            z-index: 1;
        }
        .style17
        {
            position: absolute;
            top: 475px;
            left: 360px;
            z-index: 1;
            width: 142px;
            height: 46px;
        }
        .style18
        {
            position: absolute;
            top: 393px;
            left: 178px;
            z-index: 1;
            width: 130px;
            height: 19px;
        }
        .style19
        {
            position: absolute;
            top: 391px;
            left: 316px;
            z-index: 1;
        }
        .style20
        {
            position: absolute;
            top: 309px;
            left: 185px;
            z-index: 1;
        }
        .style21
        {
            position: absolute;
            top: 307px;
            left: 315px;
            z-index: 1;
            width: 250px;
            height: 75px;
        }
        .style22
        {
            height: 629px;
        }
        .style23
        {
            position: absolute;
            top: 9px;
            left: 495px;
            z-index: 1;
            height: 22px;
            width: 310px;
        }
        .style24
        {
            position: absolute;
            top: 173px;
            left: 174px;
            z-index: 1;
            right: 539px;
        }
        .style25
        {
            position: absolute;
            top: 168px;
            z-index: 1;
            width: 257px;
            left: 312px;
        }
        .style26
        {
            position: absolute;
            top: 432px;
            left: 185px;
            z-index: 1;
        }
        .style27
        {
            position: absolute;
            top: 432px;
            left: 316px;
            z-index: 1;
            width: 256px;
        }
        .style28
        {
            position: absolute;
            top: 108px;
            left: 609px;
            z-index: 1;
            width: 132px;
        }
        .style29
        {
            position: absolute;
            top: 162px;
            left: 607px;
            z-index: 1;
            width: 153px;
        }
        .style30
        {
            position: absolute;
            top: 213px;
            left: 608px;
            z-index: 1;
            width: 163px;
        }
        .style31
        {
            position: absolute;
            top: 258px;
            left: 608px;
            z-index: 1;
            width: 156px;
        }
        .style32
        {
            position: absolute;
            top: 306px;
            left: 605px;
            z-index: 1;
            width: 140px;
        }
        .style33
        {
            position: absolute;
            top: 350px;
            left: 603px;
            z-index: 1;
            width: 167px;
        }
        .style34
        {
            position: absolute;
            top: 393px;
            left: 600px;
            z-index: 1;
            width: 256px;
        }
        .style35
        {
            position: absolute;
            top: 438px;
            left: 606px;
            z-index: 1;
            width: 256px;
        }
        .style36
        {
            position: absolute;
            top: 480px;
            left: 608px;
            z-index: 1;
            width: 256px;
        }
        .style37
        {
            position: absolute;
            top: 519px;
            left: 570px;
            z-index: 1;
            width: 256px;
        }
        .style38
        {
            position: absolute;
            top: 163px;
            left: 45px;
            z-index: 1;
            width: 164px;
            height: 19px;
        }
        .style39
        {
            position: absolute;
            top: 479px;
            left: 59px;
            z-index: 1;
            width: 142px;
            height: 21px;
        }
        .style40
        {
            position: absolute;
            top: 176px;
            left: 935px;
            z-index: 1;
            width: 260px;
            height: 253px;
        }
        .style41
        {
            width: 438px;
            height: 19px;
            position: absolute;
            top: 49px;
            left: 519px;
            z-index: 1;
        }
        .style42
        {
            position: absolute;
            top: -1px;
            z-index: 1;
            height: 19px;
            left: 194px;
        }
    </style>
</head>
<body style="height: 594px; width: 1275px; position: absolute; left: 21px; top: -3px;">
    <form id="form1" runat="server" class="style22" 
    style="background-color: #CCFFCC">
    <div align="center" class="style1" dir="ltr" 
        
        style="border-style: solid; background-color: #00FF00; background-image: none; ">
        <asp:Label ID="Label2" runat="server" CssClass="style3" Text="Name:"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="style4" Text="Email:"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="style5" Text="Phone"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="style6" BorderColor="Black" 
            Height="25px" Width="250px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="style7" BorderColor="Black" 
            Height="25px" Width="250px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="style8" BorderColor="Black" 
            Height="25px" Width="250px" MaxLength="10"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" CssClass="style9" Text="Password :"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#FFFF66" 
            BorderColor="Black" CssClass="style27" />
        <asp:TextBox ID="TextBox5" runat="server" CssClass="style10" 
            BorderColor="Black" Height="25px" Width="250px"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" CssClass="style11" Text="Gender"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style12" 
            BackColor="#FFFF66" Height="25px" Width="250px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Selected="True">Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="style14" 
            BackColor="#FFFF66" Height="25px" Width="250px">
            <asp:ListItem>Assistant professor</asp:ListItem>
            <asp:ListItem>Head of Department(HOD)</asp:ListItem>
            <asp:ListItem>Librarian</asp:ListItem>
            <asp:ListItem>Office Assistant</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label7" runat="server" CssClass="style15" Text="Designation:"></asp:Label>
        
        <asp:ImageButton ID="ImageButton2" runat="server" AlternateText="REGISTER" 
            CssClass="style17" ImageUrl="~/black register.jpg" />
        <asp:Label ID="Label8" runat="server" CssClass="style18" 
            Text="Confirm Password:"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="style19" 
            BorderColor="Black" Height="25px" Width="250px"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" CssClass="style20" Text="Department"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="style21" 
            BackColor="#FFFF66" Height="25px" Width="250px">
            <asp:ListItem>Bachelor Of Computer Apllications(B.C.A)</asp:ListItem>
            <asp:ListItem>Bachelor Of Business Administration</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label11" runat="server" CssClass="style24" Text="Date of birth"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black" 
            CssClass="style25" Height="25px" Width="250px" TextMode="Date"></asp:TextBox>
        <asp:Label ID="Label12" runat="server" CssClass="style26" 
            Text="Upload your photo"></asp:Label>
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" CssClass="style23" Font-Overline="True" 
        Font-Size="X-Large" Font-Underline="True" Text="FACULTY REGISTRATION" 
        Font-Bold="True"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" CssClass="style28" 
        ErrorMessage="This field is required"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" CssClass="style29" 
        ErrorMessage="This field is required"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox3" CssClass="style30" 
        ErrorMessage="This field is required"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="TextBox4" CssClass="style31" 
        ErrorMessage="This field is required"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="DropDownList1" CssClass="style32" 
        ErrorMessage="This field is required"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="DropDownList3" CssClass="style34" 
        ErrorMessage="This field is required"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="DropDownList2" CssClass="style33" 
        ErrorMessage="This field is required"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ControlToValidate="TextBox1" CssClass="style37" 
        ErrorMessage="This field is required"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="TextBox5" CssClass="style35" 
        ErrorMessage="This field is required"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ControlToValidate="TextBox6" CssClass="style36" 
        ErrorMessage="This field is required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox2" CssClass="style38" 
            ErrorMessage="ENTER VALID EMAIL" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        BackColor="Yellow"></asp:RegularExpressionValidator>
    
        <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="Yellow" 
            ControlToCompare="TextBox5" ControlToValidate="TextBox6" CssClass="style39" 
            ErrorMessage="Passwords must match" ForeColor="Red"></asp:CompareValidator>
    <asp:Image ID="Image1" runat="server" BackColor="#CCFFCC" CssClass="style40" 
        ImageUrl="~/online-application-icon-8.jpg" />
    <asp:Panel ID="Panel1" runat="server" CssClass="style41" Visible="False">
        Faculty Added Succesfully<asp:HyperLink ID="HyperLink1" runat="server" 
            CssClass="style42" NavigateUrl="~/admfreg.aspx">Click here</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to add another</asp:Panel>
    </form>
</body>
</html>
