<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="VIEWPAYMENT.aspx.cs" Inherits="admin_VIEWPAYMENT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 169px;
        }
        .style10
        {
            color: green;
            font-size: 14px;
            font-weight: bold;
            text-align: right;
            width: 169px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" >
        <tr>
            <td class="tblhead" colspan="2">
                Payment Report</td>
        </tr>
        <tr>
            <td class="lbl">
                SELECT USER</td>
            <td>
                <asp:DropDownList ID="drpuser" runat="server" Width="200px" CssClass="txt">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td  >
                &nbsp;</td>
            <td>
                <asp:Button ID="Button9" runat="server" CssClass="btn" onclick="Button9_Click" 
                    Text="VIEW" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                style="text-align: center" Width="878px" BackColor="White" 
                    BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    GridLines="Vertical" ForeColor="Black">
                <AlternatingRowStyle BackColor="White" />
            <Columns>
            <asp:BoundField HeaderText="Payment Type"  DataField="type" />
<asp:BoundField HeaderText="Bank Name"  DataField="bank" />
<asp:BoundField HeaderText="Bank Branch"  DataField="branch" />
            <asp:BoundField HeaderText="Card No"  DataField="cardno" />
            <asp:BoundField HeaderText="CVV No"  DataField="ccv" />
              <asp:BoundField HeaderText="Amount"  DataField="amount" />
           <asp:BoundField HeaderText="Payment Date"  DataField="entrydate" />
            </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#004993" ForeColor="White" Font-Bold="True" />
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

