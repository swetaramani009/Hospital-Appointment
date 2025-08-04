using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_editProfile : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["ad_user"] != null)
            {
                SqlDataAdapter da = new SqlDataAdapter("select dob,name,address from AdminTab where Uname='" + Session["ad_user"] + "'", cn);
                DataTable d = new DataTable();
                da.Fill(d);
                dob.Text = d.Rows[0]["dob"].ToString();
                name.Text = d.Rows[0]["name"].ToString();
                address.Text = d.Rows[0]["address"].ToString();
                SqlDataAdapter da1 = new SqlDataAdapter("select * from departments where status='Active'", cn);
                DataTable d1 = new DataTable();
                da1.Fill(d1);
                DropDownList_Section.DataSource = d1;
                DropDownList_Section.DataTextField = "department";
                DropDownList_Section.DataValueField = "Id";
                DropDownList_Section.DataBind();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("update AdminTab set dob='" + dob.Text + "',gender='" + DropDownList_gender.SelectedItem.ToString() + "',name='" + name.Text + "',department='" + DropDownList_Section.SelectedItem.ToString() + "',address='" + address.Text + "' where Uname='"+Session["ad_user"]+"'", cn);
        DataTable d = new DataTable();
        da.Fill(d);
        Response.Redirect("profile.aspx");
    }
}