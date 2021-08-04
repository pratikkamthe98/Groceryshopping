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
    public partial class CustomerRegistration : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegisterCustomer_Click(object sender, EventArgs e)
        {
            AddCustomer();

        }
        void AddCustomer()
        {
            try
            {
                SqlConnection con = new SqlConnection(connection);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("procAddCustomer", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CustomerFullName", txtFullName.Text.Trim());
                cmd.Parameters.AddWithValue("@CustomerMobileNumber", txtMobileNumber.Text);
                cmd.Parameters.AddWithValue("@CustomerEmail", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@CustomerCity", txtCity.Text.Trim());
                cmd.Parameters.AddWithValue("@CustomerPincode", Convert.ToInt32(txtPincode.Text));
                cmd.Parameters.AddWithValue("@CustomerAddress", txtAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@CustomerPassword", txtPassword.Text.Trim());
                cmd.ExecuteNonQuery();
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Customer Added Successfully";
                Response.Redirect("CustomerLogin.aspx");
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = ex.Message;
            }
        }
    }
}