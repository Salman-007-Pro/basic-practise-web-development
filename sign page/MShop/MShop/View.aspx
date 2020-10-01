<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 88px;
        }
        .style4
        {
        }
        .style5
        {
        }
        .style6
        {
            width: 263px;
            text-align: center;
        }
        .style10
        {
            width: 100px;
        }
        .style11
        {
            text-align: center;
        }
        .style12
        {
            width: 111px;
        }
        .style14
        {
            color: Green;
            text-align: left;
            height: 25px;
        }
        .style18
        {
            width: 198px;
        }
        .style19
        {
            color: Green;
            text-align: right;
            height: 25px;
            width: 103px;
        }
        .style20
        {
            color: Green;
            text-align: right;
            height: 25px;
            width: 95px;
        }
        .style21
        {
            width: 95px;
        }
    </style>
    <script type="text/javascript">
        function img(i) {

            var imgg = document.getElementById('<%=Image3.ClientID%>');
            imgg.src = i.src;
        
        }
    
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
     <tr>
            <td class="tblhead" colspan="3">
                PRODUCT DETAIL</td>
        </tr>
     <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" valign="top">
                <table class="style10">
                    <tr>
                        <td class="style11">
                            <asp:Image ID="Image4" runat="server" Height="80px" Width="58px"  
                                onmouseover="img(this)" CssClass="vimg"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <asp:Image ID="Image5" runat="server" Height="80px" Width="58px" 
                                onmouseover="img(this)" CssClass="vimg" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <asp:Image ID="Image6" runat="server" Height="80px" Width="58px" 
                                onmouseover="img(this)" CssClass="vimg"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <asp:Image ID="Image7" runat="server" Height="80px" Width="58px" 
                                onmouseover="img(this)" CssClass="vimg"/>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style6">
                <asp:Image ID="Image3" runat="server" Height="335px" Width="227px" 
                    CssClass="vimg" />
            </td>
            <td valign="top" 
                
                
                style="border-left-style: solid; border-left-width: thin; border-left-color: #C0C0C0">
                <table style="width: 603px">
                    <tr>
                        <td class="style19">
                            Product Name :</td>
                        <td colspan="2">
                            
                <asp:Label ID="lblname" runat="server" ForeColor="#000369" ></asp:Label>
                
                        </td>
                        <td>
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style19">
                Item Price :
               
                        </td>
                        <td colspan="2">
              
                <asp:Label ID="lblprice" runat="server" ForeColor="#000369" ></asp:Label>
              
                        </td>
                        <td>
              
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style19">
                            Item Quntity :
                
                        </td>
                        <td colspan="2">
                
                <asp:Label ID="lblqnt" runat="server" ForeColor="#000369" ></asp:Label>
               
                        </td>
                        <td>
                
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style14" colspan="4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style14" bgcolor="#E3BBFF" colspan="4">
                            General Specification :</td>
                    </tr>
                    <tr>
                        <td class="style19">
                            Ram :</td>
                        <td class="style18">
                
                <asp:Label ID="lblram" runat="server" ForeColor="#000369" ></asp:Label>
               
                        </td>
                        <td class="style20">
                            Color : </td>
                        <td>
                
                <asp:Label ID="lblcolor" runat="server" ForeColor="#000369" ></asp:Label>
               
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            Memory :</td>
                        <td class="style18">
                
                <asp:Label ID="lblmemory" runat="server" ForeColor="#000369" ></asp:Label>
               
                        </td>
                        <td class="style20">
                            Touch Screen :</td>
                        <td>
                
                <asp:Label ID="lblscreen" runat="server" ForeColor="#000369" ></asp:Label>
               
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            Display :</td>
                        <td class="style18">
                
                <asp:Label ID="lbldisplay" runat="server" ForeColor="#000369" ></asp:Label>
               
                        </td>
                        <td class="style20">
                            Sim :</td>
                        <td>
                
                <asp:Label ID="lblsim" runat="server" ForeColor="#000369" ></asp:Label>
               
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            Camera : </td>
                        <td class="style18">
                
                <asp:Label ID="lblcamera" runat="server" ForeColor="#000369" ></asp:Label>
               
                        </td>
                        <td class="style20">
                            Model No :</td>
                        <td>
                
                <asp:Label ID="lblmodel" runat="server" ForeColor="#000369" ></asp:Label>
               
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            Battery : </td>
                        <td class="style18">
                
                <asp:Label ID="lblbattry" runat="server" ForeColor="#000369" ></asp:Label>
               
                        </td>
                        <td class="style21">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style19">
                            &nbsp;</td>
                        <td class="style18">
                            &nbsp;</td>
                        <td class="style21">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" CssClass="btn" onclick="Button3_Click" 
                    Text="Buy Now" Width="140px" PostBackUrl="~/Login.aspx" Height="40px" />
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="3" 
                style="border-top-style: solid; border-top-width: thin; border-top-color: #369">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="3" style="font-size: medium">
                Description ::</td>
        </tr>
        <tr>
            <td class="style5" colspan="3">
                <asp:Label ID="lbldetil" runat="server" Font-Size="Small" ForeColor="#000369"></asp:Label>
                </td>
        </tr>
        </table>
</asp:Content>

