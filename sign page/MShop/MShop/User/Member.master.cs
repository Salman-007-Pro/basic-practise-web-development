using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Member : System.Web.UI.MasterPage
{
    DS_AITEM.ITEM_SELECTDataTable IDT = new DS_AITEM.ITEM_SELECTDataTable();
    DS_AITEMTableAdapters.ITEM_SELECTTableAdapter IAdapter = new DS_AITEMTableAdapters.ITEM_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblname.Text = "welcome " + Session["fname"].ToString() + " " + Session["lname"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        Session["s"] = TextBox1.Text+"%";
        Response.Redirect("Search.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
      
    }
}
