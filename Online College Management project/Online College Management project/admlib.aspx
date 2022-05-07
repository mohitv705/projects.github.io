<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admlib.aspx.vb" Inherits="Online_College_Management_project.admlib" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 508px;
        }
        .style2
        {
            width: 1207px;
            height: 338px;
            position: absolute;
            top: 67px;
            left: 72px;
            z-index: 1;
        }
        .style3
        {
            width: 891px;
            height: 109px;
            position: absolute;
            top: 416px;
            left: 259px;
            z-index: 1;
        }
        .style4
        {
            position: absolute;
            top: 5px;
            left: 444px;
            z-index: 1;
        }
        .style5
        {
            position: absolute;
            top: 39px;
            left: 4px;
            z-index: 1;
        }
        .style6
        {
            position: absolute;
            top: 38px;
            left: 71px;
            z-index: 1;
            right: 692px;
        }
        .style7
        {
            position: absolute;
            top: 39px;
            left: 248px;
            z-index: 1;
        }
        .style8
        {
            position: absolute;
            top: 37px;
            left: 364px;
            z-index: 1;
        }
        .style9
        {
            position: absolute;
            top: 38px;
            left: 575px;
            z-index: 1;
        }
        .style10
        {
            position: absolute;
            top: 36px;
            left: 667px;
            z-index: 1;
        }
        .style11
        {
            position: absolute;
            top: 35px;
            left: 814px;
            z-index: 1;
            width: 62px;
        }
        .style12
        {
            position: absolute;
            top: 66px;
            left: 36px;
            z-index: 1;
        }
        .style13
        {
            position: absolute;
            top: 65px;
            left: 342px;
            z-index: 1;
        }
        .style14
        {
            position: absolute;
            top: 65px;
            left: 679px;
            z-index: 1;
        }
        .style15
        {
            position: absolute;
            top: 432px;
            left: 78px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="#CCFFFF" 
            Caption="CURRENTLY AVAILABLE BOOKS" CssClass="style2" DataKeyNames="Book_ID" 
            DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="#CCFF66" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" ReadOnly="True" 
                    SortExpression="Book_ID" />
                <asp:BoundField DataField="Book_name" HeaderText="Book_name" 
                    SortExpression="Book_name" />
                <asp:BoundField DataField="Book_author" HeaderText="Book_author" 
                    SortExpression="Book_author" />
            </Columns>
            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:collegemanagementConnectionString %>" 
            DeleteCommand="DELETE FROM [library] WHERE [Book_ID] = @Book_ID" 
            InsertCommand="INSERT INTO [library] ([Book_ID], [Book_name], [Book_author]) VALUES (@Book_ID, @Book_name, @Book_author)" 
            SelectCommand="SELECT * FROM [library]" 
            UpdateCommand="UPDATE [library] SET [Book_name] = @Book_name, [Book_author] = @Book_author WHERE [Book_ID] = @Book_ID">
            <DeleteParameters>
                <asp:Parameter Name="Book_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Book_ID" Type="String" />
                <asp:Parameter Name="Book_name" Type="String" />
                <asp:Parameter Name="Book_author" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Book_name" Type="String" />
                <asp:Parameter Name="Book_author" Type="String" />
                <asp:Parameter Name="Book_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Panel ID="Panel1" runat="server" CssClass="style3" Visible="False">
            <asp:Label ID="Label1" runat="server" CssClass="style4" Text="ADD NEW BOOK" 
                Font-Bold="True" Font-Underline="True"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="style5" Text="Book ID:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="style6"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" CssClass="style7" Text="BOOK NAME"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="style8"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" CssClass="style9" Text="AUTHOR"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="style10"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" BackColor="#99FF33" BorderColor="Black" 
                CssClass="style11" Font-Bold="True" Text="ADD" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" CssClass="style12" 
                ErrorMessage="This filed is required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" CssClass="style13" 
                ErrorMessage="This filed is required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" CssClass="style14" 
                ErrorMessage="This filed is required"></asp:RequiredFieldValidator>
        </asp:Panel>
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style15" 
            style="height: 19px">Add new book</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
