using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_adminMaster : System.Web.UI.MasterPage
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ad_user"] == null)
        {
            Response.Redirect("Login.aspx");
        }

        SqlDataAdapter da = new SqlDataAdapter("select * from AdminTab where Uname='" + Session["ad_user"] + "' and type='super'", cn);
        DataTable d = new DataTable();
        da.Fill(d);
        if (d.Rows.Count > 0)
        {
            Label1.Text= "<li style='margin-top:10px;'><a href ='Registration.aspx'><i class='fas fa-cog'></i>Add Admin</a></li>";
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("login.aspx");
    }
}
