using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_REPORTS : System.Web.UI.Page
{
    DS_CAT.CATEMST_SELECTDataTable CDT = new DS_CAT.CATEMST_SELECTDataTable();
    DS_CATTableAdapters.CATEMST_SELECTTableAdapter CAdapter = new DS_CATTableAdapters.CATEMST_SELECTTableAdapter();
    DS_AITEM.ITEM_SELECTDataTable IDT = new DS_AITEM.ITEM_SELECTDataTable();
    DS_AITEMTableAdapters.ITEM_SELECTTableAdapter IAdapter = new DS_AITEMTableAdapters.ITEM_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        if (Page.IsPostBack == false)
        {
            CDT = CAdapter.select();
            DropDownList1.DataSource = CDT;
            DropDownList1.DataTextField = "Cname";
            DropDownList1.DataValueField = "Cid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "SELECT");
        }

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        IDT = IAdapter.Select_BY_CNAME(DropDownList1.SelectedItem.Text);
        GridView1.DataSource = IDT;
        GridView1.DataBind();
        lblmsg.Text = "Total " + GridView1.Rows.Count.ToString() + " Record Found";
    }
}