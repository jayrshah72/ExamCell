<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="authenticateStudent.aspx.cs" Inherits="authenticateStudent" %>

<script runat="server">

  
</script>


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

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="username" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="firstname" HeaderText="Firstname" SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="Lastname" SortExpression="lastname" />
            <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
            <asp:BoundField DataField="enrollno" HeaderText="enrollno" SortExpression="enrollno" />
            <asp:BoundField DataField="branch" HeaderText="branch" SortExpression="branch" />
            <asp:BoundField DataField="semester" HeaderText="semester" SortExpression="semester" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
            <asp:BoundField DataField="mobileno" HeaderText="mobileno" SortExpression="mobileno" />
           <asp:TemplateField HeaderText="Allow">
                <ItemTemplate>
                    <asp:CheckBox ID="allowed" runat="server"/>

                </ItemTemplate>

            </asp:TemplateField>


        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />

        

    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EXAM_CELLConnectionString %>" SelectCommand="SELECT [firstname], [lastname], [emailid], [enrollno], [branch], [semester], [gender], [username], [mobileno] FROM [signupT]"></asp:SqlDataSource>
    
    <br />
    <div style="text-align:center">
        <asp:Button ID="Button1" runat="server" Text="Allow Selected Users" OnClick="Button1_Click" />

    </div>
</asp:Content>

