<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JetBox.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link type ="text/css" rel="stylesheet" href="Login.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p><a href="home.aspx">Home</a></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p><a href="MovieList.aspx">Movies List</a></p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <p><a href="Login.aspx">Login</a></p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <p>Search</p>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="MainContentArea" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IPProjectConnectionString %>" SelectCommand="SELECT [User_ID], [User_FName], [User_LName], [User_Address], [User_City], [User_State], [User_Zip], [User_Email], [User_Password], [User_PaymentInfo] FROM [User]"></asp:SqlDataSource>
        <br />
        <br />
        <div id="DisplayLoginDiv">
        
        <div id="LoginDiv">
            <p style="text-align: center">
                Login</p>
            <p>
                User Name:</p>
            <asp:TextBox ID="txtUserID" runat="server" TextMode="SingleLine"></asp:TextBox>
            <asp:Label ID="LabelIDWarning" runat="server" Text="*Required" Visible="False"></asp:Label>
            <p>
                Password:</p>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Label ID="LabelPasswordWarning" runat="server" Text="*Required" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Button ID="ButtonSignin" runat="server" OnClick="ButtonSignin_Click" Text="Submit" />
        </div>
        </div>
        <div>
        </div>
    
    </div>
</asp:Content>
