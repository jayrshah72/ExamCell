<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Admin_Adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        table
        {
            position:relative;
            left:500px;
            padding:20px;
            background-color:aqua;
            border:1px dotted purple;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/>
    <br/>
    <br/>
    <br/>
    
        
    <table>
        <tr><td style="text-align:center" colspan="3"><h2>Admin Login</h2></td></tr>
        <tr>
            <td style="text-align:center"> 
            <asp:Label ID="adminname" runat="server" Text="UserName"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td>
                <asp:TextBox ID="admintext" runat="server" CausesValidation="True"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ControlToValidate="admintext" ID="RequiredFieldValidator1" runat="server" ErrorMessage="field cannot be empty"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td style="text-align:center"> 
            <asp:Label ID="labelpass" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                :
            </td>
            <td style="text-align:center">
                <asp:TextBox ID="adminpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
             <td>
                 <asp:RequiredFieldValidator ControlToValidate="adminpass" ID="RequiredFieldValidator2" runat="server" ErrorMessage="field cannot be empty"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align:center"> <asp:Button ID="passbtn" runat="server" Text="LOGIN" UseSubmitBehavior="true" OnClick="passbtn_Click" /> </td>
        </tr>
        <tr>
            <td colspan="3"> <asp:Label ID="Label1" runat="server" ></asp:Label> </td>
        </tr>
    </table>
       
</asp:Content>

