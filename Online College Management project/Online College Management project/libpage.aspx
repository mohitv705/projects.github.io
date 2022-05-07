<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="libpage.aspx.vb" Inherits="Online_College_Management_project.libpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 619px;
        }
        .style2
        {
            width: 1244px;
            height: 227px;
            position: absolute;
            top: 98px;
            left: 44px;
            z-index: 1;
        }
        .style3
        {
            position: absolute;
            top: 424px;
            left: 644px;
            z-index: 1;
            right: 573px;
        }
        .style8
        {
            position: absolute;
            top: 526px;
            left: 684px;
            z-index: 1;
        }
        .style16
        {
            width: 918px;
            height: 59px;
            position: absolute;
            top: 347px;
            left: 194px;
            z-index: 1;
        }
        .style17
        {
            width: 1090px;
            height: 43px;
            position: absolute;
            top: 467px;
            left: 149px;
            z-index: 1;
        }
        .style18
        {
            position: absolute;
            top: 3px;
            left: 29px;
            z-index: 1;
        }
        .style19
        {
            position: absolute;
            top: 4px;
            left: 410px;
            z-index: 1;
        }
        .style20
        {
            position: absolute;
            top: 5px;
            left: 749px;
            z-index: 1;
        }
        .style21
        {
            position: absolute;
            top: 11px;
            left: 370px;
            z-index: 1;
        }
        .style22
        {
            position: absolute;
            top: 30px;
            left: 4px;
            z-index: 1;
        }
        .style23
        {
            position: absolute;
            top: 30px;
            left: 367px;
            z-index: 1;
        }
        .style24
        {
            position: absolute;
            top: 29px;
            left: 697px;
            z-index: 1;
            width: 217px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1" align="center">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CaptionAlign="Top" CssClass="style2" DataKeyNames="Book_ID" 
            DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Book_ID" HeaderText="Book ID" ReadOnly="True" 
                    SortExpression="Book_ID" />
                <asp:BoundField DataField="Book_name" HeaderText="Book name" 
                    SortExpression="Book_name" />
                <asp:BoundField DataField="Book_author" HeaderText="Book author" 
                    SortExpression="Book_author" />
            </Columns>
            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" 
                BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#F7F6F3" 
                ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:collegemanagementConnectionString %>" 
            SelectCommand="SELECT * FROM [library]"></asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:collegemanagementConnectionString %>" 
            DeleteCommand="DELETE FROM [library] WHERE [Book_ID] = @Book_ID" 
            InsertCommand="INSERT INTO [library] ([Book_ID], [Book_name], [Book_author]) VALUES (@Book_ID, @Book_name, @Book_author)" 
            SelectCommand="SELECT * FROM [library] WHERE ([Book_ID] = @Book_ID)" 
            
            UpdateCommand="UPDATE [library] SET [Book_name] = @Book_name, [Book_author] = @Book_author WHERE [Book_ID] = @Book_ID">
            <DeleteParameters>
                <asp:Parameter Name="Book_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Book_ID" Type="String" />
                <asp:Parameter Name="Book_name" Type="String" />
                <asp:Parameter Name="Book_author" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Book_ID" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Book_name" Type="String" />
                <asp:Parameter Name="Book_author" Type="String" />
                <asp:Parameter Name="Book_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <asp:Panel ID="Panel1" runat="server" CssClass="style16">
            <asp:TextBox ID="TextBox1" runat="server" 
    CssClass="style18" BorderColor="Black"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" 
                CssClass="style19"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" 
                CssClass="style20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox1" CssClass="style22" 
                ErrorMessage="please select a book to fill this field"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox2" CssClass="style23" 
                ErrorMessage="please select a book to fill this field"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox3" CssClass="style24" 
                ErrorMessage="please select a book to fill this field"></asp:RequiredFieldValidator>
        </asp:Panel>
        <asp:Button ID="Button1" runat="server" CssClass="style3" Text="Request book" />
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style8" 
            PostBackUrl="~/sdashboard.aspx">Go back </asp:LinkButton>
    
        <asp:Panel ID="Panel2" runat="server" CssClass="style17">
            <asp:Label ID="Label1" runat="server" CssClass="style21" 
                Text="THE REQUESTED BOOK HAS BEEEN ALLOTED TO YOU" Visible="False"></asp:Label>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
