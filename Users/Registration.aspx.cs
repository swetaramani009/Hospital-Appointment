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


public partial class Users_Registration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlDataAdapter da;
    DataTable d = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forgotpassword.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void btn_login_b_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataAdapter da1 = new SqlDataAdapter("select * from UserTab where Uname='" + uname.Text + "'", cn);
            DataTable d1 = new DataTable();
            da1.Fill(d1);
            if (d1.Rows.Count == 0)
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

                da = new SqlDataAdapter("insert into UserTab values('" + uname.Text + "','" + email.Text + "'," + mobile.Text + ",'" + encryptpass.ToString() + "')", cn);
                da.Fill(d);
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("<script>alert('Given UserName not available .');</script>");
            }
        }
        catch
        {
            Response.Write("<script>alert('Fill in all details accordingly.');</script>");
        }
    }
}