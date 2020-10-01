using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_login : System.Web.UI.Page
{
    admin.ADMIN_SELECTDataTable adt = new admin.ADMIN_SELECTDataTable();
    adminTableAdapters.ADMIN_SELECTTableAdapter aadpter = new adminTableAdapters.ADMIN_SELECTTableAdapter();
      protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        adt = aadpter.selectlogin(txtuname.Text, txtpass.Text);
        if (adt.Rows.Count >= 1)
        {
            Response.Redirect("addcategory.aspx");
        }
        else
        {
            lblmsg.Text = "Invalid Detail";
        }

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}