<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="REPORTS.aspx.cs" Inherits="admin_REPORTS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td colspan="2" class="tblhead">
                Reports</td>
        </tr>
        <tr>
            <td>
                Select Category :
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt">
                </asp:DropDownList>
                <asp:Button ID="Button9" runat="server" CssClass="btn" onclick="Button9_Click" 
                    Text="View" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Select Category" 
                    ForeColor="Red" InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" GridLines="Vertical" Width="873px" ForeColor="Black">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                        <asp:Image runat="server" ID="imggg" ImageUrl='<%#Eval("image") %>' Width="60px" Height="60px" />
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="iname" HeaderText="ItemName" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:BoundField DataField="Qnt" HeaderText="Qnt" />
                        <asp:BoundField DataField="aqnt" HeaderText="Available" />
                        <asp:BoundField DataField="sqnt" HeaderText="SellQnt" />
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
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

