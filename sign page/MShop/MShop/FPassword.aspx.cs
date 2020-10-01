using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FPassword : System.Web.UI.Page
{
    DS_USER.USER_SELECTDataTable UDT = new DS_USER.USER_SELECTDataTable();
    DS_USERTableAdapters.USER_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USER_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        UDT = UAdapter.Select_FOR_Forgot_password(txtemail.Text, txtmobile.Text);
        if (UDT.Rows.Count > 0)
        {
            txtemail.Text = "";
            lblpass.Text = "Your Password = "+UDT.Rows[0]["Password"].ToString();
            lblerror.Text = "";
        }
        else
        {
            lblerror.Text = "Invalid mobile or email";
        }
    }
}