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
    public partial class WebForm2 : System.Web.UI.Page
    {
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("adminlogin.aspx");
            }

            uname.Text = "Hi, " + Session["username"];
            msg.Text = "";
            hrusername.Focus();
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("home.aspx");
        }

        protected void viewhr_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection("Trusted_Connection = Yes;database = eVisa;server = LAPTOP-3H6B0P22"))
            {
                sqlCon.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM hr WHERE hrname = '" + hrusername.Text + "'" , sqlCon);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if((i >= 0) && (i < ds.Tables[0].Rows.Count))
                {
                    hrid.Text = ds.Tables[0].Rows[i][0].ToString();
                    hrname.Text = ds.Tables[0].Rows[i][1].ToString();
                    visareq.Text = ds.Tables[0].Rows[i][3].ToString();
                    hrfeedback.Text = ds.Tables[0].Rows[i][4].ToString();
                }
            }    
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
        protected void delHR(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection("Trusted_Connection = Yes;database = eVisa;server = LAPTOP-3H6B0P22"))
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM HR WHERE hrid = '" + hrid.Text + "'", sqlCon);
                cmd.ExecuteNonQuery();
                sqlCon.Close();
                msg.Text = "HR " + hrname.Text + " Deleted successfully";
                msg.ForeColor = System.Drawing.Color.Red;
                hrid.Text = "";
                hrname.Text = "";
                visareq.Text = "";
                hrfeedback.Text = "";
                hrusername.Text = "";
                hrusername.Focus();
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

        protected void uphr_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection("Trusted_Connection = Yes;database = eVisa;server = LAPTOP-3H6B0P22"))
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("UPDATE HR SET visareq=@visareq WHERE hrid =" + hrid.Text, sqlCon);
                cmd.Parameters.AddWithValue("@visareq", visareq.Text);
                int i = cmd.ExecuteNonQuery();
                msg.Text = "HR " + hrname.Text + " Updated successfully";
                msg.ForeColor = System.Drawing.Color.Green;
                sqlCon.Close();
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