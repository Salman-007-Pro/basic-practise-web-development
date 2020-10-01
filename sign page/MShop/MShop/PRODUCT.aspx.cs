using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PRODUCT : System.Web.UI.Page
{
    DS_CAT.CATEMST_SELECTDataTable CDT = new DS_CAT.CATEMST_SELECTDataTable();
    DS_CATTableAdapters.CATEMST_SELECTTableAdapter CAdapter = new DS_CATTableAdapters.CATEMST_SELECTTableAdapter();

    DS_AITEM.ITEM_SELECTDataTable IDT = new DS_AITEM.ITEM_SELECTDataTable();
    DS_AITEMTableAdapters.ITEM_SELECTTableAdapter IAdapter = new DS_AITEMTableAdapters.ITEM_SELECTTableAdapter();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            IDT = IAdapter.SeleectTOP7();
            DataList1.DataSource = IDT;
            DataList1.DataBind();
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
       
    }
    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
           Response.Redirect("View.aspx?idd=" + e.CommandArgument.ToString());
    }
}