using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Registration : System.Web.UI.Page
{
    DS_USER.USER_SELECTDataTable UDT = new DS_USER.USER_SELECTDataTable();
    DS_USERTableAdapters.USER_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USER_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        UAdapter.Insert(txtname.Text, txtsname.Text, txtadd.Text, txtcity.Text, txtppin.Text, txtmo.Text, txtemail.Text, txtpass.Text);
        Response.Redirect("Login.aspx");
        
    }
}