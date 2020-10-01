using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ChangePass : System.Web.UI.Page
{
    DS_USER.USER_SELECTDataTable UDT = new DS_USER.USER_SELECTDataTable();
    DS_USERTableAdapters.USER_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USER_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        UAdapter.USER_UPDATE_PASSWORD(Session["uname"].ToString(), txtpass.Text);
        lblmsg.Text = "Password changed successfully";
    }
}