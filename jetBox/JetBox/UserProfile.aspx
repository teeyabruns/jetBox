<%@ Page Title="" Language="C#" MasterPageFile="~/JetBoxHome.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="JetBox.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 33px;
        }
        .auto-style2 {
            width: 157px;
        }
        .auto-style3 {
            height: 42px;
        }
        .auto-style4 {
            width: 772px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    
    <table style="width:100%;">
        <tr>
            <td class="auto-style3" colspan="3">
                <asp:TextBox ID="NameTxt" runat="server" OnTextChanged="TextBox1_TextChanged" ReadOnly="True" Width="772px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True">Your Movie List:</asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" Width="145px">Rate Movie:</asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server" Width="771px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Return Movie" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox3" runat="server" Width="771px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Return Movie" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox4" runat="server" Height="39px" Width="771px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Return Movie" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="Button5" runat="server" Text="View Your Movie History" />
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="Delete Account" Width="243px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <textarea id="TextArea1" class="auto-style4" name="S1" rows="2"></textarea></td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
    </p>
    <p>
    </p>
</asp:Content>
