<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admstd.aspx.vb" Inherits="Online_College_Management_project.admstd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 552px;
        }
        .style2
        {
            width: 1169px;
            height: 369px;
            position: absolute;
            top: 27px;
            left: 71px;
            z-index: 1;
        }
        .style3
        {
            position: absolute;
            top: 428px;
            left: 75px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 553px">
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:collegemanagementConnectionString %>" 
            DeleteCommand="DELETE FROM [sdetails] WHERE [email] = @email" 
            InsertCommand="INSERT INTO [sdetails] ([name], [dob], [roll], [email], [pass], [phone], [picpath], [gender], [department]) VALUES (@name, @dob, @roll, @email, @pass, @phone, @picpath, @gender, @department)" 
            SelectCommand="SELECT * FROM [sdetails]" 
            UpdateCommand="UPDATE [sdetails] SET [name] = @name, [dob] = @dob, [roll] = @roll, [pass] = @pass, [phone] = @phone, [picpath] = @picpath, [gender] = @gender, [department] = @department WHERE [email] = @email">
            <DeleteParameters>
                <asp:Parameter Name="email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="roll" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="phone" Type="Decimal" />
                <asp:Parameter Name="picpath" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="department" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter DbType="Date" Name="dob" />
                <asp:Parameter Name="roll" Type="Int32" />
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="phone" Type="Decimal" />
                <asp:Parameter Name="picpath" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="department" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CssClass="style2" DataKeyNames="email" DataSourceID="SqlDataSource1" 
            BackColor="#66CCFF" Caption="STUDENTS' DATA">
            <AlternatingRowStyle BackColor="#CCFF66" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="roll" HeaderText="roll" SortExpression="roll" />
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" 
                    SortExpression="email" />
                <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
                <asp:BoundField DataField="department" HeaderText="department" 
                    SortExpression="department" />
            </Columns>
            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
    
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style3">Add a new student</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
