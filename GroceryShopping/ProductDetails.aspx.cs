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
    public partial class ProductDetails : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.Session["role"] == null || (System.Web.HttpContext.Current.Session["role"]).ToString() == "")
            {

                btnAddToCart.Visible = false;
                txtProductQuantity.Visible = false;
                lblProductQuantity.Visible = false;



            }
            else if (Session["role"].Equals("admin"))
            {
                btnAddToCart.Visible = false;
                txtProductQuantity.Visible = false;
                lblProductQuantity.Visible = false;

            }
            else if (Session["role"].Equals("customer"))
            {
                btnAddToCart.Visible = true;
                txtProductQuantity.Visible = true;
                lblProductQuantity.Visible = true;

            }

            displayProductsData();

        }
        void displayProductsData()
        {
            SqlConnection con = new SqlConnection(connection);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            SqlCommand cmd = new SqlCommand("procProductDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("@ProductID", Session["GetProductID"]);
            cmd.Parameters.Add(p1);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lblProductName.Text = dr.GetValue(1).ToString();
                    lblProductCategory.Text = dr.GetValue(2).ToString();
                    lblProductBrand.Text = dr.GetValue(4).ToString();
                    lblProductOrigin.Text = dr.GetValue(3).ToString();
                    lblProductStorage.Text = dr.GetValue(7).ToString();
                    lblProductSize.Text = dr.GetValue(5).ToString();
                    lblProductPrice.Text = dr.GetValue(6).ToString();
                    imgProduct.ImageUrl = dr.GetValue(8).ToString();

                }
            }
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(connection);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }


                SqlCommand cmd = new SqlCommand("procAddProductToCart", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@productID", Convert.ToInt32(Session["GetProductID"]));
                cmd.Parameters.AddWithValue("@customerID", Convert.ToInt32(Session["customerid"]));
                cmd.Parameters.AddWithValue("@productQuantity", Convert.ToInt32(txtProductQuantity.Text.Trim()));

                cmd.ExecuteNonQuery();
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Product Added To Cart";




            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = ex.Message;
            }

        }
    }
}