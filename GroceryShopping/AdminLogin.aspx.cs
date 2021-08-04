using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GroceryShopping
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(connection);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("procCheckAdminLogin", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter("@adminName", txtAdminName.Text.Trim());
                cmd.Parameters.Add(p1);
                SqlParameter p2 = new SqlParameter("@adminPassword", txtPassword.Text.Trim());
                cmd.Parameters.Add(p2);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {


                        Session["adminname"] = dr.GetValue(1).ToString();
                        Session["role"] = "admin";
                        lblMessage.Text = "Login Successfully";
                    }
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    lblMessage.Text = "Invalid credentials";
                }

            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }

    }
}