<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="User_Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Check Out Order....</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style9">
                    <tr>
                        <td class="lbl">
                            Total Payment :
                        </td>
                        <td>
                            <asp:Label ID="lblpayment" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Select Paymnt Type :</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged" CssClass="txt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>CREDIT CARD</asp:ListItem>
                                <asp:ListItem>DEBIT CARD</asp:ListItem>
                                <asp:ListItem>CASH ON DELIVERY</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbl" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl" colspan="2">
                            <asp:Panel ID="Panel1" runat="server" Visible="False">
                                <table class="style8">
                                    <tr>
                                        <td>
                                            Bank Name :
                                        </td>
                                        <td style="text-align: left">
                                            <asp:DropDownList ID="drpbankname" runat="server" CssClass="txt">
                                                <asp:ListItem>SBI</asp:ListItem>
                                                <asp:ListItem>ICICI</asp:ListItem>
                                                <asp:ListItem>BOB</asp:ListItem>
                                                <asp:ListItem>HDFC</asp:ListItem>
                                                <asp:ListItem>DENABANK</asp:ListItem>
                                                <asp:ListItem>UNION BANK</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Branch&nbsp; :</td>
                                        <td style="text-align: left">
                                            <asp:DropDownList ID="drpbranch" runat="server" CssClass="txt">
                                                <asp:ListItem>BARODA</asp:ListItem>
                                                <asp:ListItem>HIMMATNAGAR</asp:ListItem>
                                                <asp:ListItem>AHMEDABAD</asp:ListItem>
                                                <asp:ListItem>MUMBAI</asp:ListItem>
                                                <asp:ListItem>SURAT</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            16 Digit Card&nbsp; No :</td>
                                        <td>
                                            <asp:TextBox ID="txtcardno" runat="server" MaxLength="16" Width="171px" 
                                                CssClass="txt"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            CVV No :</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="txtccv" runat="server" MaxLength="3" Width="68px" 
                                                CssClass="txt"></asp:TextBox>
                                            &nbsp;3 Digit Only</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td style="text-align: left">
                                            <asp:Button ID="Button2" runat="server" CssClass="btn" onclick="Button2_Click" 
                                                Text="PAY NOW" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btncash" runat="server" CssClass="btn" onclick="btncash_Click" 
                                Text="PAY NOW" Visible="False" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

