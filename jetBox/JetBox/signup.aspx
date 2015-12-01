<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="JetBox.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link type ="text/css" rel="stylesheet" href="signup.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <p>&nbsp;</p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    </asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="MainContentArea" runat="server">
        <div id ="DisplaySignupDiv">
            <div id ="SignupDiv">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JetBoxConnectionString8 %>" SelectCommand="SELECT [User_ID], [User_FName], [User_LName], [User_Address], [User_City], [User_State], [User_Zip], [User_Email], [User_Password] FROM [User]"></asp:SqlDataSource>
            </div>
        </div>
</asp:Content>
