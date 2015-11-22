<%@ Page Title="Admin Inventory" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="AdminInventory.aspx.cs" Inherits="JetBox.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type ="text/css" rel="stylesheet" href="home.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <a href="AdminMain.aspx">Back</a>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="MainContentArea" runat="server">
    <div id="GridHolder" style="background-color: #c9f1fd;
    margin: 2% 0% 2% 0%; 
    padding: 2% 2% 2% 2%; 
    border-radius: 15px;"> 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Movie_ID" DataSourceID="SqlDataSource1" ShowFooter="True" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-right: 0px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField HeaderText="Movie_ID" InsertVisible="False" SortExpression="Movie_ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Movie_ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Movie_ID") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ValidationGroup="INSERT" OnClick="lbInsert_Click" ID="lbInsert" runat="server">Insert</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Movie_Title" SortExpression="Movie_Title">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Movie_Title") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditTitle" runat="server" ErrorMessage="Title is a required field!"
                            ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Movie_Title") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertTitle" runat="server" ErrorMessage="Title is a required field!"
                            ControlToValidate="txtTitle" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Movie_Genre" SortExpression="Movie_Genre">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddMovieGenre" runat="server" SelectedValue='<%# Bind("Movie_Genre") %>'>
                            <asp:ListItem>Select Genre</asp:ListItem>
                            <asp:ListItem>Action</asp:ListItem>
                            <asp:ListItem>Adventure</asp:ListItem>
                            <asp:ListItem>Comedy</asp:ListItem>
                            <asp:ListItem>Drama</asp:ListItem>
                            <asp:ListItem>Horror</asp:ListItem>
                            <asp:ListItem>Science Fiction</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvEditGenre" runat="server" ErrorMessage="Genre is a required field!"
                            ControlToValidate="ddMovieGenre" Text="*" ForeColor="Red" InitialValue="Select Genre">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Movie_Genre") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="ddMovieGenre2" runat="server">
                            <asp:ListItem>Select Genre</asp:ListItem>
                            <asp:ListItem>Action</asp:ListItem>
                            <asp:ListItem>Adventure</asp:ListItem>
                            <asp:ListItem>Comedy</asp:ListItem>
                            <asp:ListItem>Drama</asp:ListItem>
                            <asp:ListItem>Horror</asp:ListItem>
                            <asp:ListItem>Science Fiction</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertGenre" runat="server" ErrorMessage="Genre is a required field!"
                            ControlToValidate="ddMovieGenre2" Text="*" ForeColor="Red" InitialValue="Select Genre">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Movie_Rating" SortExpression="Movie_Rating">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Movie_Rating") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditRating" runat="server" ErrorMessage="Movie rating is a required field!"
                            ControlToValidate="TextBox6" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Movie_Rating") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtRating" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertRating" runat="server" ErrorMessage="Movie rating is a required field!"
                            ControlToValidate="txtRating" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Movie_Description" SortExpression="Movie_Description">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Movie_Description") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditDescription" runat="server" ErrorMessage="Description is a required field!"
                            ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Movie_Description") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertDescription" runat="server" ErrorMessage="Description is a required field!"
                            ControlToValidate="txtDescription" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Movie_UserRating" SortExpression="Movie_UserRating">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddMovieUserRating" runat="server" SelectedValue='<%# Bind("Movie_UserRating") %>'>
                            <asp:ListItem>Select Rating</asp:ListItem>
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvEditUserRating" runat="server" ErrorMessage="Rating is a required field!"
                            ControlToValidate="ddMovieUserRating" Text="*" ForeColor="Red" InitialValue="Select Rating">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Movie_UserRating") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                    <asp:DropDownList ID="ddMovieUserRating2" runat="server">
                            <asp:ListItem>Select Rating</asp:ListItem>
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertUserRating" runat="server" ErrorMessage="Rating is a required field!"
                            ControlToValidate="ddMovieUserRating2" Text="*" ForeColor="Red" InitialValue="Select Rating">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Movie_Quantity" SortExpression="Movie_Quantity">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Movie_Quantity") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditQuantity" runat="server" ErrorMessage="Quantity is a required field!"
                            ControlToValidate="TextBox5" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Movie_Quantity") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertQuantity" runat="server" ErrorMessage="Quantity is a required field!"
                            ControlToValidate="txtQuantity" Text="*" ForeColor="Red">
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
        <asp:ValidationSummary ValidationGroup="INSERT" ID="insertValidationSummary" ForeColor="Red" runat="server" />
        <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IPProjectConnectionString %>" DeleteCommand="DELETE FROM [Movie] WHERE [Movie_ID] = @Movie_ID" InsertCommand="INSERT INTO [Movie] ([Movie_Title], [Movie_Genre], [Movie_Rating], [Movie_Description], [Movie_UserRating], [Movie_Quantity]) VALUES (@Movie_Title, @Movie_Genre, @Movie_Rating, @Movie_Description, @Movie_UserRating, @Movie_Quantity)" SelectCommand="SELECT [Movie_ID], [Movie_Title], [Movie_Genre], [Movie_Rating], [Movie_Description], [Movie_UserRating], [Movie_Quantity] FROM [Movie]" UpdateCommand="UPDATE [Movie] SET [Movie_Title] = @Movie_Title, [Movie_Genre] = @Movie_Genre, [Movie_Rating] = @Movie_Rating, [Movie_Description] = @Movie_Description, [Movie_UserRating] = @Movie_UserRating, [Movie_Quantity] = @Movie_Quantity WHERE [Movie_ID] = @Movie_ID">
            <DeleteParameters>
                <asp:Parameter Name="Movie_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Movie_Title" Type="String" />
                <asp:Parameter Name="Movie_Genre" Type="String" />
                <asp:Parameter Name="Movie_Rating" Type="String" />
                <asp:Parameter Name="Movie_Description" Type="String" />
                <asp:Parameter Name="Movie_UserRating" Type="Int32" />
                <asp:Parameter Name="Movie_Quantity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Movie_Title" Type="String" />
                <asp:Parameter Name="Movie_Genre" Type="String" />
                <asp:Parameter Name="Movie_Rating" Type="String" />
                <asp:Parameter Name="Movie_Description" Type="String" />
                <asp:Parameter Name="Movie_UserRating" Type="Int32" />
                <asp:Parameter Name="Movie_Quantity" Type="Int32" />
                <asp:Parameter Name="Movie_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>    
        </asp:Content>

