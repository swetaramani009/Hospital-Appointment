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

public partial class Admin_forgot_password : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlDataAdapter da;
    DataTable d = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from UserTab where Uname='" + uname.Text + "' and Email='" + email.Text + "'", cn);
        DataTable d = new DataTable();
        da.Fill(d);
        if (d.Rows.Count > 0)
        {
            if (new_pass.Text == d.Rows[0]["Pass"].ToString())
                Response.Write("<script>alert('Give a different password from the previous password.');</script>");
            else
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
                SqlDataAdapter da1 = new SqlDataAdapter("update AdminTab set Pass='" + encryptpass.ToString() + "' where Uname='" + uname.Text + "' and Email='" + email.Text + "'", cn);
                DataTable d1 = new DataTable();
                da1.Fill(d1);
                if (d.Rows.Count != 0)
                {
                    Response.Redirect("Appointments.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Entered Email Not Matching.');</script>");
                }
            }
        }
    }
}