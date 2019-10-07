<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="Student_login.aspx.cs" Inherits="Student_Student_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .div{height:auto;
             width:525px;
        }
        
        table
        {
            position:relative;
            left:300px;
            padding:20px;
            background-color:aqua;
            border:1px dotted purple;
        }

    </style>
       
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative;left:333px; top: 60px;">
    <div class="div">
        
        <table style="width:100%">
            <tr><td style="text-align:center" colspan="3"><h2>Student Login</h2></td></tr>
            <tr>
                <td>
                    <asp:Label ID="us" runat="server" Text="User Name"></asp:Label>
                </td>
                <td style="text-align:center">
                    :
                </td>
                <td>
                    <asp:TextBox ID="usernamelogin" runat="server"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td>
                    <asp:Label ID="pas" runat="server" Text="Password"></asp:Label>
                </td>
                <td style="text-align:center">
                    :
                </td>
                <td>
                    <asp:TextBox ID="passwordlogin" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td colspan="3" style="text-align:center">
                    <asp:Button ID="Button1" runat="server"  Text="Login" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="labellogin" runat="server" Text=""></asp:Label>
                </td>
                </tr>

        </table>
           
       </div><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <div  style="position:relative;left:450px;top:-50px"><asp:Label ID="Label1" runat="server" Text="Not a User"></asp:Label>&nbsp? &nbsp<a href="Signup.aspx">Sign Up</a>
        <br />
   </div>
    </div>

</asp:Content>

