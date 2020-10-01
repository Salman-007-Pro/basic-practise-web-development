<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
    function caplock(e)
    {
    kc=e.keycode ? e.keycode: e.which;
    sk=e.shiftkey?e.shiftkey:((kc==16)?true:false);
    if(((kc>=65 && kc <=90)&&!sk)||((kc>=97 && kc <=122)&& sk))
    {
       document.getElementById('abc').style.visibility='visible';
       }
       else
       {
       document.getElementById('abc').style.visibility='hidden';
       }
       }
       </script>
    <link href="admin.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 260px;
            height: 197px;
        }
        .style3
        {
            font-size: x-large;
        }
        .style4
        {
            font-size: 40pt;
            text-align: center;
            color: #FF0066;
        }
        .style5
        {
            height: 20px;
        }
        </style>
</head>
<body class="mnu">
    <form id="form1" runat="server">
   <div id="header">
       <asp:Image ID="Image1" runat="server" ImageUrl="~/admin/mlogo.png" />
    </div>
    <div id="login" class="style1">
  
        <table class="tbl">
            <tr>
                <td class="tblhead" colspan="2">
                    ADMIN LOGIN</td>
            </tr>
            <tr>
                <td class="style3">
                &nbsp;&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="lbl">
                    UserName:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txtuname" runat="server" placeholder="Enter User Name" CssClass="txt" 
                        ontextchanged="TextBox1_TextChanged" Width="140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lbl">
                    Password:&nbsp; </td>
                <td>
                    <asp:TextBox ID="txtpass" onkeypress="caplock(event)" runat="server" placeholder="Enter Password" 
                        CssClass="txt" TextMode="Password" Width="140px"></asp:TextBox><div id="abc" style="visibility:hidden">CAPS LOCK ON</div>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    </td>
                <td class="style5">
                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn" 
                        onclick="Button1_Click" Width="100px" />
                &nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
            </tr>
            </table>
  
    </div>
    </form>
</body>
</html>
