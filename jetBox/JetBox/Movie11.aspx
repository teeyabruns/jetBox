<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="Movie11.aspx.cs" Inherits="JetBox.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 190px;
            height: 279px;
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
        <img src="https://image.tmdb.org/t/p/w396/waP4aEfXFlIUWoImHRnbOOOew4m.jpg" alt="Movie 1" id="movie1" class="auto-style1"/>
    </div>
    <br />
    <p>Movie Description</p>
    <div id="Description">
        <p>Through a series of misunderstandings, Alvin, Simon and Theodore come to believe that Dave is going to propose to his new girlfriend in New York City - and dump them. They have three days to get to him and stop the proposal.</p>
    </div>
    <br />
    <p>Movie Rating</p>
    <div id="Rating">
    <p> G </p>
    </div>
    <br />
</asp:Content>
