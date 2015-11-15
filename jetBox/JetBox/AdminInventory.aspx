<%@ Page Title="Admin Inventory" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="AdminInventory.aspx.cs" Inherits="JetBox.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="MainContentArea" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MOVIE_ID" DataSourceID="SqlDataSource1" ShowFooter="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField HeaderText="MOVIE_ID" InsertVisible="False" SortExpression="MOVIE_ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MOVIE_ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("MOVIE_ID") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ValidationGroup="INSERT" OnClick="lbInsert_Click" ID="lbInsert" runat="server">Insert</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MOVIE_TITLE" SortExpression="MOVIE_TITLE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("MOVIE_TITLE") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditTitle" runat="server" ErrorMessage="Title is a required field!"
                            ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("MOVIE_TITLE") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertTitle" runat="server" ErrorMessage="Title is a required field!"
                            ControlToValidate="txtTitle" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MOVIE_GENRE" SortExpression="MOVIE_GENRE">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddMovieGenre" runat="server" SelectedValue='<%# Bind("MOVIE_GENRE") %>'>
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
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("MOVIE_GENRE") %>'></asp:Label>
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
                <asp:TemplateField HeaderText="MOVIE_DESCRIPTION" SortExpression="MOVIE_DESCRIPTION">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MOVIE_DESCRIPTION") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditDescription" runat="server" ErrorMessage="Description is a required field!"
                            ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("MOVIE_DESCRIPTION") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertDescription" runat="server" ErrorMessage="Description is a required field!"
                            ControlToValidate="txtDescription" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MOVIE_RATING" SortExpression="MOVIE_RATING">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddMovieRating" runat="server" SelectedValue='<%# Bind("MOVIE_RATING") %>'>
                            <asp:ListItem>Select Rating</asp:ListItem>
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvEditRating" runat="server" ErrorMessage="Rating is a required field!"
                            ControlToValidate="ddMovieRating" Text="*" ForeColor="Red" InitialValue="Select Rating">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("MOVIE_RATING") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                    <asp:DropDownList ID="ddMovieRating2" runat="server">
                            <asp:ListItem>Select Rating</asp:ListItem>
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertRating" runat="server" ErrorMessage="Rating is a required field!"
                            ControlToValidate="ddMovieRating2" Text="*" ForeColor="Red" InitialValue="Select Rating">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MOVIE_QUANTITY" SortExpression="MOVIE_QUANTITY">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("MOVIE_QUANTITY") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditQuantity" runat="server" ErrorMessage="Quantity is a required field!"
                            ControlToValidate="TextBox5" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("MOVIE_QUANTITY") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertQuantity" runat="server" ErrorMessage="Quantity is a required field!"
                            ControlToValidate="txtQuantity" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:ValidationSummary ValidationGroup="INSERT" ID="insertValidationSummary" ForeColor="Red" runat="server" />
        <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IPProjectConnectionString %>" DeleteCommand="DELETE FROM [Movie] WHERE [MOVIE_ID] = @MOVIE_ID" InsertCommand="INSERT INTO [Movie] ([MOVIE_TITLE], [MOVIE_GENRE], [MOVIE_DESCRIPTION], [MOVIE_RATING], [MOVIE_QUANTITY]) VALUES (@MOVIE_TITLE, @MOVIE_GENRE, @MOVIE_DESCRIPTION, @MOVIE_RATING, @MOVIE_QUANTITY)" SelectCommand="SELECT [MOVIE_ID], [MOVIE_TITLE], [MOVIE_GENRE], [MOVIE_DESCRIPTION], [MOVIE_RATING], [MOVIE_QUANTITY] FROM [Movie]" UpdateCommand="UPDATE [Movie] SET [MOVIE_TITLE] = @MOVIE_TITLE, [MOVIE_GENRE] = @MOVIE_GENRE, [MOVIE_DESCRIPTION] = @MOVIE_DESCRIPTION, [MOVIE_RATING] = @MOVIE_RATING, [MOVIE_QUANTITY] = @MOVIE_QUANTITY WHERE [MOVIE_ID] = @MOVIE_ID">
            <DeleteParameters>
                <asp:Parameter Name="MOVIE_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MOVIE_TITLE" Type="String" />
                <asp:Parameter Name="MOVIE_GENRE" Type="String" />
                <asp:Parameter Name="MOVIE_DESCRIPTION" Type="String" />
                <asp:Parameter Name="MOVIE_RATING" Type="String" />
                <asp:Parameter Name="MOVIE_QUANTITY" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MOVIE_TITLE" Type="String" />
                <asp:Parameter Name="MOVIE_GENRE" Type="String" />
                <asp:Parameter Name="MOVIE_DESCRIPTION" Type="String" />
                <asp:Parameter Name="MOVIE_RATING" Type="String" />
                <asp:Parameter Name="MOVIE_QUANTITY" Type="Int32" />
                <asp:Parameter Name="MOVIE_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</asp:Content>
