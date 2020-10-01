<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="MyCart.aspx.cs" Inherits="User_MyCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            My Shopping Cart</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                style="text-align: center" Width="885px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" DataKeyNames="oid" 
                onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" 
                onrowupdating="GridView1_RowUpdating" BackColor="White" 
                BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
            <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
            <asp:Image runat="server" ID="imgg" ImageUrl='<%#Eval("image") %>'  Height="40px" Width="35px"/>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="ItemName" DataField="Iname" />
            <asp:BoundField HeaderText="Price" DataField="price" />
            <%--<asp:BoundField HeaderText="Quantity" DataField="Qnt" />--%>
             <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
            <asp:TextBox runat="server" ID="txtq" Text='<%#Eval("Qnt") %>'  Height="20px" Width="40px"/>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="TotalPrice" DataField="TPrice" />
             <asp:TemplateField HeaderText="Update">
            <ItemTemplate>
           <asp:LinkButton runat="server" Text="Update" CommandName="update" ID="lnkup" ForeColor="Green" CommandArgument='<%#Eval("OID") %>'></asp:LinkButton>
            </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField HeaderText="Remove">
            <ItemTemplate>
           <asp:LinkButton runat="server" Text="Remove" CommandName="Delete" ForeColor="Red" CommandArgument='<%#Eval("OID") %>' ID="lnkrem"></asp:LinkButton>
            </ItemTemplate>
            </asp:TemplateField>
            </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#666633" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Button ID="Button2" runat="server" CssClass="btn" 
                Text="Continew Shopping" PostBackUrl="~/User/Default.aspx" 
                onclick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" CssClass="btn" Text="Check Out" 
                onclick="Button3_Click" PostBackUrl="~/User/Checkout.aspx" />
        </td>
    </tr>
</table>
</asp:Content>

