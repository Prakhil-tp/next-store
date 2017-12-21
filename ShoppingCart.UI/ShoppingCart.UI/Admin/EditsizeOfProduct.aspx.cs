using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Controller;

namespace ShoppingCart.UI.Admin
{
    public partial class EditsizeOfProduct : System.Web.UI.Page
    {
        SizeController _size = new SizeController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdsubmit_Click(object sender, EventArgs e)
        {
            int productId = Convert.ToInt32(Session["EditProductSize"]);
            var sizedetails = _size.Search(Convert.ToInt32(DropDownList1.SelectedItem.Value));
            _size.updateSize(sizedetails.SizeId, Convert.ToInt32(txtsize.Text), Convert.ToInt32(txtquantity.Text));
            txtquantity.Text = "";
            txtsize.Text = "";
        }
    }
}