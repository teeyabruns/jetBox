<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="Movie10.aspx.cs" Inherits="JetBox.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 182px;
            height: 251px;
        }
    </style>
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
        <div id="Image">
        <img src="https://image.tmdb.org/t/p/w396/3CMBgEte4pEapn2deugsfz2hjAL.jpg" alt="Movie 1" id="movie1" class="auto-style1"/>
    </div>
    <br />
    <p>Movie Description</p>
    <div id="Description">
        <p>Murray worries no one will show up to his TV show due to a massive snowstorm in New York City. Through luck and perseverance, guests arrive at Gotham’s Carlyle Hotel to help him — dancing and singing in holiday spirit.</p>
    </div>
    <br />
    <p>Movie Rating</p>
    <div id="Rating">
    <p> PG </p>
    </div>
    <br />
</asp:Content>
