using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_departments : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from departments", cn);
        DataTable d = new DataTable();
        da.Fill(d);
        if (d.Rows.Count > 0)
        {
            for (int i = 0; i < d.Rows.Count; i++)
            {
                Label1.Text += "<tr><td>"+d.Rows[i]["Id"].ToString()+ "</td><td>" + d.Rows[i]["department"].ToString() + "</td><td><span class='custom-badge status-green''>" + d.Rows[i]["status"].ToString() + "</span></td><td class='text-right'><div class='dropdown dropdown-action'><a href = '#' class='action-icon dropdown-toggle' data-toggle='dropdown' aria-expanded='false'><i class='fas fa-ellipsis-v'></i></a><div class='dropdown-menu dropdown-menu-right'><a class='dropdown-item' href='edit-department.html'><i class='fas fa-pencil-alt m-r-5'></i> Edit</a><a class='dropdown-item' href='#' data-toggle='modal' data-target='#delete_department'><i class='fas fa-trash m-r-5'></i> Delete</a></div></div></td></tr>";
            }
        }
        else
        {
            Label1.Text = "<tr style='text - align: center; vertical - align: middle;'><td colspan='10'><h1>No Departments Registered.</h1><td></tr>";
        }
    }
}