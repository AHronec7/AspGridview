<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="aspGridview.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .panelform {}
        .mainform {}
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <link href="Style.css" rel="stylesheet" />
     

        <div>
        </div>
        <asp:Panel ID="Panel1" CssClass="mainform" runat="server" Height="364px">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Names], [address], [Phone], [state], [email] FROM [contactTable]" DeleteCommand="DELETE FROM [contactTable] WHERE [Names] = @Names" InsertCommand="INSERT INTO [contactTable] ([Names], [address], [Phone], [state], [email]) VALUES (@Names, @address, @Phone, @state, @email)" UpdateCommand="UPDATE [contactTable] SET [address] = @address, [Phone] = @Phone, [state] = @state, [email] = @email WHERE [Names] = @Names">
                <DeleteParameters>
                    <asp:Parameter Name="Names" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Names" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="Names" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="Names" HeaderText="Names" SortExpression="Names" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="phonenumber" HeaderText="phonenumber" SortExpression="phonenumber" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    
                </Columns>
                    
   
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>

            &nbsp;&nbsp;&nbsp;&nbsp; Name:<asp:TextBox ID="TextBox1" CssClass="position" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>

            address:<asp:TextBox ID="TextBox2" CssClass="address" runat="server" Width="131px"></asp:TextBox>

            PhoneNumber:<asp:TextBox ID="TextBox3" CssClass="Pnumber" runat="server"></asp:TextBox>
            <br />
            State:<asp:TextBox ID="TextBox4" CssClass="State" runat="server"></asp:TextBox>

            Email:<asp:TextBox ID="TextBox5" CssClass="email" runat="server"></asp:TextBox>

            <asp:Button ID="Button1" CssClass="btncolor" runat="server" Text="Register New User" OnClick="Button1_Click" />
        </asp:Panel>
    </form>
</body>
</html>
