<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="sprofile.aspx.vb" Inherits="Online_College_Management_project.sprofile" %>

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
            width: 1005px;
            height: 115px;
            position: absolute;
            top: 295px;
            left: 228px;
            z-index: 1;
        }
        .style3
        {
            width: 213px;
            height: 151px;
            position: absolute;
            top: 97px;
            left: 615px;
            z-index: 1;
        }
        .style4
        {
            position: absolute;
            top: 59px;
            left: 657px;
            z-index: 1;
            height: 22px;
            width: 139px;
        }
        .style5
        {
            position: absolute;
            top: 256px;
            left: 643px;
            z-index: 1;
        }
        .style6
        {
            position: absolute;
            top: 22px;
            left: 1237px;
            z-index: 1;
        }
        .style7
        {
            position: absolute;
            top: 25px;
            left: 1086px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1" style="background-color: #00FFFF">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CssClass="style2" DataKeyNames="email" DataSourceID="SqlDataSource1" 
            AutoGenerateEditButton="True" Caption="Profile" CaptionAlign="Top" 
            CellPadding="4" Font-Bold="True" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="dob" HeaderText="Date of birth" 
                    SortExpression="dob" />
                <asp:BoundField DataField="roll" HeaderText="Roll number" 
                    SortExpression="roll" />
                <asp:BoundField DataField="email" HeaderText="E-mail" ReadOnly="True" 
                    SortExpression="email" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:BoundField DataField="gender" HeaderText="Gender" 
                    SortExpression="gender" />
                <asp:BoundField DataField="department" HeaderText="Department" 
                    SortExpression="department" />
            </Columns>
            <EditRowStyle BorderColor="Black" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle Font-Bold="True" Font-Overline="False" 
                Font-Underline="True" HorizontalAlign="Center" VerticalAlign="Top" 
                BackColor="#990000" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" Font-Underline="False" ForeColor="#333333" 
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:collegemanagementConnectionString %>" 
            
            SelectCommand="SELECT [name], [dob], [roll], [email], [phone], [gender], [department] FROM [sdetails] WHERE ([email] = @email)" 
            ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [sdetails] WHERE [email] = @original_email AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([dob] = @original_dob) OR ([dob] IS NULL AND @original_dob IS NULL)) AND (([roll] = @original_roll) OR ([roll] IS NULL AND @original_roll IS NULL)) AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([department] = @original_department) OR ([department] IS NULL AND @original_department IS NULL))" 
            InsertCommand="INSERT INTO [sdetails] ([name], [dob], [roll], [email], [phone], [gender], [department]) VALUES (@name, @dob, @roll, @email, @phone, @gender, @department)" 
            OldValuesParameterFormatString="original_{0}" 
            UpdateCommand="UPDATE [sdetails] SET [name] = @name, [dob] = @dob, [roll] = @roll, [phone] = @phone, [gender] = @gender, [department] = @department WHERE [email] = @original_email AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([dob] = @original_dob) OR ([dob] IS NULL AND @original_dob IS NULL)) AND (([roll] = @original_roll) OR ([roll] IS NULL AND @original_roll IS NULL)) AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([department] = @original_department) OR ([department] IS NULL AND @original_department IS NULL))">
            


            <DeleteParameters>
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter DbType="Date" Name="original_dob" />
                <asp:Parameter Name="original_roll" Type="Int32" />
                <asp:Parameter Name="original_phone" Type="Decimal" />
                <asp:Parameter Name="original_gender" Type="String" />
                <asp:Parameter Name="original_department" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="roll" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phone" Type="Decimal" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="department" Type="String" />
            </InsertParameters>
            


            <SelectParameters>
                <asp:SessionParameter Name="email" 
                    SessionField="emailid" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="roll" Type="Int32" />
                <asp:Parameter Name="phone" Type="Decimal" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="department" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter DbType="Date" Name="original_dob" />
                <asp:Parameter Name="original_roll" Type="Int32" />
                <asp:Parameter Name="original_phone" Type="Decimal" />
                <asp:Parameter Name="original_gender" Type="String" />
                <asp:Parameter Name="original_department" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style7">&lt;&lt; Back to dashboard</asp:LinkButton>
    
        <asp:Button ID="Button2" runat="server" BackColor="Red" BorderColor="Yellow" 
            CssClass="style6" Font-Bold="True" ForeColor="Black" Text="LOGOUT" />
    
        <asp:Image ID="Image1" runat="server" CssClass="style3" />
    
        <asp:Label ID="Label1" runat="server" CssClass="style4" 
            Text="Your profile picture:"></asp:Label>
    
        <asp:Button ID="Button1" runat="server" CssClass="style5" 
            Text="Change profile picture" BackColor="#FFFF99" BorderColor="Black" 
            Font-Bold="True" />
    
    </div>
    </form>
</body>
</html>