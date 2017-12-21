using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart.UI.Admin
{
    public partial class ProductView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName == "AddMore")
            {
                Session["AddColourProductId"] = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("~/Admin/AddMoreColourToProducts.aspx");
            }
            else if (e.CommandName == "ProductView")
            {
                Session["ProductViewId"] = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("~/Admin/Productdetails.aspx");
            }
            else if (e.CommandName == "editSize")
            {
                Session["EditProductSize"] = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("~/Admin/EditsizeOfProduct.aspx");
            }
        }

        
    }
}