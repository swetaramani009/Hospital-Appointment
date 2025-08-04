using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;

public partial class Users_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }

    protected void btn_login_b_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);


        MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
        byte[] encrypt;
        UTF8Encoding encode = new UTF8Encoding();
        encrypt = md5.ComputeHash(encode.GetBytes(pass.Text));
        StringBuilder encryptpass = new StringBuilder();
        for (int i = 0; i < encrypt.Length; i++)
        {
            encryptpass.Append(encrypt[i].ToString());
        }

        SqlDataAdapter da = new SqlDataAdapter("select * from UserTab where Uname='" + uname.Text + "' and Pass='" + encryptpass.ToString() + "'", cn);
        DataTable d = new DataTable();
        da.Fill(d);
        if (d.Rows.Count > 0)
        {
            Session["user"] = uname.Text;
            Response.Redirect("Home.aspx");
        }
    }
}