<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="AddQuantity.aspx.cs" Inherits="admin_AddQuantity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
        }
        .style9
        {
            width: 73px;
        }
        .style13
        {
            width: 239px;
            color: blue;
        }
        .style16
        {
            width: 503px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 256px; width: 101%">
    <tr>
        <td colspan="2" class="tblhead">
            ADD QUANTITY PAGE</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8" colspan="2">
            <table align="center" class="style16">
                <tr>
                    <td class="lbl">
            Select Item:</td>
                    <td>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="txt">
            </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
            ADD Quantity:</td>
                    <td>
            <asp:TextBox ID="txtquan" runat="server" placeholder="Qnt" 
                CssClass="txt" Width="100px"></asp:TextBox>
                    </td>
                    <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtquan" ErrorMessage="Enter Quantity" 
                ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
            <asp:Button ID="Button9" runat="server" CssClass="btn" onclick="Button9_Click" 
                Text="ADD " Width="70px" Height="30px" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8" colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                GridLines="Vertical" Width="730px" ForeColor="Black">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="INAME" HeaderText="ITEM NAME" 
                        SortExpression="INAME" />
                    <asp:BoundField DataField="QNT" HeaderText="TOTAL QUANTITY" 
                        SortExpression="QNT" />
                    <asp:BoundField DataField="AQNT" HeaderText="AVAILABLE QUANTITY" 
                        SortExpression="AQNT" />
                    <asp:BoundField DataField="SQNT" HeaderText="SELL QUANTITY" 
                        SortExpression="SQNT" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#004993" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </td>
    </tr>
    </table>
</asp:Content>

