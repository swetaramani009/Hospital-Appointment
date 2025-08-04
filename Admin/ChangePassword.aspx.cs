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

public partial class Admin_ChangePassword : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from AdminTab where Uname='" + Session["ad_user"] + "' and Pass='" + old_pass.Text + "'", cn);
        DataTable d = new DataTable();
        da.Fill(d);
        if (d.Rows.Count > 0)
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] encrypt;
            UTF8Encoding encode = new UTF8Encoding();
            encrypt = md5.ComputeHash(encode.GetBytes(new_pass.Text));
            StringBuilder encryptpass = new StringBuilder();
            for (int i = 0; i < encrypt.Length; i++)
            {
                encryptpass.Append(encrypt[i].ToString());
            }
            SqlDataAdapter da1 = new SqlDataAdapter("update AdminTab set Pass='" + encryptpass.ToString() + "' where Uname='" + Session["ad_user"] + "'", cn);
            DataTable d1 = new DataTable();
            da1.Fill(d1);
            Response.Write("<script>alert('Password changed.');</script>");
            Session.Abandon();
            Session.Clear();
            Response.Redirect("login.aspx");
        }
    }
}