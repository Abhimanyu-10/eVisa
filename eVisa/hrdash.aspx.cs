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
    public partial class WebForm4 : System.Web.UI.Page
    {
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("hrlogin.aspx");
            }

            hrname.Text = "Hi, " + Session["username"];
            msg.Text = "";
            empusername.Focus();
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("home.aspx");
        }

        protected void changepwd_Click(object sender, EventArgs e)
        {
            Response.Redirect("hrpwd.aspx");
        }

        protected void viewemp_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection("Trusted_Connection = Yes;database = eVisa;server = LAPTOP-3H6B0P22"))
            {
                sqlCon.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM employee WHERE empname = '" + empusername.Text + "'", sqlCon);
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

        protected void delemp(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection("Trusted_Connection = Yes;database = eVisa;server = LAPTOP-3H6B0P22"))
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM employee WHERE empid = '" + empid.Text + "'", sqlCon);
                cmd.ExecuteNonQuery();
                sqlCon.Close();
                msg.Text = "Employee " + empname.Text + " Deleted successfully";
                msg.ForeColor = System.Drawing.Color.Red;
                empid.Text = "";
                empname.Text = "";
                onsite.Text = "";
                project.Text = "";
                empfeedback.Text = "";
                empusername.Text = "";
                empusername.Focus();
            }
        }

        protected void upemp_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection("Trusted_Connection = Yes;database = eVisa;server = LAPTOP-3H6B0P22"))
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("UPDATE employee SET onsitedet = @onsitedet, projectdet=@projectdet WHERE empid =" + empid.Text, sqlCon);
                cmd.Parameters.AddWithValue("@onsitedet", onsite.Text);
                cmd.Parameters.AddWithValue("@projectdet", project.Text);
                int i = cmd.ExecuteNonQuery();
                msg.Text = "Employee " + empname.Text + " Updated successfully";
                msg.ForeColor = System.Drawing.Color.Green;
                sqlCon.Close();
            }
        }
    }
}