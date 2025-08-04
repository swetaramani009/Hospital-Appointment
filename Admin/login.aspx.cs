using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

public partial class Admin_login : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
        byte[] encrypt;
        UTF8Encoding encode = new UTF8Encoding();
        encrypt = md5.ComputeHash(encode.GetBytes(pass.Text));
        StringBuilder encryptpass = new StringBuilder();
        for (int i = 0; i < encrypt.Length; i++)
        {
            encryptpass.Append(encrypt[i].ToString());
        }
        SqlDataAdapter da = new SqlDataAdapter("select * from AdminTab where Uname='" + uname.Text + "' and Pass='" + encryptpass.ToString() + "'", cn);
        DataTable d = new DataTable();
        da.Fill(d);
        if (d.Rows.Count > 0)
        {
            Session["ad_user"] = uname.Text;
            Response.Redirect("Appointments.aspx");
        }
        else
            Response.Write("<script>alert('Fill in information accordingly.');</script>");
    }
}