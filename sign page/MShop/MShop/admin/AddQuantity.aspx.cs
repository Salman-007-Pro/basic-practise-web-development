using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AddQuantity : System.Web.UI.Page
{
    DS_AITEM.ITEM_SELECTDataTable ITEMDATATABLE = new DS_AITEM.ITEM_SELECTDataTable();
    DS_AITEMTableAdapters.ITEM_SELECTTableAdapter ITEMADAPTER=new DS_AITEMTableAdapters.ITEM_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
          if (Page.IsPostBack == false)
        {
            ITEMDATATABLE = ITEMADAPTER.select();
            GridView1.DataSource = ITEMDATATABLE;
            GridView1.DataBind();

              ITEMDATATABLE=ITEMADAPTER.select();
              DropDownList2.DataSource=ITEMDATATABLE;
              DropDownList2.DataTextField="INAME";
              DropDownList2.DataValueField="IID";
              DropDownList2.DataBind();
              DropDownList2.Items.Insert(0, "SELECT");
        }
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        ITEMADAPTER.ITEMMST_ADDITEMQUANTITY(Convert.ToInt32(DropDownList2.SelectedValue),Convert.ToInt32(txtquan.Text));
        ITEMDATATABLE=ITEMADAPTER.ITEM_SELECT_BUYIID(Convert.ToInt32(DropDownList2.SelectedValue));
        Label1.Text="Qnt Added.";
            ITEMDATATABLE = ITEMADAPTER.select();
            GridView1.DataSource = ITEMDATATABLE;
            GridView1.DataBind();
        txtquan.Text="";
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}