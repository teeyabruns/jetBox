<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="JetBox.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type ="text/css" rel="stylesheet" href="home.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p><a href="home.aspx">Home</a></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <p><a href="Login.aspx">Sign Out</a></p>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="MainContentArea" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Label ID="movie1lbl" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="rmv1btn" runat="server" Text="Remove" />
    <br />
    <br />
    <asp:Label ID="movie2lbl" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="rmv2btn" runat="server" Text="Remove" />
    <br />
    <br />
    <asp:Label ID="movie3lbl" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="rmv3btn" runat="server" Text="Remove" />
    <br />
    <br />
    <asp:Button ID="rentbtn" runat="server" Text="Rent" OnClick="rentbtn_Click" />
    <br />
</asp:Content>
