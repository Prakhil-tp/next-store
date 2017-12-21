using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart.UI.Customer
{
    public partial class ViewProductBrand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HiddenFieldbrand.Value = Request.QueryString["brand"].ToString();
            }
        }
    }
}