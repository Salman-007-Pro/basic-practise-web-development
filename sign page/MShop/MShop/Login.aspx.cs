using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    DS_USER.USER_SELECTDataTable UDT = new DS_USER.USER_SELECTDataTable();
    DS_USERTableAdapters.USER_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USER_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        UDT = UAdapter.Seleect_FOR_LOGIN(txtuname.Text, txtpass.Text);
        if (UDT.Rows.Count > 0)
        {
            Session["uname"] = txtuname.Text;
            Session["fname"] = UDT.Rows[0]["name"].ToString();
            Session["lname"] = UDT.Rows[0]["surname"].ToString();
            Response.Redirect("User/Default.aspx");
        }
        else
        {
       
            lblerror.Text = "Error !!!";
        }
    }
}