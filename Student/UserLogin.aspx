<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="Student_UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .logoutbtn
        {
            font-size:larger;
            position:relative;
            background-color:red;
            border:1px dotted black;
            border-radius:90px;
            left:800px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    :<asp:Button  ID="Button1" CssClass="logoutbtn" runat="server" Text="Logout" OnClick="Button1_Click" />
    <h1>LOGIN PAGE</h1>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="Generate Hall Ticket" OnClick="Button2_Click" />

</asp:Content>

