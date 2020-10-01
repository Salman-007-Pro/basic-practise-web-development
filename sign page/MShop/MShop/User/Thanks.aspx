<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="Thanks.aspx.cs" Inherits="User_Thanks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            font-size: xx-large;
        }
        .style14
        {
            font-weight: 700;
            font-size: x-large;
            color: #660066;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                <span class="style13">Thank You !!</span><br />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
            <asp:Button ID="Button2" runat="server" CssClass="btn" 
                Text="Continue Shopping" PostBackUrl="~/User/Default.aspx" />
            </td>
        </tr>
    </table>
</asp:Content>

