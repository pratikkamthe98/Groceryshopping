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
    public partial class UpdateProductQuantity : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                displayQuantityData();
            }

        }
        void displayQuantityData()
        {
            SqlConnection con = new SqlConnection(connection);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            SqlCommand cmd = new SqlCommand("procGetProductQuantity", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("@CartItemID", Session["CartItemID"]);
            cmd.Parameters.Add(p1);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txtProductQuantity.Text = dr.GetValue(3).ToString();
                }

            }
        }
        protected void btnUpdateQuantity_Click(object sender, EventArgs e)
        {
            updateProductQuantity();

            Response.Redirect("ViewCart.aspx");
        }

        void updateProductQuantity()
        {

            try
            {
                SqlConnection con = new SqlConnection(connection);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("procUpdateProductQuantity", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter("@CartItemID", Session["CartItemID"]);
                cmd.Parameters.Add(p1);
                cmd.Parameters.AddWithValue("@ProductQuantity", Convert.ToInt32(txtProductQuantity.Text.Trim()));

                cmd.ExecuteNonQuery();
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Successfully updated";

            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = ex.Message;

            }
            displayQuantityData();

        }
    }
}