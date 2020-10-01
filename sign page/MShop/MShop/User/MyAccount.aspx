<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="User_MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 278px;
        }
    .style12
    {
        width: 477px;
    }
    .style13
    {
        width: 100%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Change Account</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style12">
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="Button3" runat="server" CssClass="btn" onclick="Button3_Click" 
                            Text="View Profile" />
                        <asp:Button ID="Button4" runat="server" CssClass="btn" onclick="Button4_Click" 
                            Text="Edit Profile" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <table class="style13">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Name :</td>
                                        <td>
                                            <asp:Label ID="lblname" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Surname :</td>
                                        <td>
                                            <asp:Label ID="lblsurnam" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Address :</td>
                                        <td>
                                            <asp:Label ID="lbladdrss" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            City :
                                        </td>
                                        <td>
                                            <asp:Label ID="lblcity" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Pincode :</td>
                                        <td>
                                            <asp:Label ID="lblpin" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Contact :</td>
                                        <td>
                                            <asp:Label ID="lblcont" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <table align="center" class="style9">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Name :</td>
                                        <td>
                                            <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            SurName :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtsurname" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Address :</td>
                                        <td>
                                            <asp:TextBox ID="txtaddd" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            City :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtcity" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Pincode :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtpincode" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Contact :</td>
                                        <td>
                                            <asp:TextBox ID="txtmpbile" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" CssClass="btn" onclick="Button2_Click" 
                                                Text="Update Detail" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:View>
                        </asp:MultiView>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

