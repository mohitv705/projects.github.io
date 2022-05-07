<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="fprofile.aspx.vb" Inherits="Online_College_Management_project.fprofile" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 612px;
        }
        .style2
        {
            width: 901px;
            height: 159px;
            position: absolute;
            top: 289px;
            left: 288px;
            z-index: 1;
        }
        .style3
        {
            width: 213px;
            height: 151px;
            position: absolute;
            top: 76px;
            left: 606px;
            z-index: 1;
        }
        .style4
        {
            position: absolute;
            top: 44px;
            left: 647px;
            z-index: 1;
            height: 22px;
            width: 139px;
        }
        .style5
        {
            position: absolute;
            top: 236px;
            left: 664px;
            z-index: 1;
        }
        .style6
        {
            position: absolute;
            top: 24px;
            left: 1235px;
            z-index: 1;
        }
        .style7
        {
            position: absolute;
            top: 29px;
            left: 1093px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1" style="background-color: #FFFF00">
    
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style7">&lt;&lt;Back to dashboard</asp:LinkButton>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CssClass="style2" DataKeyNames="email" DataSourceID="SqlDataSource1" 
            AutoGenerateEditButton="True" BackColor="#99FF66" BorderColor="Black" 
            BorderStyle="Solid" Caption="Profile" CaptionAlign="Top" CellPadding="5" 
            CellSpacing="5" Font-Bold="True">
            <AlternatingRowStyle BackColor="#99FF99" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" 
                    ReadOnly="True" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:BoundField DataField="dob" HeaderText="Date of birth" 
                    SortExpression="dob" />
                <asp:BoundField DataField="gender" HeaderText="Gender" 
                    SortExpression="gender" />
                <asp:BoundField DataField="designation" HeaderText="Designation" 
                    SortExpression="designation" />
                <asp:BoundField DataField="dept" HeaderText="Department" 
                    SortExpression="dept" />
            </Columns>
            <EditRowStyle BorderColor="Black" />
            <HeaderStyle Font-Bold="True" Font-Italic="True" Font-Overline="False" 
                Font-Underline="True" HorizontalAlign="Center" VerticalAlign="Top" />
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:collegemanagementConnectionString %>" 
            
            SelectCommand="SELECT [name], [email], [phone], [dob], [gender], [designation], [dept] FROM [fdetails] WHERE ([email] = @emailid)" 
            OldValuesParameterFormatString="original_{0}">
            


            <SelectParameters>
                <asp:SessionParameter Name="emailid" 
                    SessionField="emailid" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:Button ID="Button2" runat="server" BackColor="#FF3300" CssClass="style6" 
            Font-Bold="True" ForeColor="Yellow" Text="LOGOUT" />
    
        <asp:Image ID="Image1" runat="server" CssClass="style3" />
    
        <asp:Label ID="Label1" runat="server" CssClass="style4" 
            Text="Your profile picture:"></asp:Label>
    
        <asp:Button ID="Button1" runat="server" CssClass="style5" 
            Text="Change profile picture" BackColor="#0099FF" BorderColor="Black" 
            Font-Bold="True" />
    
    </div>
    </form>
</body>
</html>