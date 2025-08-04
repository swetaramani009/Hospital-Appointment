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

public partial class Admin_Registration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlDataAdapter da;
    DataTable d = new DataTable();
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

    protected void btn_login_b_Click(object sender, EventArgs e)
    {
        if (DropDownList_gender.SelectedValue != "1" && FileUpload1.HasFile == true)
        {
            string path;
            path = "~/Admin/upload/" + DateTime.Now.Ticks + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(path));

            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] encrypt;
            UTF8Encoding encode = new UTF8Encoding();
            encrypt = md5.ComputeHash(encode.GetBytes(pass.Text));
            StringBuilder encryptpass = new StringBuilder();
            for (int i = 0; i < encrypt.Length; i++)
            {
                encryptpass.Append(encrypt[i].ToString());
            }
            SqlDataAdapter da1 = new SqlDataAdapter("select * from AdminTab where Uname='" + uname.Text + "'", cn);
            DataTable d1 = new DataTable();
            da1.Fill(d1);
            if (d1.Rows.Count == 0)
            {
                da = new SqlDataAdapter("insert into AdminTab values('" + uname.Text + "','" + email.Text + "'," + mobile.Text + ",'" + encryptpass.ToString() + "','Admin','" + Session["ad_user"].ToString() + "','" + dob.Text + "','" + DropDownList_gender.SelectedItem.ToString() + "','" + address.Text + "','" + path + "','" + name.Text + "','" + DropDownList_Section.SelectedItem.ToString() + "')", cn);
                da.Fill(d);
                Response.Write("<script>alert('New Admin Registered.');</script>");
                Response.Redirect("Registration.aspx");
            }
            else
            {
                Response.Write("<script>alert('UserName already exists.');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Select The Gender.');</script>");
        }
    }
}