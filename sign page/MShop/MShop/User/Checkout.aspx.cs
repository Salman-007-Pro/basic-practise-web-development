using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Checkout : System.Web.UI.Page
{
    DS_ORDER.ORDER_SELECTDataTable ODT = new DS_ORDER.ORDER_SELECTDataTable();
    DS_ORDERTableAdapters.ORDER_SELECTTableAdapter OAdapter = new DS_ORDERTableAdapters.ORDER_SELECTTableAdapter();

    DS_AITEM.ITEM_SELECTDataTable IDT = new DS_AITEM.ITEM_SELECTDataTable();
    DS_AITEMTableAdapters.ITEM_SELECTTableAdapter IAdapter = new DS_AITEMTableAdapters.ITEM_SELECTTableAdapter();
   

    DS_PAyment.PAYMENTMST_SELECTDataTable PDT = new DS_PAyment.PAYMENTMST_SELECTDataTable();
    DS_PAymentTableAdapters.PAYMENTMST_SELECTTableAdapter PAdapter = new DS_PAymentTableAdapters.PAYMENTMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";
        ODT = OAdapter.Select_AMT(Session["uname"].ToString());
        lblpayment.Text = ODT.Rows[0]["tprice"].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        

            PAdapter.Insert(Session["uname"].ToString(), Convert.ToDouble(lblpayment.Text), DropDownList1.SelectedItem.Text, drpbankname.SelectedItem.Text, drpbranch.SelectedItem.Text, txtcardno.Text, Convert.ToInt32(txtccv.Text), System.DateTime.Now);
        
        

     ODT = OAdapter.Sleect_BY_UNAME_Status(Session["uname"].ToString(), 0);
     for (int i = 0; i < ODT.Rows.Count; i++)
     {
         IAdapter.ITEM_UPDATE_SELL(ODT.Rows[i]["iname"].ToString(), Convert.ToInt32(ODT.Rows[i]["qnt"].ToString()));

     }
     OAdapter.ORDER_UPDATE_STATUS_BY_NAME(Session["uname"].ToString(), 1);
        
        Response.Redirect("Thanks.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            lbl.Text = "Select Payment Option";
            btncash.Visible = false;
            Panel1.Visible = false;
        }
        else if (DropDownList1.SelectedIndex == 1 || DropDownList1.SelectedIndex==2)
        {
            btncash.Visible = false;
            Panel1.Visible = true;
        }
        else if (DropDownList1.SelectedIndex == 3)
        {
            Panel1.Visible = false;
            btncash.Visible = true;
        }
    }
    protected void btncash_Click(object sender, EventArgs e)
    {
        PAdapter.Insert(Session["uname"].ToString(), Convert.ToDouble(lblpayment.Text), DropDownList1.SelectedItem.Text, "", "", "", 0, System.DateTime.Now);



        ODT = OAdapter.Sleect_BY_UNAME_Status(Session["uname"].ToString(), 0);
        for (int i = 0; i < ODT.Rows.Count; i++)
        {
            IAdapter.ITEM_UPDATE_SELL(ODT.Rows[i]["iname"].ToString(), Convert.ToInt32(ODT.Rows[i]["qnt"].ToString()));

        }
        OAdapter.ORDER_UPDATE_STATUS_BY_NAME(Session["uname"].ToString(), 1);

        Response.Redirect("Thanks.aspx");
    
    }
}