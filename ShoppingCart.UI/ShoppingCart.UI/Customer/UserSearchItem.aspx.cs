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
    public partial class UserSearchItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        CartController cart = new CartController();
        ProductController product = new ProductController();
        WishlistController wishlist = new WishlistController();
        ColourController _color = new ColourController();
        
        protected void datalistProductView_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "CartView")
            {
                int Colorid = Convert.ToInt32(e.CommandArgument);
                var ColorDetails = _color.Search(Colorid);
                var data = product.Search(ColorDetails.ProductId);
                int UserId = Convert.ToInt32(Session["UserId"]);
                bool item = cart.ProductSearchByColor(ColorDetails.ProductId, UserId, ColorDetails.Colourname);

                if (item == true)
                {
                    cart.Insert(new Cart
                    {
                        ProductId = data.ProductId,
                        Quantity = data.Stock,
                        Date = DateTime.Today,
                        UserId = UserId,
                        ColorId = ColorDetails.Colourname,
                        NewColorId = ColorDetails.ColourId,
                        Size = data.Size
                    });

                    Label lblcarts = Page.Master.FindControl("lblcart") as Label;
                    //  Label lblwishlist = Page.Master.FindControl("lblwishlist") as Label;
                    lblcarts.Text = cart.getTotalCountOfCart(UserId).ToString();
                    //    lblwishlist.Text = wishlist.getTotalCountOfCart((UserId)).ToString();
                }

            }
            else if (e.CommandName == "WishlistView")
            {
                int colorid = Convert.ToInt32(e.CommandArgument);
                var ColorSearch = _color.Search(colorid);
                var data = product.Search(ColorSearch.ProductId);
                int UserId = Convert.ToInt32(Session["UserId"]);
                bool item = wishlist.ProductSearch(ColorSearch.ProductId, UserId, colorid);

                if (item == true)
                {
                    wishlist.Insert(new Wishlist
                    {
                        ProductId = data.ProductId,
                        UserId = UserId,
                        ColorId = colorid
                    });

                    // Label lblcarts = Page.Master.FindControl("lblcart") as Label;
                    Label lblwishlist = Page.Master.FindControl("lblwishlist") as Label;
                    // lblcarts.Text = cart.getTotalCountOfCart(UserId).ToString();
                    lblwishlist.Text = wishlist.getTotalCountOfCart((UserId)).ToString();
                }
            }
            else if (e.CommandName == "ProductView")
            {
                int colorid = Convert.ToInt32(e.CommandArgument);

                Session["ProductViewId"] = colorid;

                Response.Redirect("~/Customer/ProductQuickView.aspx");

            }
        }

    }
}