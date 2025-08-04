using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_add_appointment : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataAdapter da1 = new SqlDataAdapter("select * from departments where status='Active'", cn);
            DataTable d1 = new DataTable();
            da1.Fill(d1);
            DropDownList_Section.DataSource = d1;
            DropDownList_Section.DataTextField = "department";
            DropDownList_Section.DataValueField = "Id";
            DropDownList_Section.DataBind();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("insert into AppointTab values('" + name.Text + "','" + dob.Text + "','" + DropDownList_gender.SelectedItem.ToString() + "','" + DropDownList_Section.SelectedItem.ToString() + "','" + datepicker.Text + "','" + txt_Apoint_Mobile.Text + "','" + txt_Apoint_Email.Text + "','ad_" + Session["ad_user"].ToString() + "','Active')", cn);
            DataTable d = new DataTable();
            da.Fill(d);
            Response.Write("<script>alert('Appointment booked.');</script>");
            Response.Redirect("Appointments.aspx");
        }
        catch
        {
            Response.Write("<script>alert('Fill in all information accordingly.');</script>");
        }
    }
}