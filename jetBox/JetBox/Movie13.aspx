<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="Movie13.aspx.cs" Inherits="JetBox.WebForm23" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 229px;
            height: 317px;
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
        <img src="https://image.tmdb.org/t/p/w396/zVmWh0Zfg4UhbvdGI8LQrn1lQZJ.jpg" alt="Movie 1" id="movie1" class="auto-style1"/>
    </div>
    <br />
    <p>Movie Description</p>
    <div id="Description">
        <p>In the winter of 1820, the New England whaling ship Essex was assaulted by something no one could believe: a whale of mammoth size and will, and an almost human sense of vengeance. The real-life maritime disaster would inspire Herman Melville’s Moby-Dick.  But that told only half the story.  “Heart of the Sea” reveals the encounter’s harrowing aftermath, as the ship’s surviving crew is pushed to their limits and forced to do the unthinkable to stay alive.  Braving storms, starvation, panic and despair, the men will call into question their deepest beliefs, from the value of their lives to the morality of their trade, as their captain searches for direction on the open sea and his first mate still seeks to bring the great whale down.</p>
    </div>
    <br />
    <p>Movie Rating</p>
    <div id="Rating">
    <p> R </p>
    </div>
    <br />
</asp:Content>
