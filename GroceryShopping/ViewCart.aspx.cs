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
    public partial class ViewCart : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            displayProductData();

        }
        void displayProductData()
        {
            SqlConnection con = new SqlConnection(connection);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }

            SqlCommand cmd = new SqlCommand("procViewCart", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("@customerID", Session["customerid"]);
            cmd.Parameters.Add(p1);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                DataTable dt = new DataTable();
                dt.Load(reader);
                ddlViewCart.DataSource = dt;
                ddlViewCart.DataBind();
            }
        }
        protected void ddlViewCart_DeleteCommand(object sender, DataListCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            int index = e.Item.ItemIndex;
            Label orderid;
            orderid = (Label)ddlViewCart.Items[index].FindControl("lblOrderID");

            SqlCommand cmd = new SqlCommand("procDeleteProductFromCart", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("@CartItemID", Convert.ToInt32(orderid.Text));
            cmd.Parameters.Add(p1);
            int res = cmd.ExecuteNonQuery();

            if (res == 1)
            {
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Successfully Deleted";

            }
            displayProductData();

        }
        protected void Item_Command(object sender, DataListCommandEventArgs e)
        {

            if (e.CommandName == "PlaceOrder")
            {
                int index = e.Item.ItemIndex;
                Label cartItemID = (Label)ddlViewCart.Items[index].FindControl("lblCartItemID");

                Label productName = (Label)ddlViewCart.Items[index].FindControl("lblProductName");
                Label productQuantity = (Label)ddlViewCart.Items[index].FindControl("lblProductQuantity");
                Label productPrice = (Label)ddlViewCart.Items[index].FindControl("lblProductPrice");
                int subTotal = (Convert.ToInt32(productQuantity.Text)) * (Convert.ToInt32(productPrice.Text));
                try
                {
                    SqlConnection con = new SqlConnection(connection);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }



                    SqlCommand cmd = new SqlCommand("procPlaceOrder", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@CustomerID", Session["customerid"]);
                    cmd.Parameters.AddWithValue("@CartItemID", Convert.ToInt32(cartItemID.Text.Trim()));
                    cmd.Parameters.AddWithValue("@ProductName", productName.Text);
                    cmd.Parameters.AddWithValue("@ProductQuantity", Convert.ToInt32(productQuantity.Text.Trim()));
                    cmd.Parameters.AddWithValue("@ProductPrice", subTotal);

                    cmd.ExecuteNonQuery();
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = "Your Order Placed Successfully";

                    displayProductData();


                }
                catch (Exception ex)
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = ex.Message;
                    displayProductData();
                }


            }
            else if (e.CommandName == "Edit")
            {
                int index = e.Item.ItemIndex;
                Label id = (Label)ddlViewCart.Items[index].FindControl("lblCartItemID");
                Session["CartItemID"] = id.Text;
                Response.Redirect("~/UpdateProductQuantity.aspx");
            }




        }



    }
}