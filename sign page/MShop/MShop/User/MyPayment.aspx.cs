using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_MyPayment : System.Web.UI.Page
{
    DS_PAyment.PAYMENTMST_SELECTDataTable PDT = new DS_PAyment.PAYMENTMST_SELECTDataTable();
    DS_PAymentTableAdapters.PAYMENTMST_SELECTTableAdapter PAdapter = new DS_PAymentTableAdapters.PAYMENTMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        PDT = PAdapter.Select_BY_UNAME(Session["uname"].ToString());
        GridView1.DataSource = PDT;
        GridView1.DataBind();
     

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}