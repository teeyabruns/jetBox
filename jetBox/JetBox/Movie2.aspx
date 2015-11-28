<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="Movie2.aspx.cs" Inherits="JetBox.WebForm11" %>
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
        <img src="https://image.tmdb.org/t/p/w185/5aGhaIHYuQbqlHWvWYqMCnj40y2.jpg" alt="Movie 1" id="movie1"/>
    </div>
    <br />
    <p>Movie Description</p>
    <div id="Description">
        <p>During a manned mission to Mars, Astronaut Mark Watney is presumed dead after a fierce storm and left behind by his crew. But Watney has survived and finds himself stranded and alone on the hostile planet. With only meager supplies, he must draw upon his ingenuity, wit and spirit to subsist and find a way to signal to Earth that he is alive.</p>
    </div>
    <br />
    <p>Movie Rating</p>
    <div id="Rating">
    <p> PG - 13 </p>
    </div>
    <br />


</asp:Content>
