using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Model;
using ShoppingCart.Controller;

namespace ShoppingCart.UI.Admin
{
    public partial class Category : System.Web.UI.Page
    {
        CategoryController category = new CategoryController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

   

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "AddView")
            {
                int categoryid = Convert.ToInt32(e.CommandArgument);
                Session["categoryid"] = categoryid;
                Response.Redirect("~/Admin/Category.aspx");
            }
        }

        protected void CmdaDD_Click(object sender, EventArgs e)
        {
            category.Insert(txtcategory.Text);
            GridView1.DataBind();
        }
    }
}