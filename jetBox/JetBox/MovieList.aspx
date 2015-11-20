<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="MovieList.aspx.cs" Inherits="JetBox.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 780px;
        }
        .auto-style2 {
            width: 780px;
            height: 40px;
        }
        .auto-style3 {
            height: 40px;
        }
        .auto-style4 {
            width: 780px;
            height: 42px;
        }
        .auto-style5 {
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p><a href="home.aspx">Home</a></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p><a href="Login.aspx">Sign Out</a></p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <p><a href="MovieList.aspx">Movies</a></p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <p><a href="ComingSoon.aspx">Coming Soon</a></p>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="MainContentArea" runat="server">
    
    
    <p>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server">Movie List:</asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True">Action</asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox2" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox9" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox2" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox10" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox3" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True">Adventure</asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox11" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox4" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox12" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox5" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox13" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox6" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True">Comedy</asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox14" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox7" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox15" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:CheckBox ID="CheckBox8" runat="server" />
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox16" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox9" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True">Drama</asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox17" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:CheckBox ID="CheckBox10" runat="server" />
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox18" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox11" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox19" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox12" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True">Horror</asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox20" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox13" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox21" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox14" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox22" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox15" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox8" runat="server" ReadOnly="True">Science Fiction</asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox23" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox16" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox24" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox17" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox25" runat="server" Width="771px"></asp:TextBox>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox18" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="MovieSelectTxt" runat="server" ReadOnly="True" Width="355px">Submit Your Movie Selection</asp:TextBox>
                    <asp:Button ID="SubmitMovie" runat="server" Text="Submit" />
                </td>
                <td>
                    <asp:Label ID="MaxMovieLabel" runat="server" Text="*Your maximum movie selection is 3"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </p>
    <p>
    </p>
</asp:Content>
