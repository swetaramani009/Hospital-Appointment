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

public partial class Users_Forgotpassword1 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_login_b_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from UserTab where Uname='" + uname.Text + "' and Email='" + email.Text + "'", cn);
        DataTable d = new DataTable();
        da.Fill(d);
        if (d.Rows.Count > 0)
        {
            if (pass.Text == d.Rows[0][4].ToString())
                Response.Write("<script>alert('Give a different password from the previous password.');</script>");
            else
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

                da = new SqlDataAdapter("update UserTab set Pass='" + encryptpass.ToString() + "' where Id='" + d.Rows[0][0] + "'", cn);
                d = new DataTable();
                da.Fill(d);
                Session.Abandon();
                Session.Clear();
                Response.Redirect("login.aspx");
            }
        }
        else
        {
            Response.Write("<script>alert('UserName and Email not matched.');</script>");
        }
    }
}