<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Student_Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <table>
        <tr>
            <td>
                &nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Enrollment No."></asp:Label></td>
        
            <td>
                <asp:TextBox ID="ertextbox" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" /></td>
        </tr>
    </table>
    <div id="divresult" runat="server" style="text-align:center"> 
        <table border="1" style="text-align:center">
            <tr><td style="text-align:left">NAME: </td><td colspan="2" style="text-align:left" class="auto-style1">
                <asp:Label ID="name" runat="server" Text=""></asp:Label></td></tr>
            <tr><td style="text-align:left">ENROLLMENT NO:  </td><td colspan="2" style="text-align:left" class="auto-style1">
                <asp:Label ID="erno" runat="server" Text=""></asp:Label></td></tr>
            <tr>
                <td>SUBJECT NAME</td>
                <td class="auto-style1">TOTAL MARKS</td>
                <td>OBTAINED MARKS</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="sub1" runat="server" Text=""></asp:Label></td>
                <td class="auto-style1">100</td>
                <td>
                    <asp:Label ID="mark1" runat="server" Text="Label"></asp:Label></td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="sub2" runat="server" Text=""></asp:Label></td>
                <td class="auto-style1">100</td>
                <td>
                    <asp:Label ID="mark2" runat="server" Text="Label"></asp:Label></td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="sub3" runat="server" Text=""></asp:Label></td>
                <td class="auto-style1">100</td>
                <td>
                    <asp:Label ID="mark3" runat="server" Text="Label"></asp:Label></td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="sub4" runat="server" Text=""></asp:Label></td>
                <td class="auto-style1">100</td>
                <td>
                    <asp:Label ID="mark4" runat="server" Text="Label"></asp:Label></td>
                
            </tr>
            <tr><td colspan="1">
                <asp:Label ID="total" runat="server" Text=""></asp:Label></td><td colspan="2">
                    <asp:Label ID="per" runat="server" Text="Label"></asp:Label></td></tr>
        <tr><td colspan="3"><asp:Label ID="result" runat="server" Text="Label"></asp:Label>
</td></tr>
        </table>
        
    </div>

</asp:Content>

