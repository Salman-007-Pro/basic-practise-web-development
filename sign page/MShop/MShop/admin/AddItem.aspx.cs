using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AddminItem : System.Web.UI.Page
{
    DS_AITEM.ITEM_SELECTDataTable IDT = new DS_AITEM.ITEM_SELECTDataTable();
    DS_AITEMTableAdapters.ITEM_SELECTTableAdapter DsAdapter = new DS_AITEMTableAdapters.ITEM_SELECTTableAdapter();

    DS_CAT.CATEMST_SELECTDataTable CDT = new DS_CAT.CATEMST_SELECTDataTable();
    DS_CATTableAdapters.CATEMST_SELECTTableAdapter CAdapter = new DS_CATTableAdapters.CATEMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
        if (Page.IsPostBack == false)
        {
            IDT = DsAdapter.select();
            GridView1.DataSource = IDT;
            GridView1.DataBind();

            CDT = CAdapter.select();
            DropDownList1.DataSource = CDT;
            DropDownList1.DataTextField = "Cname";
            DropDownList1.DataValueField = "CID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "SELECT");
        }
    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/img/") + FileUpload1.FileName);
        FileUpload2.SaveAs(Server.MapPath("~/img/") + FileUpload2.FileName);
        FileUpload3.SaveAs(Server.MapPath("~/img/") + FileUpload3.FileName);
        FileUpload4.SaveAs(Server.MapPath("~/img/") + FileUpload3.FileName);
        int inst = DsAdapter.Insert(txtiname.Text, txtdescrip.Text, Convert.ToDouble(txtprice.Text), "~/img/" + FileUpload1.FileName, Convert.ToInt32(txtquan.Text), DropDownList1.SelectedItem.Text, "~/img/" + FileUpload2.FileName, "~/img/" + FileUpload3.FileName, "~/img/" + FileUpload4.FileName,txtmodel.Text,drpcolor.SelectedItem.Text,drptouch.SelectedItem.Text,drpsim.SelectedItem.Text, txtram.Text,drpmemory.SelectedItem.Text,txtdisplay.Text,txtcamera.Text,txtbattery.Text);
        IDT = DsAdapter.select();
        GridView1.DataSource = IDT;
        GridView1.DataBind();
        txtdescrip.Text = "";
        txtiname.Text = "";
        txtprice.Text = "";
        txtmodel.Text = "";
        txtdisplay.Text = "";
        txtbattery.Text = "";
        txtcamera.Text = "";
        txtram.Text = "";
        drpsim.SelectedIndex = 0;
        drptouch.SelectedIndex = 0;
        drpmemory.SelectedIndex = 0;
        drpcolor.SelectedIndex = 0;
        txtquan.Text = "";
        drpcolor.SelectedIndex = 0;
        DropDownList1.SelectedIndex = 0;
        lblmsg.Text = "Items Added Successfully";

    }
   
    private void bindgrid()
    {
        IDT = DsAdapter.select();
        GridView1.DataSource = IDT;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int IID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        int del = DsAdapter.Delete(IID);


        bindgrid();

    }
    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
    {

        GridView1.EditIndex = e.NewEditIndex;
        IDT = DsAdapter.select();
        GridView1.DataSource = IDT;
        GridView1.DataBind();
        bindgrid();
 
    }
    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        int IID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

        TextBox iname = GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox;
        TextBox price = GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox;
        DsAdapter.ITEM_UP(IID, iname.Text, Convert.ToDouble(price.Text));
        GridView1.EditIndex = -1;
        bindgrid();
    }
    protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        IDT = DsAdapter.select();
        GridView1.DataSource = IDT;
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtdescrip_TextChanged(object sender, EventArgs e)
    {

    }
}