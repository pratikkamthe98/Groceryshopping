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
    public partial class AddProduct : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillCategoryValues();

            }
        }
        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(connection);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                if (ProductImgFile.HasFile)
                {
                    string str = ProductImgFile.FileName;
                    ProductImgFile.PostedFile.SaveAs(Server.MapPath("~/images/" + str));
                    string productName = txtProductName.Text;

                    string productBrand = txtProductBrand.Text;
                    string productOrigin = txtProductOrigin.Text;
                    string productStorage = txtProductStorage.Text;
                    string productSize = txtProductSize.Text;
                    string productPrice = txtProductPrice.Text;
                    int categoryID = int.Parse(ddlCategory.SelectedValue);
                    string productImage = "~/images/" + str.ToString();

                    SqlCommand cmd = new SqlCommand("procAddProduct", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@pName", productName);

                    cmd.Parameters.AddWithValue("@pOrigin", productOrigin);
                    cmd.Parameters.AddWithValue("@pBrand", productBrand);
                    cmd.Parameters.AddWithValue("@pStorage", productStorage);
                    cmd.Parameters.AddWithValue("@pSize", productSize);
                    cmd.Parameters.AddWithValue("@pPrice", productPrice);
                    cmd.Parameters.AddWithValue("@pImage", productImage);
                    cmd.Parameters.AddWithValue("@categoryID", categoryID);
                    cmd.Parameters.AddWithValue("@categoryName", ddlCategory.SelectedItem.Text);
                    cmd.ExecuteNonQuery();
                    lblMessage.Text = "Product Added Successfully";

                    Response.Redirect("HomePage.aspx");

                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
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

    }
}