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
    public partial class WebForm8 : System.Web.UI.Page
    {
        string str = null;
        byte up;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("emplogin.aspx");
            }
        }

        protected void Cpwd_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection("Trusted_Connection = Yes;database = eVisa;server = LAPTOP-3H6B0P22"))
            {
                sqlCon.Open();
                str = "SELECT * FROM employee";
                SqlCommand cmd = new SqlCommand(str, sqlCon);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    if (crntpwd.Text == dr["pwd"].ToString())
                    {
                        up = 1;
                    }
                }
                dr.Close();
                sqlCon.Close();
                if (up == 1)
                {
                    sqlCon.Open();
                    str = "UPDATE employee SET pwd = @pwd WHERE empname='" + Session["username"].ToString() + "'";
                    SqlCommand upcmd = new SqlCommand(str, sqlCon);
                    upcmd.Parameters.Add(new SqlParameter("@pwd", SqlDbType.VarChar, 100));
                    upcmd.Parameters["@pwd"].Value = newpwd.Text;
                    upcmd.ExecuteNonQuery();
                    msg.Text = "Password Changed Successfully!";
                    msg.ForeColor = System.Drawing.Color.Green;
                    sqlCon.Close();
                    System.Threading.Thread.Sleep(3000);
                    Response.Redirect("emplogin.aspx");

                }
                else
                {
                    msg.Text = "Please enter correct Current password";
                    msg.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}