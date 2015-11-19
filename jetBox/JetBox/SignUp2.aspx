<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="SignUp2.aspx.cs" Inherits="JetBox.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="MainContentArea" runat="server">
     <p>Please fill out the fields below.</p>
    <div id ="fields" style ="background-color: gray">
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InternetProgrammingTestConnectionString2 %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
        
        User Name:<br />
        <asp:TextBox ID="txtuName" runat="server" ReadOnly="True"></asp:TextBox>
        <br />

        Email:<br />
        <asp:TextBox ID="txtuEmail" runat="server" ReadOnly="True"></asp:TextBox>
        <br />

        First Name:<br />
        <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
        <asp:Label ID="LabelFirst" runat="server" Text="*Required"></asp:Label>
        <br />

        Last Name:<br />
        <asp:TextBox ID="txtLast" runat="server" ></asp:TextBox>
        <asp:Label ID="LabelLast" runat="server" Text="*Required"></asp:Label>
        <br />

        Country:<br />
        <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
        <asp:Label ID="LabelCountry" runat="server" Text="*Required"></asp:Label>
        <br />

        Password:<br />
        <asp:TextBox ID="txtPassword1" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Label ID="LabelPassword1" runat="server" Text="*Required"></asp:Label>
        <br />

        Re-type Password:<br />
        <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Label ID="LabelPassword2" runat="server" Text="*Required"></asp:Label>
        <br />
        
        <br />
        <asp:Button ID="ButtonSubmit" runat="server" OnClick="ButtonSubmit_Click" Text="Submit" />
        <br />
        </div>
</asp:Content>
