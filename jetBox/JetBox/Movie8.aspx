<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="Movie8.aspx.cs" Inherits="JetBox.WebForm11" %>
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
        <img src="https://image.tmdb.org/t/p/w185/z2sJd1OvAGZLxgjBdSnQoLCfn3M.jpg" alt="Movie 8" id="movie8"/>"
    </div>
    <br />
    <p>Movie Description</p>
    <div id="Description">
        <p>Ethan and team take on their most impossible mission yet, eradicating the Syndicate - an International rogue organization as highly skilled as they are, committed to destroying the IMF.</p>
    </div>
    <br />
    <p>Movie Rating</p>
    <div id="Rating">
    <p> R </p>
    </div>
    <br />


</asp:Content>
