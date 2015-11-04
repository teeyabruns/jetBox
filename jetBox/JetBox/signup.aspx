<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="JetBox.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Home</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
    <p>
        Sign In</p>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="MainContentArea" runat="server">
        <link type ="text/css" rel="stylesheet" href="signup.css" />
        <div id ="DisplaySignupDiv">
        <div id ="SignupDiv">
            <p style="text-align: center">Open an account!</p>
                <p>User Name:</p>
                <asp:TextBox ID="txtUserID" runat="server" TextMode="SingleLine"></asp:TextBox>
                <asp:Label ID="LabelIDWarning" runat="server" Text="*Required" Visible="False"></asp:Label>
                <p>Email:</p>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                <asp:Label ID="LabelEmailWarning" runat="server" Text="*Rquired" Visible="False"></asp:Label>
                <br /><br />
                <asp:Button ID="ButtonSignin" runat="server" Text="Submit" OnClick="ButtonSignin_Click" />
                <br />
                <p><a href="\Login.aspx">Already have an account?</a></p>
                <br />
                <br />
                <p><a href="\AdminLogIn.aspx">Admin Log In</a></p>
        </div>
        </div>
</asp:Content>
