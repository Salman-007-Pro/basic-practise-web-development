<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="AddItem.aspx.cs" Inherits="admin_AddminItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style12
    {
            text-align: center;
        }
    .style14
    {
        width: 156px;
    }
        .style18
    {
        width: 216px;
    }
        .style19
        {
            width: 393px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl" style="height: 424px; width: 100%">
    <tr>
        <td colspan="5" class="tblhead" align="center">
            Add Item</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style19">
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Item Name:</td>
        <td align="LEFT" class="style19" >
            <asp:TextBox ID="txtiname" runat="server" 
                CssClass="txt" Font-Bold="False" Font-Italic="False" 
                ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtiname" ErrorMessage="!!" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td align="LEFT" class="lbl" >
            Model :</td>
        <td align="LEFT" >
            <asp:TextBox ID="txtmodel" runat="server" 
         CssClass="txt"></asp:TextBox>
        </td>
        <td align="LEFT" >
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Description:</td>
        <td style="text-align: left" class="style19" >
            <asp:TextBox ID="txtdescrip" runat="server"
                 CssClass="txt" ontextchanged="txtdescrip_TextChanged" Height="35px" 
                TextMode="MultiLine" Width="190px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtdescrip" ErrorMessage="!!" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="lbl" >
            Color : 
        </td>
        <td style="text-align: left" >
            <asp:DropDownList ID="drpcolor" runat="server" CssClass="txt">
                <asp:ListItem>SELECT</asp:ListItem>
                <asp:ListItem>White</asp:ListItem>
                <asp:ListItem>Black</asp:ListItem>
                <asp:ListItem>Gold</asp:ListItem>
                <asp:ListItem>Silver</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="text-align: left" >
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Price:</td>
        <td style="text-align: left" class="style19">
            <asp:TextBox ID="txtprice" runat="server" 
              CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtprice" ErrorMessage="!!" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="lbl">
            Touch Screen : 
        </td>
        <td style="text-align: left">
            <asp:DropDownList ID="drptouch" runat="server" CssClass="txt">
                <asp:ListItem>SELECT</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="text-align: left">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Quantity:</td>
        <td style="text-align: left" class="style19">
            <asp:TextBox ID="txtquan" runat="server" 
         CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtquan" ErrorMessage="!!" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="lbl">
            Sim : 
        </td>
        <td style="text-align: left">
            <asp:DropDownList ID="drpsim" runat="server" CssClass="txt">
                <asp:ListItem>SELECT</asp:ListItem>
                <asp:ListItem>Single Sim</asp:ListItem>
                <asp:ListItem>Dual Sim</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="text-align: left">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Image:</td>
        <td style="text-align: left" class="style19">
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="FileUpload1" ErrorMessage="!!" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="lbl">
            Ram :</td>
        <td style="text-align: left">
            <asp:TextBox ID="txtram" runat="server" 
         CssClass="txt"></asp:TextBox>
        </td>
        <td style="text-align: left">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Image1 :</td>
        <td style="text-align: left" class="style19">
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="FileUpload2" ErrorMessage="!!" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="lbl">
            Memory :</td>
        <td style="text-align: left">
            <asp:DropDownList ID="drpmemory" runat="server" CssClass="txt">
                <asp:ListItem>SELECT</asp:ListItem>
                <asp:ListItem>2 GB</asp:ListItem>
                <asp:ListItem>4 GB</asp:ListItem>
                <asp:ListItem>8 GB</asp:ListItem>
                <asp:ListItem>16 GB</asp:ListItem>
                <asp:ListItem>32 GB</asp:ListItem>
                <asp:ListItem>64 GB</asp:ListItem>
                <asp:ListItem>128 GB</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="text-align: left">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Image2 :</td>
        <td style="text-align: left" class="style19">
            <asp:FileUpload ID="FileUpload3" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="FileUpload3" ErrorMessage="!!" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="lbl">
            Display : 
        </td>
        <td style="text-align: left">
            <asp:TextBox ID="txtdisplay" runat="server"
         CssClass="txt"></asp:TextBox>
        </td>
        <td style="text-align: left">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Image 3 :</td>
        <td style="text-align: left" class="style19">
            <asp:FileUpload ID="FileUpload4" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="FileUpload4" ErrorMessage="!!" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="lbl">
            Camera :</td>
        <td style="text-align: left">
            <asp:TextBox ID="txtcamera" runat="server" 
         CssClass="txt"></asp:TextBox>
        </td>
        <td style="text-align: left">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Category Name:</td>
        <td style="text-align: left" class="style19">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="!!" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="lbl">
            Battery : 
        </td>
        <td style="text-align: left">
            <asp:TextBox ID="txtbattery" runat="server"
         CssClass="txt"></asp:TextBox>
        </td>
        <td style="text-align: left">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            &nbsp;</td>
        <td style="text-align: left" class="style19">
            &nbsp;</td>
        <td style="text-align: left">
            &nbsp;</td>
        <td style="text-align: left">
            &nbsp;</td>
        <td style="text-align: left">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="style19" align="left">
            <asp:Button ID="Button9" runat="server" CssClass="btn" onclick="Button9_Click" 
                Text="ADD ITEM" Height="30px" Width="100px" />
            <asp:Label ID="lblmsg" runat="server" ForeColor="Black"></asp:Label>
        </td>
        <td class="style18" align="left">
            &nbsp;</td>
        <td class="style18" align="left">
            &nbsp;</td>
        <td class="style18" align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="style19" align="left">
            &nbsp;</td>
        <td class="style18" align="left">
            &nbsp;</td>
        <td class="style18" align="left">
            &nbsp;</td>
        <td class="style18" align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12" colspan="5">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                AutoGenerateDeleteButton="True" 
                DataKeyNames="IID" onrowdeleting="GridView1_RowDeleting" 
                onrowcancelingedit="GridView1_RowCancelingEdit1" 
                onrowediting="GridView1_RowEditing1" 
                onrowupdating="GridView1_RowUpdating1" BackColor="White" BorderColor="#DEDFDE" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                GridLines="Vertical" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="843px" 
                ForeColor="Black">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                <%--<asp:CommandField CausesValidation="false" ShowEditButton="true" />--%>
                    <asp:BoundField DataField="IName" HeaderText="ITEM NAME" 
                        SortExpression="IName" />
                    <asp:BoundField DataField="price" HeaderText="PRICE" SortExpression="price" />
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

