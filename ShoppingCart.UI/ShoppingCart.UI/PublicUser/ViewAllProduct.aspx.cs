using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart.UI.PublicUser
{
    public partial class ViewAllProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void datalistProductView_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ProductView")
            {
                int colorid = Convert.ToInt32(e.CommandArgument);
                Session["ProductSearchId"] = colorid;
                Response.Redirect("~/PublicUser/ProductQuickSearch.aspx"); ;

            }
        }
    }
}