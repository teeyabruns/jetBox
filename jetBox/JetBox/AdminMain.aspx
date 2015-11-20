<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="AdminMain.aspx.cs" Inherits="JetBox.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type ="text/css" rel="stylesheet" href="home.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <a href="AdminLogin.aspx">Back</a>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="MainContentArea" runat="server">
    
    <br />
    <asp:Button ID="InventoryButton" runat="server" Text="Manage Inventory" OnClick="InventoryButton_Click" />
<br />
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="User_ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" ShowFooter="True">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:TemplateField HeaderText="User_ID" InsertVisible="False" SortExpression="User_ID">
            <EditItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("User_ID") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("User_ID") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="User_FName" SortExpression="User_FName">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("User_FName") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEditUserFName" runat="server" ErrorMessage="User first name is a required field"
                       ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("User_FName") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="User_LName" SortExpression="User_LName">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("User_LName") %>'></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEditUserLName" runat="server" ErrorMessage="User last name is a required field"
                       ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("User_LName") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="User_Address" SortExpression="User_Address">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("User_Address") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEditUserAddress" runat="server" ErrorMessage="User address is a required field"
                       ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("User_Address") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="User_City" SortExpression="User_City">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("User_City") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEditUserCity" runat="server" ErrorMessage="User city is a required field"
                       ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("User_City") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="User_State" SortExpression="User_State">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("User_State") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEditUserState" runat="server" ErrorMessage="User state is a required field"
                       ControlToValidate="TextBox5" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("User_State") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="User_Zip" SortExpression="User_Zip">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("User_Zip") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEditUserZip" runat="server" ErrorMessage="User zip code is a required field"
                       ControlToValidate="TextBox6" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label7" runat="server" Text='<%# Bind("User_Zip") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="User_Email" SortExpression="User_Email">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("User_Email") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEditUserEmail" runat="server" ErrorMessage="User email is a required field"
                       ControlToValidate="TextBox7" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label8" runat="server" Text='<%# Bind("User_Email") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="User_Password" SortExpression="User_Password">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("User_Password") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEditUserPassword" runat="server" ErrorMessage="User password is a required field"
                       ControlToValidate="TextBox8" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label9" runat="server" Text='<%# Bind("User_Password") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="User_PaymentInfo" SortExpression="User_PaymentInfo">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("User_PaymentInfo") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEditUserPaymentInfo" runat="server" ErrorMessage="User pauyment info is a required field"
                       ControlToValidate="TextBox9" Text="*" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label10" runat="server" Text='<%# Bind("User_PaymentInfo") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JetBoxConnectionString %>" SelectCommand="SELECT [User_ID], [User_FName], [User_LName], [User_Address], [User_City], [User_State], [User_Zip], [User_Email], [User_Password], [User_PaymentInfo] FROM [User]" DeleteCommand="DELETE FROM [User] WHERE [User_ID] = @User_ID" InsertCommand="INSERT INTO [User] ([User_FName], [User_LName], [User_Address], [User_City], [User_State], [User_Zip], [User_Email], [User_Password], [User_PaymentInfo]) VALUES (@User_FName, @User_LName, @User_Address, @User_City, @User_State, @User_Zip, @User_Email, @User_Password, @User_PaymentInfo)" UpdateCommand="UPDATE [User] SET [User_FName] = @User_FName, [User_LName] = @User_LName, [User_Address] = @User_Address, [User_City] = @User_City, [User_State] = @User_State, [User_Zip] = @User_Zip, [User_Email] = @User_Email, [User_Password] = @User_Password, [User_PaymentInfo] = @User_PaymentInfo WHERE [User_ID] = @User_ID">
        <DeleteParameters>
            <asp:Parameter Name="User_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="User_FName" Type="String" />
            <asp:Parameter Name="User_LName" Type="String" />
            <asp:Parameter Name="User_Address" Type="String" />
            <asp:Parameter Name="User_City" Type="String" />
            <asp:Parameter Name="User_State" Type="String" />
            <asp:Parameter Name="User_Zip" Type="String" />
            <asp:Parameter Name="User_Email" Type="String" />
            <asp:Parameter Name="User_Password" Type="String" />
            <asp:Parameter Name="User_PaymentInfo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="User_FName" Type="String" />
            <asp:Parameter Name="User_LName" Type="String" />
            <asp:Parameter Name="User_Address" Type="String" />
            <asp:Parameter Name="User_City" Type="String" />
            <asp:Parameter Name="User_State" Type="String" />
            <asp:Parameter Name="User_Zip" Type="String" />
            <asp:Parameter Name="User_Email" Type="String" />
            <asp:Parameter Name="User_Password" Type="String" />
            <asp:Parameter Name="User_PaymentInfo" Type="String" />
            <asp:Parameter Name="User_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <br />
<br />
<br />
</asp:Content>
