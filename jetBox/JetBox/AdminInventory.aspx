<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="AdminInventory.aspx.cs" Inherits="JetBox.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="MainContentArea" runat="server">
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </p>
    <p>
    </p>
</asp:Content>
