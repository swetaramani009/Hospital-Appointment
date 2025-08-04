using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_add_patient : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("insert into patient values('" + name.Text + "','" + txt_Apoint_Email.Text + "','" + datepicker.Text + "','" + DropDownList_gender.SelectedItem.ToString() + "','" + txt_Apoint_Mobile.Text + "','" + address.Text + "')", cn);
            DataTable d = new DataTable();
            da.Fill(d);
            Response.Write("<script>alert('Patient added.');</script>");
            Response.Redirect("patients.aspx");
        }
        catch
        {
            Response.Write("<script>alert('Fill in all information accordingly.');</script>");
        }
    }
}