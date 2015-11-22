<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="JetBox.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type ="text/css" rel="stylesheet" href="home.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <a href="home.aspx">Home</a></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
    <a href="MovieList.aspx">Movies List</a>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <p>
    <a href="Login.aspx">Sign In</a>
    </p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <p>
    <a href="MovieSearch.aspx">Search</a>
    </p>
</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="MainContentArea" runat="server">
    
<div id="adminLogin" style=" background-color: #c9f1fd;
    margin: 2% 0% 2% 0%; 
    padding: 2% 2% 2% 2%; 
    border-radius: 15px;">
    Email:<br />
    <asp:TextBox ID="boxUsername" runat="server"></asp:TextBox>
    <asp:Label ID="usernameLbl" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label"></asp:Label>
    <br />
    Password:<br />
    <asp:TextBox ID="boxPassword" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JetBoxConnectionString4 %>" SelectCommand="SELECT [Admin_ID], [Admin_Password], [Admin_FName], [Admin_LName], [Admin_Email] FROM [Admin]"></asp:SqlDataSource>
    
</div>

</asp:Content>
