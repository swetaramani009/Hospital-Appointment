using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Users_Contact : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select Email from UserTab where Uname='" + Session["user"] + "'", cn);
        DataTable d = new DataTable();
        da.Fill(d);
        txt_feedbake_Email.Text = d.Rows[0][0].ToString();
    }

    protected void btn_feedbake_submit_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("insert into FeedbackTab values('" + Session["user"].ToString() + "','" + txt_feedbake_Email.Text + "','" + txt_feedbake_msg.Text + "','" + DateTime.Now + "')", cn);
        DataTable d = new DataTable();
        da.Fill(d);
        Response.Write("<script>alert('Feedback send Successfully..')</script>");
        txt_feedbake_msg.Text = "";
    }
}