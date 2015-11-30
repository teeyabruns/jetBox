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
    
    <div id="AdminMainHolder" style="background-color: #c9f1fd;
    margin: 2% 0% 2% 0%; 
    padding: 2% 2% 2% 2%; 
    border-radius: 15px;">
<br />

<asp:Button ID="InventoryButton" runat="server" Text="Manage Inventory" OnClick="InventoryButton_Click" />
<br />
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="User_ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" ShowFooter="True" style="margin-top: 0px">
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
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Admin_ID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" ShowFooter="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="Admin_ID" InsertVisible="False" SortExpression="Admin_ID">
                <EditItemTemplate>
                    <asp:Label ID="AdminLabel1" runat="server" Text='<%# Eval("Admin_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="AdminLabel1" runat="server" Text='<%# Bind("Admin_ID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="insertBtn" validationGroup="INSERT2" OnClick="insertBtn_Click" runat="server">Insert</asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Admin_Password" SortExpression="Admin_Password">
                <EditItemTemplate>
                    <asp:TextBox ID="AdminTextBox1" runat="server" Text='<%# Bind("Admin_Password") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditAdminPass" runat="server" ErrorMessage="Admin Password is a required field"
                        ControlToValidate="AdminTextBox1" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="AdminLabel2" runat="server" Text='<%# Bind("Admin_Password") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtAdminPassword" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertAdminPass" validationGroup="INSERT2" runat="server" ErrorMessage="Admin Password is a required field"
                        ControlToValidate="txtAdminPassword" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Admin_FName" SortExpression="Admin_FName">
                <EditItemTemplate>
                    <asp:TextBox ID="AdminTextBox2" runat="server" Text='<%# Bind("Admin_FName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditAdminFName" runat="server" ErrorMessage="Admin first name is a required field"
                        ControlToValidate="AdminTextBox2" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="AdminLabel3" runat="server" Text='<%# Bind("Admin_FName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtAdminFName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertAdminFName" validationGroup="INSERT2" runat="server" ErrorMessage="Admin first name is a required field"
                        ControlToValidate="txtAdminFName" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Admin_LName" SortExpression="Admin_LName">
                <EditItemTemplate>
                    <asp:TextBox ID="AdminTextBox3" runat="server" Text='<%# Bind("Admin_LName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditAdminLName" runat="server" ErrorMessage="Admin last name is a required field"
                        ControlToValidate="AdminTextBox3" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="AdminLabel4" runat="server" Text='<%# Bind("Admin_LName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtAdminLName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertAdminLName" validationGroup="INSERT2" runat="server" ErrorMessage="Admin last name is a required field"
                        ControlToValidate="txtAdminLName" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Admin_Email" SortExpression="Admin_Email">
                <EditItemTemplate>
                    <asp:TextBox ID="AdminTextBox4" runat="server" Text='<%# Bind("Admin_Email") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditAdminEmail" runat="server" ErrorMessage="Admin email is a required field"
                        ControlToValidate="AdminTextBox4" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="AdminLabel5" runat="server" Text='<%# Bind("Admin_Email") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtAdminEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertAdminEmail" validationGroup="INSERT2" runat="server" ErrorMessage="Admin email is a required field"
                        ControlToValidate="txtAdminEmail" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </FooterTemplate>
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

    <asp:ValidationSummary  ID="ValidationSummary4" ForeColor="Red" runat="server" />
    <asp:ValidationSummary ValidationGroup="INSERT2" ID="ValidationSummary3" ForeColor="Red" runat="server" />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JetBoxConnectionString5 %>" DeleteCommand="DELETE FROM [Admin] WHERE [Admin_ID] = @Admin_ID" InsertCommand="INSERT INTO [Admin] ([Admin_Password], [Admin_FName], [Admin_LName], [Admin_Email]) VALUES (@Admin_Password, @Admin_FName, @Admin_LName, @Admin_Email)" SelectCommand="SELECT [Admin_ID], [Admin_Password], [Admin_FName], [Admin_LName], [Admin_Email] FROM [Admin]" UpdateCommand="UPDATE [Admin] SET [Admin_Password] = @Admin_Password, [Admin_FName] = @Admin_FName, [Admin_LName] = @Admin_LName, [Admin_Email] = @Admin_Email WHERE [Admin_ID] = @Admin_ID">
        <DeleteParameters>
            <asp:Parameter Name="Admin_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Admin_Password" Type="String" />
            <asp:Parameter Name="Admin_FName" Type="String" />
            <asp:Parameter Name="Admin_LName" Type="String" />
            <asp:Parameter Name="Admin_Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Admin_Password" Type="String" />
            <asp:Parameter Name="Admin_FName" Type="String" />
            <asp:Parameter Name="Admin_LName" Type="String" />
            <asp:Parameter Name="Admin_Email" Type="String" />
            <asp:Parameter Name="Admin_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />

</div>
</asp:Content>
