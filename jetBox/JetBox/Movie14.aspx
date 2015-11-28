<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="Movie14.aspx.cs" Inherits="JetBox.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 212px;
            height: 293px;
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
        <img src="https://image.tmdb.org/t/p/w396/D6e8RJf2qUstnfkTslTXNTUAlT.jpg" alt="Movie 1" id="movie1" class="auto-style1"/>
    </div>
    <br />
    <p>Movie Description</p>
    <div id="Description">
        <p>Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.</p>
    </div>
    <br />
    <p>Movie Rating</p>
    <div id="Rating">
    <p> PG - 13 </p>
    </div>
    <br />
</asp:Content>
