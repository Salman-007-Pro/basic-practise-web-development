<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Change Password.aspx.cs" Inherits="admin_Change_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style8
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style8">
    <tr>
        <td class="tblhead" colspan="2">
            Change Password</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Enter New Password:</td>
        <td>
            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Confirm Password : </td>
        <td>
            <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button10" runat="server" CssClass="btn" 
                onclick="Button10_Click" Text="Save" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

