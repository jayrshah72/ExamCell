<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Student_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 92px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position:relative; top: 0px; left: 0px;" class="div">
    
       <fieldset >
           <legend>Sign Up</legend>
        
       <table style="width:100%">
           <tr>
               <td>
                   <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="Label4" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style1">
                   <asp:TextBox ID="fnametxt" runat="server"></asp:TextBox>
               </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="fnametxt" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label5" runat="server" Text="Last Name"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="Label6" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style1">
                   <asp:TextBox ID="lnametxt" runat="server"></asp:TextBox>
               </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="lnametxt" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label7" runat="server" Text="Email Id"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="Label8" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style1">
                   <asp:TextBox ID="emailtxt" runat="server"></asp:TextBox>
               </td>
                <td class="auto-style2"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="emailtxt" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label9" runat="server" Text="Enrollment No."></asp:Label>
               </td>
               <td>
                   <asp:Label ID="Label10" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style1">
                   <asp:TextBox ID="ernotxt" runat="server"></asp:TextBox>
               </td>
                <td class="auto-style2"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="ernotxt" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label1" runat="server" Text="Mobile No."></asp:Label>
               </td>
               <td>
                   <asp:Label ID="Label2" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style1">
                   <asp:TextBox ID="mobileno" runat="server"></asp:TextBox>
               </td>
                <td class="auto-style2"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="mobileno" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label11" runat="server" Text="Branch"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="Label12" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style1">
                   <asp:DropDownList ID="branchdropdown" runat="server">
                       <asp:ListItem>Computer</asp:ListItem>
                       <asp:ListItem>Civil</asp:ListItem>
                       <asp:ListItem>Mechanical</asp:ListItem>
                       <asp:ListItem>Electrical</asp:ListItem>
                   </asp:DropDownList>
               </td>
                <td class="auto-style2"></td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label13" runat="server" Text="Semester"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="Label14" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style1">
                   <asp:DropDownList ID="semesterdropdown" runat="server">
                       <asp:ListItem>1</asp:ListItem>
                       <asp:ListItem>2</asp:ListItem>
                       <asp:ListItem>3</asp:ListItem>
                       <asp:ListItem>4</asp:ListItem>
                   </asp:DropDownList>
               </td>
                <td class="auto-style2"></td>
           </tr>
            <tr>
               <td>
                   <asp:Label ID="Label15" runat="server" Text="Gender"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="Label16" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style1">
                   <asp:RadioButtonList ID="gendersignup" RepeatDirection="Horizontal" runat="server">
                       <asp:ListItem>Male</asp:ListItem>
                       <asp:ListItem>Female</asp:ListItem>
                   </asp:RadioButtonList>
               </td>
                 <td class="auto-style2"><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="gendersignup" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label19" runat="server" Text="User Name"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="Label20" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style1">
                   <asp:TextBox ID="usernametxt" runat="server"></asp:TextBox>
               </td>
                <td class="auto-style2"><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="usernametxt" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label21" runat="server" Text="Password"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="Label22" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style1">
                   <asp:TextBox ID="pswdtxt" TextMode="Password"  runat="server"></asp:TextBox>
               </td>
                <td class="auto-style2"><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="pswdtxt" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label23" runat="server" Text="Confirm Password"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="Label24" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style1">
                   <asp:TextBox ID="confirmpswdtxt" TextMode="Password"  runat="server"></asp:TextBox>
               </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" Display="Dynamic" runat="server" ErrorMessage="This field Cannot be empty" ControlToValidate="confirmpswdtxt" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pswdtxt" ControlToValidate="confirmpswdtxt" ErrorMessage="password and confirm password should be same" ForeColor="#FF3300"></asp:CompareValidator>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label25" runat="server" Text="Upload User Image"></asp:Label>
               </td>
               <td>
                   <asp:Label ID="Label26" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style1" style="margin-left: 40px">
                   <asp:FileUpload accept=".png,.jpg" ID="userimage" runat="server" Width="179px" />
               </td>
                <td class="auto-style2"><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="This field cannot be empty" ControlToValidate="userimage" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
           </tr>
           <tr>
               <td colspan="3" style="text-align:center;">
                   <asp:Button ID="Button2"   runat="server" Text="Sign Up" OnClick="Button2_Click" />
                   <asp:Button ID="Button3" OnClientClick="this.form.reset()" runat="server" Text="Reset" />

               &nbsp;</td>

           </tr>
           <tr>
               <td colspan="3">
                   <asp:Label ID="labelstatus" runat="server" Text=""></asp:Label>

               </td>
               </tr>
       </table>
           </fieldset>
           

   </div>
</asp:Content>

