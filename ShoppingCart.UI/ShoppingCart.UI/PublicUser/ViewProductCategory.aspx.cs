using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart.UI.PublicUser
{
    public partial class ViewProductCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HiddenFieldcategory.Value = Request.QueryString["category"].ToString();
            }
        }
    }
}