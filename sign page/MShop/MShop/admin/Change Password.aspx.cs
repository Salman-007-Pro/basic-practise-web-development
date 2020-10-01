using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Change_Password : System.Web.UI.Page
{
    admin.ADMIN_SELECTDataTable adt = new admin.ADMIN_SELECTDataTable();
    adminTableAdapters.ADMIN_SELECTTableAdapter aadpter = new adminTableAdapters.ADMIN_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        if (txtpass.Text == txtcpass.Text)
        {
            aadpter.ADMIN_CHANGE_PASSWORD("admin", txtpass.Text);

            Label1.Text = "Password Changed";
        }
        else
        {
            Label1.Text = "Password not same";
        
        }
    }

}