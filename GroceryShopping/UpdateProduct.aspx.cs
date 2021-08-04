using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace GroceryShopping
{
    public partial class UpdateProduct : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                displayProductsData();
            }

        }
        void displayProductsData()
        {
            fillCategoryValues();
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
                    txtProductName.Text = dr.GetValue(1).ToString();
                    ddlCategory.SelectedValue = dr.GetValue(9).ToString();
                    txtProductBrand.Text = dr.GetValue(4).ToString();
                    txtProductOrigin.Text = dr.GetValue(3).ToString();
                    txtProductStorage.Text = dr.GetValue(7).ToString();
                    txtProductSize.Text = dr.GetValue(5).ToString();
                    txtProductPrice.Text = dr.GetValue(6).ToString();
                    productImg.ImageUrl = dr.GetValue(8).ToString();


                }
            }
        }
        void fillCategoryValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(connection);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("procGetCategory", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                ddlCategory.DataSource = dt;
                ddlCategory.DataValueField = "CategoryID";
                ddlCategory.DataTextField = "CategoryName";
                ddlCategory.DataBind();



            }
            catch (Exception ex)
            {

            }
        }


        protected void btnUpdateProduct_Click(object sender, EventArgs e)
        {
            updateProduct();
        }

        void updateProduct()
        {
            SqlConnection con = new SqlConnection(connection);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            string filepath = "~/images/";
            string filename = Path.GetFileName(ProductImgFile.PostedFile.FileName);
            if (filename == "" || filename == null)
            {


            }
            else
            {
                ProductImgFile.SaveAs(Server.MapPath("~/images/" + filename));
                filepath = "~/images/" + filename;
            }

            string str = ProductImgFile.FileName;
            ProductImgFile.PostedFile.SaveAs(Server.MapPath("~/images/" + str));
            string productImage = "~/images/" + str.ToString();

            SqlCommand cmd = new SqlCommand("procUpdateProduct", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("@ProductID", Session["GetProductID"]);
            cmd.Parameters.Add(p1);
            cmd.Parameters.AddWithValue("@pName", txtProductName.Text.Trim());

            cmd.Parameters.AddWithValue("@pBrand", txtProductBrand.Text.Trim());
            cmd.Parameters.AddWithValue("@pOrigin", txtProductOrigin.Text.Trim());
            cmd.Parameters.AddWithValue("@pStorage", txtProductStorage.Text.Trim());
            cmd.Parameters.AddWithValue("@pSize", txtProductSize.Text.Trim());
            cmd.Parameters.AddWithValue("@pPrice", txtProductPrice.Text.Trim());
            cmd.Parameters.AddWithValue("@pImage", filepath);
            cmd.Parameters.AddWithValue("@categoryID", ddlCategory.SelectedValue.Trim());
            cmd.ExecuteNonQuery();
            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Text = "Successfully Updated";



            displayProductsData();

        }
    }
}