<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="Admin2paget.aspx.cs" Inherits="Admin_Admin2paget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <tr>
        <td>
            <asp:Button ID="authenticatest" runat="server" Text="Authenticate Students" OnClick="authenticatest_Click" />
        </td>
        <td>
            <asp:Button ID="marksheet" runat="server" Text="Generate Marksheet" OnClick="marksheet_Click" />
        </td>
    </tr>
</table>

   
</asp:Content>

