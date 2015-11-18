<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="AdminMain.aspx.cs" Inherits="JetBox.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="BackButton" runat="server" Text="Back" Width="94px" OnClick="BackButton_Click" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IPProjectConnectionString %>" SelectCommand="SELECT [User_ID], [User_FName], [User_LName], [User_Address], [User_City], [User_State], [User_Zip], [User_Email], [User_Password], [User_PaymentInfo] FROM [User]" DeleteCommand="DELETE FROM [User] WHERE [User_ID] = @User_ID" InsertCommand="INSERT INTO [User] ([User_FName], [User_LName], [User_Address], [User_City], [User_State], [User_Zip], [User_Email], [User_Password], [User_PaymentInfo]) VALUES (@User_FName, @User_LName, @User_Address, @User_City, @User_State, @User_Zip, @User_Email, @User_Password, @User_PaymentInfo)" UpdateCommand="UPDATE [User] SET [User_FName] = @User_FName, [User_LName] = @User_LName, [User_Address] = @User_Address, [User_City] = @User_City, [User_State] = @User_State, [User_Zip] = @User_Zip, [User_Email] = @User_Email, [User_Password] = @User_Password, [User_PaymentInfo] = @User_PaymentInfo WHERE [User_ID] = @User_ID">
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IPProjectConnectionString2 %>" SelectCommand="SELECT [Movie_ID], [Movie_Title], [Movie_Genre], [Movie_Rating], [Movie_Description], [Movie_UserRating], [Movie_Quantity] FROM [Movie]"></asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<br />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Button ID="InventoryButton" runat="server" Text="Manage Inventory" OnClick="InventoryButton_Click" />
    <br />
<br />
<br />
<br />
    <asp:Button ID="UserButton" runat="server" Text="View Users" OnClick="UserButton_Click" />
<br />
<br />
<br />
<asp:GridView ID="GridView1" runat="server">
</asp:GridView>
    <br />
<br />
<br />
</asp:Content>
