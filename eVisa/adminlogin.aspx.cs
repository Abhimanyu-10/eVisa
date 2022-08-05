﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace eVisa
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            errmsg.Visible = false;
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection("Trusted_Connection = Yes;database = eVisa;server = LAPTOP-3H6B0P22"))
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("SELECT COUNT(1) FROM admin WHERE uname=@username AND pwd=@password", sqlCon);
                cmd.Parameters.AddWithValue("@username", uname.Text.Trim());
                cmd.Parameters.AddWithValue("@password", pwd.Text.Trim());
                
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["username"] = uname.Text.Trim();
                    Response.Redirect("admindash.aspx");
                }
                else
                {
                    errmsg.Visible = true;
                }
            }
        }
    }
}


