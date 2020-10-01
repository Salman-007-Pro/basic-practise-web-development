using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_MyAccount : System.Web.UI.Page
{
    DS_USER.USER_SELECTDataTable UDT = new DS_USER.USER_SELECTDataTable();
    DS_USERTableAdapters.USER_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USER_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            UDT = UAdapter.Select_BY_Email(Session["uname"].ToString());

            ViewState["uid"] = UDT.Rows[0]["uid"].ToString();
            lblname.Text = UDT.Rows[0]["name"].ToString();
            lblsurnam.Text = UDT.Rows[0]["surname"].ToString();
            lbladdrss.Text = UDT.Rows[0]["address"].ToString();
            lblcity.Text = UDT.Rows[0]["city"].ToString();
            lblpin.Text = UDT.Rows[0]["pincode"].ToString();
            lblcont.Text = UDT.Rows[0]["mobile"].ToString();
        }
        lblmsg.Text = "";
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        UAdapter.Update(Convert.ToInt32(ViewState["uid"].ToString()), txtname.Text, txtsurname.Text, txtaddd.Text, txtcity.Text, txtpincode.Text, txtmpbile.Text);
        UDT = UAdapter.Select_BY_Email(Session["uname"].ToString());

        ViewState["uid"] = UDT.Rows[0]["uid"].ToString();
        txtname.Text = UDT.Rows[0]["name"].ToString();
        txtsurname.Text = UDT.Rows[0]["surname"].ToString();
        txtaddd.Text = UDT.Rows[0]["address"].ToString();
        txtcity.Text = UDT.Rows[0]["city"].ToString();
        txtpincode.Text = UDT.Rows[0]["pincode"].ToString();
        txtmpbile.Text = UDT.Rows[0]["mobile"].ToString();
        lblmsg.Text = "Detail updated successfully";
        MultiView1.ActiveViewIndex = -1;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        UDT = UAdapter.Select_BY_Email(Session["uname"].ToString());

        ViewState["uid"] = UDT.Rows[0]["uid"].ToString();
        lblname.Text = UDT.Rows[0]["name"].ToString();
        lblsurnam.Text = UDT.Rows[0]["surname"].ToString();
        lbladdrss.Text = UDT.Rows[0]["address"].ToString();
        lblcity.Text = UDT.Rows[0]["city"].ToString();
        lblpin.Text = UDT.Rows[0]["pincode"].ToString();
        lblcont.Text = UDT.Rows[0]["mobile"].ToString();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        UDT = UAdapter.Select_BY_Email(Session["uname"].ToString());

        ViewState["uid"] = UDT.Rows[0]["uid"].ToString();
        txtname.Text = UDT.Rows[0]["name"].ToString();
        txtsurname.Text = UDT.Rows[0]["surname"].ToString();
        txtaddd.Text = UDT.Rows[0]["address"].ToString();
        txtcity.Text = UDT.Rows[0]["city"].ToString();
        txtpincode.Text = UDT.Rows[0]["pincode"].ToString();
        txtmpbile.Text = UDT.Rows[0]["mobile"].ToString();
    }
}