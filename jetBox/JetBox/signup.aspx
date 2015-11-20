<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="JetBox.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link type ="text/css" rel="stylesheet" href="signup.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <a href ="home.aspx">Home</a></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p><a href ="MovieList.aspx">
        Movies</a></p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <p><a href="Login.aspx">
        Sign In</a></p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <p><a href="ComingSoon.aspx">
        Coming Soon</a></p>
</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="MainContentArea" runat="server">
        <div id ="DisplaySignupDiv" style="padding: 50px 0 0 0">
        <div id ="SignupDiv" style="margin: 0 0 0 350px; padding: 10px 10px 10px 10px">
            <p style="text-align: center; margin-top: 50px">Open an account!</p>
                <p>Email:</p>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                <asp:Label ID="LabelEmailWarning" runat="server" Text="*Required" Visible="False"></asp:Label>
                <br /><br />
                <asp:Button ID="ButtonSignin" runat="server" Text="Submit" OnClick="ButtonSignin_Click" />
                <br />
                <p><a href="\Login.aspx">Already have an account?</a></p>
                <br />
                <br />
                <p><a href="\AdminLogIn.aspx">Admin Log In</a></p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JetBoxConnectionString2 %>" SelectCommand="SELECT [User_ID], [User_FName], [User_LName], [User_Address], [User_City], [User_State], [User_Zip], [User_Email], [User_Password], [User_PaymentInfo] FROM [User]"></asp:SqlDataSource>
        </div>
        </div>
</asp:Content>
