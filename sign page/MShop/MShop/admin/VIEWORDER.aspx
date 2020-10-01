<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="VIEWORDER.aspx.cs" Inherits="admin_VIEWORDER" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <table class="style1" style="width: 100%">
    <tr>
        <td colspan="2" class="tblhead">
            View Order</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            SELECT USER:</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            ORDER STATUS:</td>
        <td>
            <asp:DropDownList ID="drpstatus" runat="server" CssClass="txt">
                <asp:ListItem>SELECT</asp:ListItem>
                <asp:ListItem Value="0">Pending</asp:ListItem>
                <asp:ListItem Value="1">Complate</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="drpstatus" ErrorMessage="Select Status" ForeColor="Red" 
                InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button9" runat="server" CssClass="btn" Text="VIEW" 
                Height="30px" onclick="Button9_Click" Width="77px" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="872px" 
                AllowPaging="True" 
                onselectedindexchanging="GridView1_SelectedIndexChanging" BackColor="White" 
                BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                GridLines="Vertical" ForeColor="Black">
                <AlternatingRowStyle BackColor="White" />
            <Columns>
            <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
            <asp:Image ID="imgg" ImageUrl='<%#Eval("image") %>' runat="server" Height="50" Width="50"/>
            </ItemTemplate>

            </asp:TemplateField>
            <asp:BoundField HeaderText="Item Name" DataField="iname" />
                <asp:BoundField HeaderText="Item Qnt" DataField="qnt" />
                    <asp:BoundField HeaderText="Item price" DataField="price" />
                        <asp:BoundField HeaderText="Total Price" DataField="tprice" />
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

