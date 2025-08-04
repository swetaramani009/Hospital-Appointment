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

public partial class Admin_patience : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from UserTab", cn);
        DataTable d = new DataTable();
        da.Fill(d);
        if (d.Rows.Count > 0)
        {
            for (int i = 0; i < d.Rows.Count; i++)
            {
                Label1.Text = "<tr><td>" + d.Rows[i]["Id"].ToString() + " </td><td><img width = '28' height = '28' src = 'assets/img/user.jpg' class='rounded-circle m-r-5'>" + d.Rows[i]["Uname"].ToString()+ "</td><td>" + d.Rows[i]["Mobile"].ToString() + "</td><td><a href = 'https://medifab.dreamstechnologies.com/cdn-cgi/l/email-protection' class='__cf_email__' data-cfemail='<%= GetEncodedEmail("+d.Rows[i]["Email"].ToString()+") %>'>[email&#160;protected]</a></td></tr>";
            }
        }
    }
    public string GetEncodedEmail(string email)
    {
        string encodedEmail = "";

        using (WebClient wc = new WebClient())
        {
            wc.Headers.Add("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36");
            byte[] rawData = wc.DownloadData("https://cdn.cloudflare.com/static/email-encode.min.js");
            string javascriptCode = Encoding.UTF8.GetString(rawData);
            var engine = new Jint.Engine();
            engine.Execute(javascriptCode);
            engine.SetValue("email", email);
            encodedEmail = engine.Invoke("obfuscate", email).ToObject().ToString();
        }

        return encodedEmail;
    }
}