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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IPProjectConnectionString %>" SelectCommand="SELECT [MOVIE_ID], [MOVIE_TITLE], [MOVIE_GENRE], [MOVIE_DESCRIPTION], [MOVIE_RATING], [MOVIE_QUANTITY] FROM [Movie]"></asp:SqlDataSource>
<br />
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
