using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Controller;
using ShoppingCart.Model;

namespace ShoppingCart.UI.Admin
{
    public partial class AddDiscount : System.Web.UI.Page
    {
        DiscountController _discount = new DiscountController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 1;
            }
        }

        protected void cmdsubmit_Click(object sender, EventArgs e)
        {
            _discount.Insert(new Model.Discount
            {
                DiscountPercentage=txtdiscount.Text,
                Name=txtname.Text,
                ValidityFrom=Calendar1from.SelectedDate.ToString(),
                ValidityTo=Calendar2to.SelectedDate.ToString(),
                Price=Convert.ToInt32(TxtPrice.Text)
            });
        }

        protected void cmdadd_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
}