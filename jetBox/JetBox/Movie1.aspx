<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="Movie1.aspx.cs" Inherits="JetBox.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p><a href="home.aspx">Home</a></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p><a href="MovieList.aspx">Movie</a></p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <p><a href="Login.aspx">Sign Out</a></p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <p><a href ="ComingSoon.aspx">Coming Soon</a></p>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="MainContentArea" runat="server">
    <script type="text/javascript" src="JavaScript.js">
    </script>
    <div id="Image">
        <img src="https://image.tmdb.org/t/p/w185/1n9D32o30XOHMdMWuIT4AaA5ruI.jpg" alt="Movie 1" id="movie1"/>
    </div>
    <br />
    <p>Movie Description</p>
    <div id="Description">
        <p>A cryptic message from Bond’s past sends him on a trail to uncover a sinister organization.</p>
        <p>While M battles political forces to keep the secret service alive, Bond peels back the layers</p>
        <p>of deceit to reveal the terrible truth behind SPECTRE.</p>
    </div>
    <br />
    <p>Movie Rating</p>
    <div id="Rating">
    <p> R </p>
    </div>
    <br />


</asp:Content>
