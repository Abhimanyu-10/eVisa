using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace eVisa
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("emplogin.aspx");
            }

            uname.Text = "Hi, " + Session["username"];
            using (SqlConnection sqlCon = new SqlConnection("Trusted_Connection = Yes;database = eVisa;server = LAPTOP-3H6B0P22"))
            {
                sqlCon.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM employee WHERE empname = '" + Session["username"].ToString() + "'", sqlCon);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if ((i >= 0) && (i < ds.Tables[0].Rows.Count))
                {
                    empid.Text = ds.Tables[0].Rows[i][0].ToString();
                    empname.Text = ds.Tables[0].Rows[i][1].ToString();
                    onsite.Text = ds.Tables[0].Rows[i][3].ToString();
                    project.Text = ds.Tables[0].Rows[i][4].ToString();
                    empfeedback.Text = ds.Tables[0].Rows[i][5].ToString();
                }
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("home.aspx");
        }

        protected void changepwd_Click(object sender, EventArgs e)
        {
            Response.Redirect("emppwd.aspx");
        }

        protected void upemp_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection("Trusted_Connection = Yes;database = eVisa;server = LAPTOP-3H6B0P22"))
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("UPDATE employee SET projectdet = @project WHERE empid = " + empid.Text, sqlCon);
                cmd.Parameters.AddWithValue("@project", upproject.Text);
                int i = cmd.ExecuteNonQuery();
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
        }

        protected void gfeed_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection("Trusted_Connection = Yes;database = eVisa;server = LAPTOP-3H6B0P22"))
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("UPDATE employee SET feedback = @gfeed WHERE empid =" + empid.Text, sqlCon);
                cmd.Parameters.AddWithValue("@gfeed", gfeed.Text);
                int i = cmd.ExecuteNonQuery();
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
        }
    }
}