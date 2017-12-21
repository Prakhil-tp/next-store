using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShoppingCart.Controller;
using ShoppingCart.Model;

namespace ShoppingCart.UI.Customer
{
    public partial class CartView : System.Web.UI.Page
    {
        CartController cart = new CartController();
        WishlistController wishlist = new WishlistController();
        ProductController product = new ProductController();
        ColourController _color = new ColourController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void cmdcheckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customer/ViewCheckOut.aspx");
        }

        protected void datalistCartView_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Remove")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                cart.Delete(id);
                datalistCartView.DataBind();
            }
            if (e.CommandName == "WishlistMove")
            {
                int colorid = Convert.ToInt32(e.CommandArgument);
                var colodetails = _color.Search(colorid);
                var cartDetails = cart.SearchByColorid(colorid);
                var data = product.Search(cartDetails.ProductId);
                int UserId = Convert.ToInt32(Session["UserId"]);
                bool item = wishlist.ProductSearch(cartDetails.ProductId, UserId, cartDetails.NewColorId);

                if (item == true)
                {
                    wishlist.Insert(new Wishlist
                    {
                        ProductId = data.ProductId,
                        UserId = UserId,
                        ColorId = colorid
                    });
                  
                    cart.Delete(cartDetails.CartId);
                }
              //  Label lblcarts = Page.Master.FindControl("lblcart") as Label;
                Label lblwishlist = Page.Master.FindControl("lblwishlist") as Label;
              //  lblcart.Text = _cart.getTotalCountOfCart(Convert.ToInt32(Session["UserId"])).ToString();
                lblwishlist.Text = wishlist.getTotalCountOfCart((UserId)).ToString();
                   

                datalistCartView.DataBind();

            }
        }
    }
}