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
    public partial class HomePage : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                if (System.Web.HttpContext.Current.Session["role"] == null || (System.Web.HttpContext.Current.Session["role"]).ToString() == "")
                {

                    btnAddProduct.Visible = false;



                }
                else if (Session["role"].Equals("admin"))
                {
                    btnAddProduct.Visible = true;

                }
                else if (Session["role"].Equals("customer"))
                {
                    btnAddProduct.Visible = false;


                }
            }
            catch (Exception ex)
            {

            }

            if (!Page.IsPostBack)
            {
                displayProductData();


            }

        }
        void displayProductData()
        {
            SqlConnection con = new SqlConnection(connection);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            SqlCommand cmd = new SqlCommand("procDisplayProducts", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)

            {
                DataTable dt = new DataTable();
                dt.Load(reader);
                dlProducts.DataSource = dt;
                dlProducts.DataBind();
                dlFeaturedProduct.DataSource = dt;
                dlFeaturedProduct.DataBind();
                reader.Close();
            }


            foreach (DataListItem item in dlProducts.Items)
            {
                LinkButton lbtnEdit = item.FindControl("lnkbtnEdit") as LinkButton;
                LinkButton lbtnDelete = item.FindControl("lnkbtnDelete") as LinkButton;
                LinkButton lbtnView = item.FindControl("lnkbtnViewDetails") as LinkButton;

                if (System.Web.HttpContext.Current.Session["role"] == null || (System.Web.HttpContext.Current.Session["role"]).ToString() == "")
                {
                    lbtnEdit.Visible = false;
                    lbtnDelete.Visible = false;
                    lbtnView.Visible = true;
                }
                else if (Session["role"].Equals("customer"))
                {

                    lbtnEdit.Visible = false;
                    lbtnDelete.Visible = false;
                    lbtnView.Visible = true;
                }
                else if (Session["role"].Equals("admin"))
                {

                    lbtnEdit.Visible = true;
                    lbtnDelete.Visible = true;
                    lbtnView.Visible = true;
                }


            }

        }
        void SearchProduct()
        {
            if (txtSearch.Text == String.Empty)
            {
                displayProductData();

            }
            else
            {
                SqlConnection conn = new SqlConnection(connection);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();

                }
                SqlCommand cmd1 = new SqlCommand("procGetSearchProduct", conn);
                cmd1.CommandType = CommandType.StoredProcedure;


                SqlParameter p1 = new SqlParameter("@searchProductName", txtSearch.Text.Trim());
                cmd1.Parameters.Add(p1);
                SqlParameter p2 = new SqlParameter("@searchProductCategory", txtSearch.Text.Trim());
                cmd1.Parameters.Add(p2);

                SqlDataReader reader = cmd1.ExecuteReader();
                if (reader.HasRows)

                {
                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    dlProducts.DataSource = dt;
                    dlProducts.DataBind();
                    dlFeaturedProduct.DataSource = dt;
                    dlFeaturedProduct.DataBind();
                    reader.Close();

                }



            }



        }

        protected void lnkSearch_OnClick(object sender, EventArgs e)
        {
            SearchProduct();


        }
        protected void addProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            dlFeaturedProduct.SelectedIndex = e.Item.ItemIndex;

            if (e.CommandName == "ViewDetail")
            {
                e.CommandArgument.ToString();
                Session["GetProductID"] = e.CommandArgument.ToString();
                Response.Redirect("ProductDetails.aspx");

            }

        }

        protected void Item_Command(object sender, DataListCommandEventArgs e)
        {


            if (e.CommandName == "Edit")
            {
                int index = e.Item.ItemIndex;
                Label id = (Label)dlProducts.Items[index].FindControl("lblproductID");
                Session["GetProductID"] = id.Text;
                Response.Redirect("~/UpdateProduct.aspx");

            }
            else if (e.CommandName == "View")
            {
                int index = e.Item.ItemIndex;
                Label id = (Label)dlProducts.Items[index].FindControl("lblproductID");
                Session["GetProductID"] = id.Text;
                Response.Redirect("~/ProductDetails.aspx");

            }


        }
        protected void dl1_DeleteCommand(object sender, DataListCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection(connection);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            int index = e.Item.ItemIndex;
            Label productid;
            productid = (Label)dlProducts.Items[index].FindControl("lblproductID");

            SqlCommand cmd = new SqlCommand("procDeleteProduct", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("@ProductID", Convert.ToInt32(productid.Text));
            cmd.Parameters.Add(p1);
            int res = cmd.ExecuteNonQuery();

            if (res == 1)
            {


            }
            displayProductData();

        }



    }
}