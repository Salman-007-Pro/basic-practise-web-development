using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_MyCart : System.Web.UI.Page
{
    DS_ORDER.ORDER_SELECTDataTable ODT = new DS_ORDER.ORDER_SELECTDataTable();
    DS_ORDERTableAdapters.ORDER_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDER_SELECTTableAdapter();
    DS_AITEM.ITEM_SELECTDataTable IDT = new DS_AITEM.ITEM_SELECTDataTable();
    DS_AITEMTableAdapters.ITEM_SELECTTableAdapter IAdapter = new DS_AITEMTableAdapters.ITEM_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            ODT = OAdapter.Sleect_BY_UNAME_Status(Session["uname"].ToString(), 0);
            GridView1.DataSource = ODT;
            GridView1.DataBind();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {  int oidd=Convert.ToInt32( GridView1.DataKeys[e.RowIndex].Value);
   
        OAdapter.Delete(oidd);


        ODT = OAdapter.Sleect_BY_UNAME_Status(Session["uname"].ToString(), 0);
        GridView1.DataSource = ODT;
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int oidd=Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        TextBox txtqq=GridView1.Rows[e.RowIndex].Cells[3].FindControl("txtq") as TextBox;
        string pricee = GridView1.Rows[e.RowIndex].Cells[2].Text;
        double tpricee=Convert.ToInt32(pricee) * Convert.ToInt32(txtqq.Text);
        OAdapter.ORDER_UPDATE_CART_ALREADY_ADD(oidd, Convert.ToInt32(txtqq.Text), tpricee);

        ODT = OAdapter.Sleect_BY_UNAME_Status(Session["uname"].ToString(), 0);
        GridView1.DataSource = ODT;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        ODT = OAdapter.Sleect_BY_UNAME_Status(Session["uname"].ToString(), 0);
       for(int i=0; i<ODT.Rows.Count; i++)
        {

            IDT = IAdapter.Select_BY_INAME(ODT.Rows[i]["iname"].ToString());

            if (Convert.ToInt32(IDT.Rows[0]["Aqnt"].ToString()) < Convert.ToInt32(ODT.Rows[i]["Qnt"].ToString()))
            {

                lblmsg.Text = ODT.Rows[i]["iname"].ToString() + " Quantity must be less then buy quantity";
            }
            else

            {
                Response.Redirect("Checkout.aspx");
            }
       }


       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}