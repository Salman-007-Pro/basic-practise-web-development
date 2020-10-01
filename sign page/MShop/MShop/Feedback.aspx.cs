using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    DS_Feed.FEEDBACKMSTR_SELECTDataTable FDT = new DS_Feed.FEEDBACKMSTR_SELECTDataTable();
    DS_FeedTableAdapters.FEEDBACKMSTR_SELECTTableAdapter FAdapter = new DS_FeedTableAdapters.FEEDBACKMSTR_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        FAdapter.Insert(txtname.Text, txtfeedback.Text, System.DateTime.Now);
        txtfeedback.Text = "";
        txtname.Text = "";
        lblmsg.Text = "Feedback Sent Successfully";

    }
}