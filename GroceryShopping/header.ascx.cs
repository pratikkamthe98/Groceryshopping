using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroceryShopping
{
    public partial class header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                if (System.Web.HttpContext.Current.Session["role"] == null || (System.Web.HttpContext.Current.Session["role"]).ToString() == "")
                {

                    lnkbtnCart.Visible = false;
                    lnkbtnLogout.Visible = false;
                    lnkbtnLogin.Visible = true;
                    lnkbtnOrderList.Visible = false;



                }
                else if (Session["role"].Equals("admin"))
                {
                    lnkbtnCart.Visible = false;
                    lnkbtnLogout.Visible = true;
                    lnkbtnLogin.Visible = false;
                    lnkbtnOrderList.Visible = false;

                }
                else if (Session["role"].Equals("customer"))
                {
                    lnkbtnCart.Visible = true;
                    lnkbtnLogout.Visible = true;
                    lnkbtnLogin.Visible = false;
                    lnkbtnOrderList.Visible = true;


                }
            }
            catch (Exception ex)
            {


            }

        }
        protected void btnViewOrders_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("ViewOrders.aspx");
        }
        protected void btnViewCart_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("ViewCart.aspx");
        }
        protected void btnLogOut_OnClick(object sender, EventArgs e)
        {
            Session["customerid"] = "";
            Session["customername"] = "";
            Session["adminname"] = "";
            Session["role"] = "";
            Response.Redirect("HomePage.aspx");
        }
    }
}