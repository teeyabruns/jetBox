<%@ Page Title="Home" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="JetBox.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type ="text/css" rel="stylesheet" href="home.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p><a href="home.aspx">Home</a></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
    <a href="UserProfile.aspx">My Profile</a></p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <p>
    <a href="Login.aspx">Sign Out</a></p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <p><a href="Checkout.aspx">Checkout</a></p>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="MainContentArea" runat="server">
    <div id="current">
    <p style="margin-left: 300px; font-family: Arial; color: black; font-size:40px;">CURRENT MOVIES</p>
<link rel="stylesheet" type="text/css" href="slide_window.css" />

<div id="wowslider-container1">
<div class="ws_images"><ul>
<li><a href="Movie1.aspx" ><img src="https://image.tmdb.org/t/p/w185/1n9D32o30XOHMdMWuIT4AaA5ruI.jpg" alt="Movie 1" id="movie1"/></a></li>
<li><a href="Movie2.aspx" ><img src="https://image.tmdb.org/t/p/w185/5aGhaIHYuQbqlHWvWYqMCnj40y2.jpg" alt="Movie 2" id="movie2"/></a></li>
<li><a href="Movie3.aspx" ><img src="https://image.tmdb.org/t/p/w185/kqjL17yufvn9OVLyXYpvtyrFfak.jpg" alt="Moive 3" id="movie3"/></a></li>
<li><a href="Movie4.aspx" ><img src="https://image.tmdb.org/t/p/w185/nBNZadXqJSdt05SHLqgT0HuC5Gm.jpg" alt="Movie 4" id="movie4"/></a></li>
<li><a href="Movie5.aspx" ><img src="https://image.tmdb.org/t/p/w185/e5jbaEiWYHtstuHPHl3lGPoRs4c.jpg" alt="Movie 5" id="movie5"/></a></li>
<li><a href="Movie6.aspx" ><img src="https://image.tmdb.org/t/p/w185/9gm3lL8JMTTmc3W4BmNMCuRLdL8.jpg" alt="Movie 6" id="moive6"/></a></li>
<li><a href="Movie7.aspx" ><img src="https://image.tmdb.org/t/p/w185/69Cz9VNQZy39fUE2g0Ggth6SBTM.jpg" alt="Movie 7" id="movie7"/></a></li>
<li><a href="Movie8.aspx" ><img src="https://image.tmdb.org/t/p/w185/z2sJd1OvAGZLxgjBdSnQoLCfn3M.jpg" alt="Movie 8" id="movie8"/></a></li>
</ul></div>

</div>
<script type="text/javascript" src="slide_engine.js"></script>
<script type="text/javascript" src="http://wowslider.com/sliders/demo-3/engine1/script.js"></script>
        <!-- End WOWSlider.com BODY section -->
<br />
</div>
<div id="coming">
<p style="margin-left: 300px; font-family: Arial; color: black; font-size:40px;">COMING SOON!</p>
<div id="wowslider-container1">
<div class="ws_images"><ul>
<li><a href="Movie9.aspx"  ><img src="https://image.tmdb.org/t/p/w396/fYzpM9GmpBlIC893fNjoWCwE24H.jpg" alt="Movie 9" id="movie9"/></a></li>
<li><a href="Movie10.aspx" ><img src="https://image.tmdb.org/t/p/w396/3CMBgEte4pEapn2deugsfz2hjAL.jpg" alt="Movie 10" id="movie10"/></a></li>
<li><a href="Movie11.aspx" ><img src="https://image.tmdb.org/t/p/w396/waP4aEfXFlIUWoImHRnbOOOew4m.jpg" alt="Moive 11" id="movie11"/></a></li>
<li><a href="Movie12.aspx" ><img src="https://image.tmdb.org/t/p/w396/fMrnNeTMHoCcW2zPmBI53l70zSK.jpg" alt="Movie 12" id="movie12"/></a></li>
<li><a href="Movie13.aspx" ><img src="https://image.tmdb.org/t/p/w396/zVmWh0Zfg4UhbvdGI8LQrn1lQZJ.jpg" alt="Movie 13" id="movie13"/></a></li>
<li><a href="Movie14.aspx" ><img src="https://image.tmdb.org/t/p/w396/D6e8RJf2qUstnfkTslTXNTUAlT.jpg"  alt="Movie 14" id="moive14"/></a></li>
<li><a href="Movie15.aspx" ><img src="https://image.tmdb.org/t/p/w396/gaDiQbtaopReIiJIfoVmUAdpcJJ.jpg" alt="Movie 15" id="movie15"/></a></li>
</ul></div>

</div>
</div>
    <br />
</asp:Content>
