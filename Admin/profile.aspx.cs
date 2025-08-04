using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_profile : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select id,name,department,Mobile,dob,gender,Email,address,pic from AdminTab where Uname='" + Session["ad_user"] + "'", cn);
        DataTable d = new DataTable();
        da.Fill(d);
        if (d.Rows.Count > 0)
        {
            image1.ImageUrl = d.Rows[0]["pic"].ToString();
            Label1.Text = "<div class='profile-basic'><div class='row'><div class='col-md-5'><div class='profile-info-left'><h3 class='user-name m-t-0 m-b-0'>" + d.Rows[0]["name"].ToString() + "</h3><small class='text-muted'>" + d.Rows[0]["department"].ToString() + "</small><div class='staff-id'>Employee ID : DR-0" + d.Rows[0]["Id"].ToString() + "</div></div></div><div class='col-md-7'><ul class='personal-info'><li><span class='title'>Phone:</span><span class='text'>" + d.Rows[0]["Mobile"].ToString() + "</span></li><li><span class='title'>Email:</span><span class='text'><a href = 'https://medifab.dreamstechnologies.com/cdn-cgi/l/email-protection' class='__cf_email__' data-cfemail='<%= GetEncodedEmail(" + d.Rows[0]["Email"].ToString() + ") %>'>[email&#160;protected]</a></span></li><li><span class='title'>Birthday:</span><span class='text'>" + d.Rows[0]["dob"].ToString() + "</span></li><li><span class='title'>Address:</span><span class='text'>" + d.Rows[0]["address"].ToString() + "</span></li><li><span class='title'>Gender:</span><span class='text'>" + d.Rows[0]["gender"].ToString() + "</span></li></ul></div></div>";
        }
    }
}