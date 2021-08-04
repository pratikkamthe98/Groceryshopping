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
    public partial class ViewOrders : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayOrdersData();

        }
        protected void lnkBtnCheckout_OnClick(object sender, EventArgs e)
        {

            Response.Redirect("Checkout.aspx");
        }
        void DisplayOrdersData()
        {
            SqlConnection con = new SqlConnection(connection);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            SqlCommand cmd = new SqlCommand("procViewOrders", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("@customerID", Session["customerid"]);
            cmd.Parameters.Add(p1);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                DataTable dt = new DataTable();
                dt.Load(reader);
                ddlViewOrders.DataSource = dt;
                ddlViewOrders.DataBind();
            }
        }
    }
}